#!/bin/bash

# Copyright (c) 2018 akarinS <akaringithub0655@gmail.com>
# Distributed under the MIT software license, see the accompanying
# file LICENSE or http://www.opensource.org/licenses/mit-license.php.

set -e
trap catch ERR
function catch {
  echo "Error"
}

KotoPath=$(cd $(dirname $0) ; pwd)
DateAndTime=$(date +%Y)$(date +%m)$(date +%d)-$(date +%H)$(date +%M)$(date +%S)

mkdir -p ~/KotoBackup/$DateAndTime/
cd ~/KotoBackup/$DateAndTime/

if [ "$(uname)" = 'Darwin' ] ; then
  cp ~/Library/Application\ Support/Koto/wallet.dat ./wallet.dat
else
  cp ~/.koto/wallet.dat ./wallet.dat
fi

$KotoPath/kotod -exportdir=./ -daemon
while :
do
  $KotoPath/koto-cli help >/dev/null 2>&1 && true
  if [ $? = 0 ] ; then
    break
  else
    echo "Please wait..."
    sleep 5s
  fi
done

$KotoPath/koto-cli backupwallet backup
$KotoPath/koto-cli dumpwallet dump
$KotoPath/koto-cli z_exportwallet zexport
$KotoPath/koto-cli stop

