@rem Require Administrators
rem Windows ライセンス認証とプロダクトキーを確認する

@wmic path softwarelicensingservice get OA3xOriginalProductKey
::@powershell -Command "(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey"
::@slmgr.vbs /dli
