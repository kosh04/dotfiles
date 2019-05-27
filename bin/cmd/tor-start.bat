@echo off
setlocal
rem set TOR_ROOT=%USERPROFILE%\Programs\Tor Browser\Browser\TorBrowser
set TOR_ROOT=%USERPROFILE%\Downloads\net-p2p\tor-win32-0.3.3.7

rem NOTE: option -f CONFIG_FILE (default %APPDATA%\tor\torrc)

%TOR_ROOT%\Tor\tor.exe ^
	SocksPort 9150 ^
	GeoIPFile     %TOR_ROOT%\DATA\Tor\geoip ^
	GeoIPv6File   %TOR_ROOT%\Data\Tor\geoip6 ^
	DataDirectory %TOR_ROOT%\Data\Tor ^
	%*

goto eof

REM NOTE: Start to TorBrowser
tor.exe --defaults-torrc "%TOR_ROOT%\Data\Tor\torrc-defaults" ^
-f "%TOR_ROOT%\Data\Tor\torrc" ^
DataDirectory "%TOR_ROOT%\Data\Tor" ^
GeoIPFile "%TOR_ROOT%\Data\Tor\geoip" ^
GeoIPv6File "%TOR_ROOT%\Data\Tor\geoip6" ^
HashedControlPassword 16:********************************************************** ^
+__ControlPort 9151 ^
+__SocksPort "127.0.0.1:9150 IPv6Traffic PreferIPv6 KeepAliveIsolateSOCKSAuth" ^
__OwningControllerProcess 1620

:eof
