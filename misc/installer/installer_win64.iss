; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
;SignTool=signtool
AppId={{8ACC9EDD-76FA-43D4-A107-5EAB74CBED38}
AppName=PSMoveService
;AppVersion=2.1.0.0
AppVerName=PSMoveService
AppPublisher=PSMoveService
AppPublisherURL=https://github.com/cboulay/PSMoveService
AppSupportURL=https://github.com/cboulay/PSMoveService
AppUpdatesURL=https://github.com/cboulay/PSMoveService
DefaultDirName={pf}\PSMoveService
DefaultGroupName=PSMoveService
;LicenseFile=installer_license.txt
OutputDir="..\..\installer"
OutputBaseFilename=PSMoveService-Setup64
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\..\install\Win64\Release\*"; DestDir: "{app}"; Flags: ignoreversion sign recursesubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKLM64; Subkey: "Software\PSMoveService\PSMoveService"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Flags: uninsdeletekey;

[Icons]
Name: "{group}\PSMoveService"; Filename: "{app}\bin\PSMoveService.exe"
Name: "{group}\PSMoveConfigTool"; Filename: "{app}\bin\PSMoveConfigTool.exe"
Name: "{group}\PSMoveService Folder"; Filename: "{app}\bin\"




