#!/bin/bash

# Copyright (c) 2018 akarinS <akaringithub0655@gmail.com>
# Distributed under the MIT software license, see the accompanying
# file LICENSE or http://www.opensource.org/licenses/mit-license.php.

set -e

DateAndTime=$(date +%Y)$(date +%m)$(date +%d)-$(date +%H)$(date +%M)$(date +%S)
mkdir -p ~/KotoBackup/$DateAndTime/
cd ~/KotoBackup/$DateAndTime/

cp ~/.koto/wallet.dat ./wallet.dat

~/koto/src/kotod -exportdir=./ -daemon
while :
do
  ~/koto/src/koto-cli help >/dev/null 2>&1 && true
  if [ $? = 0 ] ; then
    break
  else
    echo "Please wait..."
    sleep 5s
  fi
done

~/koto/src/koto-cli backupwallet backup
~/koto/src/koto-cli dumpwallet dump
~/koto/src/koto-cli z_exportwallet zexport
~/koto/src/koto-cli stop

