shellscript-kotobackup
==========

これは何?
----------

これは Koto のウォレットをバックアップするためのシェルスクリプトです。  
これを実行すると、~/KotoBackup/年月日-時分秒/ にバックアップファイルが保存されます。

どう使うの?
----------

    git clone https://github.com/akarinS/shellscript-kotobackup
    chmod u+x shellscript-kotobackup/kotobackup.sh

kotod koto-cli と同じ場所へコピーして kotobackup.sh を実行してください。  
Ubuntuの例

    cp shellscript-kotobackup/kotobackup.sh ./koto/src/kotobackup.sh
    ./koto/src/kotobackup.sh

Macの例

    cp shellscript-kotobackup/kotobackup.sh ./koto/171228_koto1.0.13_mac_64bit/kotobackup.sh
    ./koto/171228_koto1.0.13_mac_64bit/kotobackup.sh

注意
----------

kotod を停止した状態で実行してください。

ライセンス
---------

ライセンス情報については、LICENSEファイルを参照してください。


What is this?
----------

This is a shell script for backing up Koto wallet.  
When you run this, backup files are saved in ~/KotoBackup/YearMonthDay-HourMinuteSecond/.

How to Use?
----------

    git clone https://github.com/akarinS/shellscript-kotobackup
    chmod u+x shellscript-kotobackup/kotobackup.sh

Copy to the same place as kotod and koto-cli. And run kotobackup.sh
Ubuntu exsample

    cp shellscript-kotobackup/kotobackup.sh ./koto/src/kotobackup.sh
    ./koto/src/kotobackup.sh

Mac exsample

    cp shellscript-kotobackup/kotobackup.sh ./koto/171228_koto1.0.13_mac_64bit/kotobackup.sh
    ./koto/171228_koto1.0.13_mac_64bit/kotobackup.sh

Coution
----------

Please run with kotod stopped.

License
----------

For license information see the file COPYING.
