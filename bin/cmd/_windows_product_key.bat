@echo off
rem Require Administrators (?)
rem Windows ライセンス認証とプロダクトキーを確認する

wmic path softwarelicensingservice get OA3xOriginalProductKey
::powershell -Command "(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey"

::slmgr.vbs /dli

rem === NOTE: Windows ライセンス形態
rem VL (Volume License) 企業、団体向け
rem OEM (Original Equipment Manufacturer) プリインストール
rem DSP (Delivery Service Partner) 自作パソコンなど
