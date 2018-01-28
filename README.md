shellscript-kotobackup
==========

これは何?
----------

これは Koto をバックアップするためのシェルスクリプトです。
これを実行すると、~/KotoBackup/年月日-時分秒/ にバックアップファイルが保存されます。

どう使うの?
----------

準備

    git clone https://github.com/akarinS/shellscript-kotobackup
    cd shellscript-kotobackup
    chmod u+x kotobackup.sh

実行

    ./kotobackup.sh

注意
----------

Kotod を停止した状態で実行してください。

ライセンス
---------

ライセンス情報については、LICENSEファイルを参照してください。


What is this?
----------

This is a shell script for backing up Koto.
When you run this, backup files are saved in ~/KotoBackup/YearMonthDay-HourMinuteSecond/.

How to Use?
----------

Preparation

    git clone https://github.com/akarinS/shellscript-kotobackup
    cd shellscript-kotobackup
    chmod u+x kotobackup.sh

Run

    ./kotobackup.sh

Coution
----------

Please run with kotod stopped.

License
----------

For license information see the file COPYING.
