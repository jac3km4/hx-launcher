Invoke-WebRequest `
  -Uri "https://github.com/tokyoneon/B2E/raw/master/Bat_To_Exe_Converter.zip" `
  -OutFile $env:TEMP\b2e.zip

Expand-Archive `
  -Path $env:TEMP\b2e.zip `
  -DestinationPath .\b2e `
  -Force

& ".\b2e\Portable\Bat_To_Exe_Converter_(x64).exe" `
  /bat helix.bat `
  /exe helix.exe `
  /icon helix.ico `
  /invisible `
  /x64 `
  /fileversion 1.0.0.0 `
  /productversion 1.0.0.0 `
  /productname Helix `
  /originalfilename helix.exe `
  /internalname helix `
  /description helix `
  /company helix `
  /trademarks helix `
  /copyright helix
