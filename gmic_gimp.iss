;---------------------------------------------
;
; File : gmic_gimp.iss
;
; Description : Inno Setup Script to create
;               a Windows installer for
;               G'MIC for GIMP.
;
; Authors : François Collard
;           David Tschumperlé
;
;---------------------------------------------

#define AppName "G'MIC for GIMP"
#define AppVersion GetFileVersion(AddBackslash(SourcePath) + "GMIC_Gimp.exe")

[Setup]
AppName={#AppName}
AppVersion=1.3.7.1
AppPublisherURL=http://gmic.sourceforge.net/
DefaultDirName={%USERPROFILE|{userdesktop}\..}\.gimp-2.6\plug-ins\
DefaultGroupName={#AppName}
UninstallDisplayIcon={app}\gmic_gimp.exe
LicenseFile={#file AddBackslash(SourcePath) + "CeCILL.rtf"}
VersionInfoVersion={#AppVersion}
OutputDir=userdocs:\Inno Setup\gmic_gimp
UninstallFilesDir={app}\uninst
AppendDefaultDirName=no
UsePreviousAppDir=yes
DirExistsWarning=no

[Files]
Source: gmic_gimp_win32\gmic_gimp.exe; DestDir: {app}
Source: gmic_gimp_win32\_gmic\curl.exe; DestDir: {app}\_gmic\
Source: gmic_gimp_win32\libfftw3-3.dll; DestDir: {app}
Source: gmic_gimp_win32\libpng3.dll; DestDir: {app}
Source: gmic_gimp_win32\pthreadGC2.dll; DestDir: {app}

;[Icons]
;Name: {userstartmenu}\Gimp\Gmic_Gimp\Uninstall Gmic_Gimp; Filename: {uninstallexe}

[Languages]
Name: French; MessagesFile: compiler:Languages\French.isl
Name: English; MessagesFile: compiler:Default.isl
Name: Czech; MessagesFile: compiler:Languages\Czech.isl
Name: Danish; MessagesFile: compiler:Languages\Danish.isl
Name: Dutch; MessagesFile: compiler:Languages\Dutch.isl
Name: Finnish; MessagesFile: compiler:Languages\Finnish.isl
Name: German; MessagesFile: compiler:Languages\German.isl
Name: Hebrew; MessagesFile: compiler:Languages\Hebrew.isl
Name: Hungarian; MessagesFile: compiler:Languages\Hungarian.isl
Name: Italian; MessagesFile: compiler:Languages\Italian.isl
Name: Japanese; MessagesFile: compiler:Languages\Japanese.isl
Name: Norwegian; MessagesFile: compiler:Languages\Norwegian.isl
Name: Polish; MessagesFile: compiler:Languages\Polish.isl
Name: Portuguese; MessagesFile: compiler:Languages\Portuguese.isl
Name: Russian; MessagesFile: compiler:Languages\Russian.isl
Name: Slovak; MessagesFile: compiler:Languages\Slovak.isl
Name: Slovenian; MessagesFile: compiler:Languages\Slovenian.isl
Name: Spanish; MessagesFile: compiler:Languages\Spanish.isl
