[Setup]
AppName=M3 Kahoot
AppVersion=1.0
DefaultDirName={pf}\M3 Kahoot
ArchitecturesInstallIn64BitMode=x64
DefaultGroupName=M3 Kahoot
UninstallDisplayIcon={app}\M3 Kahoot.exe
OutputDir=output
OutputBaseFilename=M3_Kahoot_Setup_V1.0
SetupIconFile=app_icon.ico
Compression=lzma
SolidCompression=yes

[Files]
Source: "dist\M3 Kahoot-win32-x64\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\M3 Kahoot"; Filename: "{app}\M3 Kahoot.exe"
Name: "{group}\Uninstall M3 Kahoot"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\M3 Kahoot.exe"; Description: "Launch M3 Kahoot"; Flags: nowait postinstall skipifsilent
