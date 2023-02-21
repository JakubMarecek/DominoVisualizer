RD /S /Q "bin"

RD /S /Q "DominoVisualizer\obj"
pause

dotnet publish DominoVisualizer\DominoVisualizer.csproj -c Release

"..\FC5ModInstaller\signtool\signtool" sign /fd sha256 /td sha256 /v /f ..\FC5ModInstaller\JakubMarecekSPC.pfx /p J42bKN89p9XtLV5RXSSkCtUXmpxnLh /tr http://timestamp.sectigo.com bin\net7.0-windows\win-x64\publish\DominoVisualizer.exe

pause