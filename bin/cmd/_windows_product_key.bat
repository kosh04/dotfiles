@rem Require Administrators

@wmic path softwarelicensingservice get OA3xOriginalProductKey
::@powershell -Command "(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey"
