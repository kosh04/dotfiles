@echo off
rem パソコンを再起動＆BIOS(UEFI)画面に入る
rem 注意：パソコンによってはサポートされていない場合あり

if "%*"=="/?" (
   type %0
   exit /b
)

rem /r   シャット ダウンの後にコンピューターを再起動します。
rem /fw  次の再起動時にファームウェア ユーザー インターフェイスが表示されます。
echo Shutdown /r /fw %*
