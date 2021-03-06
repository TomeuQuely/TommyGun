; Script generated by the HM NIS Edit Script Wizard.

!include FontRegAdv.nsh
!include FontName.nsh

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "TommyGun"
!define PRODUCT_VERSION "1.3.8"
!define PRODUCT_PUBLISHER "KiwiWare"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\TommyGun.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 2.1 compatible ------
!include "MUI2.nsh"

!include LogicLib.nsh

;Request application privileges for Windows Vista
  RequestExecutionLevel user

; MUI Settings
;--------------------------------
;Interface Configuration

!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BITMAP "tommygun-installer-header.bmp" ; optional
!define MUI_WELCOMEFINISHPAGE_BITMAP "tommygun-installer-side.bmp"
!define MUI_COMPONENTSPAGE_CHECKBITMAP "${NSISDIR}\Contrib\Graphics\Checks\simple-round2.bmp"
!define MUI_ABORTWARNING
!define MUI_ICON "tommygun.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\orange-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; Components page
;!insertmacro MUI_PAGE_COMPONENTS
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\TommyGun.exe"
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\ReadMe.txt"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "TommyGun 1.3.8.exe"
RequestExecutionLevel admin ;Require admin rights on NT6+ (When UAC is turned on)
InstallDir "$PROGRAMFILES\TommyGun"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
UserInfo::GetAccountType
pop $0
${If} $0 != "admin" ;Require admin rights on NT4+
    MessageBox mb_iconstop "Administrator rights required!"
    SetErrorLevel 740 ;ERROR_ELEVATION_REQUIRED
    Quit
${EndIf}
FunctionEnd

; Font(s)
Section "Fonts" SEC05
  StrCpy $FONT_DIR $FONTS
  !insertmacro InstallTTF '..\Binaries\OCTINSTENCILRG.TTF'
  SendMessage ${HWND_BROADCAST} ${WM_FONTCHANGE} 0 0 /TIMEOUT=5000
SectionEnd

;Section "un.Fonts"
;StrCpy $FONT_DIR $FONTS
;  !insertmacro RemoveTTF 'OCTINSTENCILRG.TTF'
;  SendMessage ${HWND_BROADCAST} ${WM_FONTCHANGE} 0 0 /TIMEOUT=5000
;SectionEnd

; Main Application Files
Section "Main files" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  CreateDirectory "$SMPROGRAMS\TommyGun"
  CreateShortCut "$SMPROGRAMS\TommyGun\TommyGun.lnk" "$INSTDIR\TommyGun.exe"
  CreateShortCut "$SMPROGRAMS\TommyGun\Getting Started Guide.lnk" "$INSTDIR\Getting Started Guide.doc"
  CreateShortCut "$SMPROGRAMS\TommyGun\TommyGun Manual.lnk" "$INSTDIR\TommyGun.doc"
  CreateShortCut "$DESKTOP\TommyGun.lnk" "$INSTDIR\TommyGun.exe"
  File "..\Binaries\borlndmm.dll"
  File "..\Binaries\cc3280mt.dll"
  ;File "..\Binaries\libeay32.dll"
  ;File "..\Binaries\ssleay32.dll"
  ;File "..\Binaries\indy100.bpl"
  ;File "..\Binaries\IndyCore100.bpl"
  ;File "..\Binaries\IndyProtocols100.bpl"
  ;File "..\Binaries\IndySystem100.bpl"
  File "..\Binaries\Core_R6.dll"
  File "..\Binaries\CoreUtils_R6.dll"
  File "..\Binaries\ImageLibrary_R6.dll"
  File "..\Binaries\LogFiles_R6.dll"
  File "..\Binaries\PluginCommon_R6.dll"
  File "..\Binaries\ReadMe.txt"
  File "..\Binaries\Scorpio_R6.bpl"
  File "..\Binaries\Scintilla_R6.bpl"
  File "..\Binaries\SciLexer.dll"
  File "..\Binaries\Scitilla License.txt"
  File "..\Binaries\TommyGun.exe"
  File "..\Binaries\TommyGun.exe.manifest"
  File "..\Binaries\dbrtl100.bpl"
  File "..\Binaries\designide100.bpl"
  File "..\Binaries\rtl100.bpl"
  File "..\Binaries\vcl100.bpl"
  File "..\Binaries\vclactnband100.bpl"
  File "..\Binaries\vcldb100.bpl"
  File "..\Binaries\vclx100.bpl"
  File "..\Binaries\xmlrtl100.bpl"
  SetOverwrite off
  # Don't overwrite the users presets or the tools definitions
  File "..\Binaries\Tools.xml"
  SetOverwrite on
SectionEnd

; Main Plugins
Section "Main plugins" SEC02
  SetOutPath "$INSTDIR\Plugins"
  File "..\Binaries\Plugins\AttributeImageParser.cpi"
  File "..\Binaries\Plugins\CharacterType.ipi"
  File "..\Binaries\Plugins\CodeEditor.tpi"
  File "..\Binaries\Plugins\ImageEditor.tpi"
  File "..\Binaries\Plugins\ImageImport.ipi"
  File "..\Binaries\Plugins\ImageTools.ipi"
  File "..\Binaries\Plugins\MapEditor.tpi"
  File "..\Binaries\Plugins\MapParser.cpi"
  File "..\Binaries\Plugins\PaintTools.ipi"
  File "..\Binaries\Plugins\PaletteParser.cpi"
  File "..\Binaries\Plugins\PaletteImageParser.cpi"
  File "..\Binaries\Plugins\ScreenType.ipi"
  File "..\Binaries\Plugins\SpriteType.ipi"
  File "..\Binaries\Plugins\StringEditor.tpi"
  File "..\Binaries\Plugins\StringTableParser.cpi"
  File "..\Binaries\Plugins\TileType.ipi"
SectionEnd

; Pasmo
Section "Documentation" SEC03
  SetOutPath "$INSTDIR\Pasmo"
  File "..\Binaries\Pasmo\pasmo.exe"
  File "..\Binaries\Pasmo\cc3280mt.dll"
  File "..\Binaries\Pasmo\pasmodoc.html"
  File "..\Binaries\Pasmo\NEWS"
  File "..\Binaries\Pasmo\README"
SectionEnd

; Documentation
Section "Documentation" SEC04
  SetOutPath "$INSTDIR"
  File "..\Binaries\TommyGun.doc"
  File "..\Binaries\Getting Started Guide.doc"
SectionEnd

; ZX Spectrum Plugins
Section "ZX Spectrum plugins" SEC10
  SetOutPath "$INSTDIR\Plugins\_ZX Spectrum"
  File "..\Binaries\Plugins\_ZX Spectrum\defaults.xml"
  File "..\Binaries\Plugins\_ZX Spectrum\MonochromePalette.ipi"
  File "..\Binaries\Plugins\_ZX Spectrum\SevenuPImageParser.cpi"
  File "..\Binaries\Plugins\_ZX Spectrum\UDGType.ipi"
  File "..\Binaries\Plugins\_ZX Spectrum\ZXImageTableParser.cpi"
  File "..\Binaries\Plugins\_ZX Spectrum\ZXScreenParser.cpi"
  File "..\Binaries\Plugins\_ZX Spectrum\ZXSpectrumPalette.ipi"
  File "..\Binaries\Plugins\_ZX Spectrum\ZXSpectrumHiColourPalette.ipi"
  File "..\Binaries\Plugins\_ZX Spectrum\ZXSpectrumUlaPlusPalette.ipi"
  File "..\Binaries\Plugins\_ZX Spectrum\ZXSpectrumNextPalette.ipi"
SectionEnd

; Example Projects
Section "Example Projects" SEC11
  SetOverwrite ifnewer
  ; Library
  SetOutPath "$DOCUMENTS\TommyGun\Library"
  File "..\Binaries\Projects\Library\debugstring.asm"
  ; Screen$
  SetOutPath "$DOCUMENTS\TommyGun\A - Z Screens"
  File "..\Binaries\Projects\A - Z Screens\project.xml"
  ; BigSpritesDemo
  SetOutPath "$DOCUMENTS\TommyGun\BigSpritesDemo"
  File "..\Binaries\Projects\BigSpritesDemo\project.xml"
  File "..\Binaries\Projects\BigSpritesDemo\game.asm"
  File "..\Binaries\Projects\BigSpritesDemo\libinput.asm"
  File "..\Binaries\Projects\BigSpritesDemo\libscreen.asm"
  File "..\Binaries\Projects\BigSpritesDemo\libspritemasked.asm"
  File "..\Binaries\Projects\BigSpritesDemo\libspritexor.asm"
  File "..\Binaries\Projects\BigSpritesDemo\debugstring.asm"
  File "..\Binaries\Projects\BigSpritesDemo\background.inc"
  File "..\Binaries\Projects\BigSpritesDemo\spritesxor.inc"
  File "..\Binaries\Projects\BigSpritesDemo\spritesmasked.inc"
  ; Boriel Basic Demo
  SetOutPath "$DOCUMENTS\TommyGun\Boriel Basic Demo"
  File "..\Binaries\Projects\Boriel Basic Demo\project.xml"
  File "..\Binaries\Projects\Boriel Basic Demo\circle.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\clock.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\clock2.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\colors.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\fact.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\fill.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\flag.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\flights.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\freregustav.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\led.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\lines.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\pong.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\scroll.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\spfill.bas"
  File "..\Binaries\Projects\Boriel Basic Demo\stars.bas"
  ; Buddy
  SetOutPath "$DOCUMENTS\TommyGun\Buddy"
  File "..\Binaries\Projects\Buddy\project.xml"
  File "..\Binaries\Projects\Buddy\controls.asm"
  File "..\Binaries\Projects\Buddy\icons.asm"
  File "..\Binaries\Projects\Buddy\menus.asm"
  File "..\Binaries\Projects\Buddy\startup.asm"
  File "..\Binaries\Projects\Buddy\windows.asm"
  File "..\Binaries\Projects\Buddy\caret_draw.inc"
  File "..\Binaries\Projects\Buddy\caret_gfx.inc"
  File "..\Binaries\Projects\Buddy\controls.inc"
  File "..\Binaries\Projects\Buddy\desktop.inc"
  File "..\Binaries\Projects\Buddy\display.inc"
  File "..\Binaries\Projects\Buddy\font64.inc"
  File "..\Binaries\Projects\Buddy\fontPro.inc"
  File "..\Binaries\Projects\Buddy\gui_checkrect.inc"
  File "..\Binaries\Projects\Buddy\gui_controls.inc"
  File "..\Binaries\Projects\Buddy\icon_draw.inc"
  File "..\Binaries\Projects\Buddy\icons.inc"
  File "..\Binaries\Projects\Buddy\memory.inc"
  File "..\Binaries\Projects\Buddy\menus.inc"
  File "..\Binaries\Projects\Buddy\print_64.inc"
  File "..\Binaries\Projects\Buddy\print_pro.inc"
  ; GEMS
  SetOutPath "$DOCUMENTS\TommyGun\Gems"
  File "..\Binaries\Projects\Gems\project.xml"
  File "..\Binaries\Projects\Gems\window.inc"
  File "..\Binaries\Projects\Gems\screen.inc"
  File "..\Binaries\Projects\Gems\menu.inc"
  File "..\Binaries\Projects\Gems\math.inc"
  File "..\Binaries\Projects\Gems\isr.inc"
  File "..\Binaries\Projects\Gems\images.inc"
  File "..\Binaries\Projects\Gems\hiscoredata.inc"
  File "..\Binaries\Projects\Gems\hiscore.inc"
  File "..\Binaries\Projects\Gems\gameplay.inc"
  File "..\Binaries\Projects\Gems\font.inc"
  File "..\Binaries\Projects\Gems\control.inc"
  File "..\Binaries\Projects\Gems\ay_player.inc"
  File "..\Binaries\Projects\Gems\game.asm"
  File "..\Binaries\Projects\Gems\game_logic.txt"
  File "..\Binaries\Projects\Gems\The_Gem_Machine.SFX"
  File "..\Binaries\Projects\Gems\SoundFx.SFX"
  File "..\Binaries\Projects\Gems\TuneF_Ska.pt3"
  File "..\Binaries\Projects\Gems\TuneE_DnB.pt3"
  File "..\Binaries\Projects\Gems\TuneD_HeavyMetal.pt3"
  File "..\Binaries\Projects\Gems\TuneC.pt3"
  File "..\Binaries\Projects\Gems\TuneB.pt3"
  File "..\Binaries\Projects\Gems\TuneA.pt3"
  File "..\Binaries\Projects\Gems\TitleTune.pt3"
  ; Noughts and Crosses tutorial game
  SetOutPath "$DOCUMENTS\TommyGun\Noughts and Crosses"
  File "..\Binaries\Projects\Noughts and Crosses\project.xml"
  File "..\Binaries\Projects\Noughts and Crosses\game.asm"
  File "..\Binaries\Projects\Noughts and Crosses\gameplay.inc"
  File "..\Binaries\Projects\Noughts and Crosses\images.inc"
  ; SabreWulf
  SetOutPath "$DOCUMENTS\TommyGun\SabreWulf"
  File "..\Binaries\Projects\SabreWulf\project.xml"
  File "..\Binaries\Projects\SabreWulf\game.asm"
  File "..\Binaries\Projects\SabreWulf\map.inc"
  File "..\Binaries\Projects\SabreWulf\screen.inc"
  File "..\Binaries\Projects\SabreWulf\sprites.inc"
  File "..\Binaries\Projects\SabreWulf\tiles.inc"
  ; Space Invaders
  SetOutPath "$DOCUMENTS\TommyGun\Space Invaders"
  File "..\Binaries\Projects\Space Invaders\project.xml"
  File "..\Binaries\Projects\Space Invaders\tables.inc"
  File "..\Binaries\Projects\Space Invaders\strings.inc"
  File "..\Binaries\Projects\Space Invaders\sprites.inc"
  File "..\Binaries\Projects\Space Invaders\screen.inc"
  File "..\Binaries\Projects\Space Invaders\font.inc"
  File "..\Binaries\Projects\Space Invaders\player.asm"
  File "..\Binaries\Projects\Space Invaders\mothership.asm"
  File "..\Binaries\Projects\Space Invaders\menu.asm"
  File "..\Binaries\Projects\Space Invaders\libtext.asm"
  File "..\Binaries\Projects\Space Invaders\libsprite.asm"
  File "..\Binaries\Projects\Space Invaders\libscreen.asm"
  File "..\Binaries\Projects\Space Invaders\libscore.asm"
  File "..\Binaries\Projects\Space Invaders\libosb.asm"
  File "..\Binaries\Projects\Space Invaders\libmath.asm"
  File "..\Binaries\Projects\Space Invaders\libisr.asm"
  File "..\Binaries\Projects\Space Invaders\libinput.asm"
  File "..\Binaries\Projects\Space Invaders\libbeeper.asm"
  File "..\Binaries\Projects\Space Invaders\game.asm"
  File "..\Binaries\Projects\Space Invaders\aliens.asm"
  File "..\Binaries\Projects\Space Invaders\README.txt"
  File "..\Binaries\Projects\Space Invaders\license.txt"
  ; Z88DK demo
  SetOutPath "$DOCUMENTS\TommyGun\z88dk"
  File "..\Binaries\Projects\z88dk\project.xml"
  File "..\Binaries\Projects\z88dk\main.c"
  ; Nivana Sprites
  SetOutPath "$DOCUMENTS\TommyGun\Nivana Sprites"
  File "..\Binaries\Projects\Nivana Sprites\project.xml"
  File "..\Binaries\Projects\Nivana Sprites\MultiColorSprites.asm"
  SetOverwrite on
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  CreateShortCut "$SMPROGRAMS\TommyGun\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\TommyGun.exe"
  WriteRegStr HKCU "Software\Scorpio\TommyGun\Plugins" "MachineFolder" "ZX Spectrum"
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "ImageEditor.tpi" 0x00000001
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "MapEditor.tpi"   0x00000002
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "StringEditor.tpi"   0x00000003
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "CodeEditor.tpi"  0x00000004
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "MusicEditor.tpi"  0x00000005
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "MemoryEditor.tpi"  0x00000006
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "DNL_ImageEditor.tpi" 0x00000000
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "DNL_MapEditor.tpi"   0x00000000
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "DNL_CodeEditor.tpi"  0x00000000
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "DNL_MusicEditor.tpi"  0x00000000
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "DNL_MemoryEditor.tpi"  0x00000000
  WriteRegDWORD HKCU "Software\Scorpio\TommyGun\Plugins" "DNL_StringEditor.tpi"   0x00000000
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\TommyGun.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "TommyGun main application files."
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "Editing and tool plugins. Include editors for Images, Maps, Text, and Coding."
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "Pasmo Z80 Assembler."
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC04} "TommyGun documentation. Includes the start of a Manual and the Getting Started Guide."
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC05} "The Octin Stencil True Type Font."
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC10} "Sinclair ZX Spectrum plugins and files."
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC11} "Sinclair ZX Spectrum example projects including SabreWulf, Space Invaders, Gems, Noughts and Cross and more."
!insertmacro MUI_FUNCTION_DESCRIPTION_END

Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  ; Application Files
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\borlndmm.dll"
  Delete "$INSTDIR\BuildPresets.xml"
  Delete "$INSTDIR\cc3280mt.dll"
  ;Delete "$INSTDIR\libeay32.dll"
  ;Delete "$INSTDIR\ssleay32.dll"
  ;Delete "$INSTDIR\indy100.bpl"
  ;Delete "$INSTDIR\IndyCore100.bpl"
  ;Delete "$INSTDIR\IndyProtocols100.bpl"
  ;Delete "$INSTDIR\IndySystem100.bpl"
  Delete "$INSTDIR\Core_R6.dll"
  Delete "$INSTDIR\CoreUtils_R6.dll"
  Delete "$INSTDIR\ImageLibrary_R6.dll"
  Delete "$INSTDIR\LogFiles_R6.dll"
  Delete "$INSTDIR\PluginCommon_R6.dll"
  Delete "$INSTDIR\ReadMe.txt"
  Delete "$INSTDIR\rtl100.bpl"
  Delete "$INSTDIR\Scorpio_R6.bpl"
  Delete "$INSTDIR\Scintilla_R6.bpl"
  Delete "$INSTDIR\SciLexer.dll"
  Delete "$INSTDIR\Scitilla License.txt"
  Delete "$INSTDIR\TommyGun.exe"
  Delete "$INSTDIR\TommyGun.exe.manifest"
  Delete "$INSTDIR\dbrtl100.bpl"
  Delete "$INSTDIR\designide100.bpl"
  Delete "$INSTDIR\rtl100.bpl"
  Delete "$INSTDIR\vcl100.bpl"
  Delete "$INSTDIR\vclactnband100.bpl"
  Delete "$INSTDIR\vcldb100.bpl"
  Delete "$INSTDIR\vclx100.bpl"
  Delete "$INSTDIR\xmlrtl00.bpl"
  ; PASMO
  Delete "$INSTDIR\Pasmo\pasmo.exe"
  Delete "$INSTDIR\Pasmo\cc3280mt.dll"
  Delete "$INSTDIR\Pasmo\pasmodoc.html"
  Delete "$INSTDIR\Pasmo\NEWS"
  Delete "$INSTDIR\Pasmo\README"
  ; Plugins
  Delete "$INSTDIR\Plugins\AttributeImageParser.cpi"
  Delete "$INSTDIR\Plugins\CharacterType.ipi"
  Delete "$INSTDIR\Plugins\CodeEditor.tpi"
  Delete "$INSTDIR\Plugins\ImageEditor.tpi"
  Delete "$INSTDIR\Plugins\ImageImport.ipi"
  Delete "$INSTDIR\Plugins\ImageTools.ipi"
  Delete "$INSTDIR\Plugins\MapEditor.tpi"
  Delete "$INSTDIR\Plugins\MapParser.cpi"
  Delete "$INSTDIR\Plugins\PaintTools.ipi"
  Delete "$INSTDIR\Plugins\PaletteParser.cpi"
  Delete "$INSTDIR\Plugins\PaletteImageParser.cpi"
  Delete "$INSTDIR\Plugins\ScreenType.ipi"
  Delete "$INSTDIR\Plugins\SpriteType.ipi"
  Delete "$INSTDIR\Plugins\StringEditor.tpi"
  Delete "$INSTDIR\Plugins\StringTableParser.cpi"
  Delete "$INSTDIR\Plugins\TileType.ipi"
  ; ZX Spectrum Plugins
  Delete "$INSTDIR\Plugins\_ZX Spectrum\defaults.xml"
  Delete "$INSTDIR\Plugins\_ZX Spectrum\MonochromePalette.ipi"
  Delete "$INSTDIR\Plugins\_ZX Spectrum\SevenuPImageParser.cpi"
  Delete "$INSTDIR\Plugins\_ZX Spectrum\UDGType.ipi"
  Delete "$INSTDIR\Plugins\_ZX Spectrum\ZXImageTableParser.cpi"
  Delete "$INSTDIR\Plugins\_ZX Spectrum\ZXScreenParser.cpi"
  Delete "$INSTDIR\Plugins\_ZX Spectrum\ZXSpectrumPalette.ipi"
  Delete "$INSTDIR\Plugins\_ZX Spectrum\ZXSpectrumHiColourPalette.ipi"
  Delete "$INSTDIR\Plugins\_ZX Spectrum\ZXSpectrumUlaPlusPalette.ipi"
  Delete "$INSTDIR\Plugins\_ZX Spectrum\ZXSpectrumNextPalette.ipi"
  ; Documentation
  Delete "$INSTDIR\TommyGun.doc"
  Delete "$INSTDIR\Getting Started Guide.doc"
  Delete "$INSTDIR\WindowsAPI.log"
  Delete "$INSTDIR\Exception.log"
  Delete "$INSTDIR\Plugin.log"
  Delete "$INSTDIR\PluginCommon.log"
  Delete "$INSTDIR\General.log"
  Delete "$INSTDIR\LogFiles.log"
  ; Example Projects
  Delete "$INSTDIR\Projects\A - Z Screens\project.xml"
  Delete "$INSTDIR\Projects\Buddy\project.xml"
  Delete "$INSTDIR\Projects\Buddy\controls.asm"
  Delete "$INSTDIR\Projects\Buddy\icons.asm"
  Delete "$INSTDIR\Projects\Buddy\menus.asm"
  Delete "$INSTDIR\Projects\Buddy\startup.asm"
  Delete "$INSTDIR\Projects\Buddy\windows.asm"
  Delete "$INSTDIR\Projects\Buddy\caret_draw.inc"
  Delete "$INSTDIR\Projects\Buddy\caret_gfx.inc"
  Delete "$INSTDIR\Projects\Buddy\controls.inc"
  Delete "$INSTDIR\Projects\Buddy\desktop.inc"
  Delete "$INSTDIR\Projects\Buddy\display.inc"
  Delete "$INSTDIR\Projects\Buddy\font64.inc"
  Delete "$INSTDIR\Projects\Buddy\fontPro.inc"
  Delete "$INSTDIR\Projects\Buddy\gui_checkrect.inc"
  Delete "$INSTDIR\Projects\Buddy\gui_controls.inc"
  Delete "$INSTDIR\Projects\Buddy\icon_draw.inc"
  Delete "$INSTDIR\Projects\Buddy\icons.inc"
  Delete "$INSTDIR\Projects\Buddy\memory.inc"
  Delete "$INSTDIR\Projects\Buddy\menus.inc"
  Delete "$INSTDIR\Projects\Buddy\print_64.inc"
  Delete "$INSTDIR\Projects\Buddy\print_pro.inc"
  Delete "$INSTDIR\Projects\Gems\project.xml"
  Delete "$INSTDIR\Projects\Gems\window.inc"
  Delete "$INSTDIR\Projects\Gems\screen.inc"
  Delete "$INSTDIR\Projects\Gems\menu.inc"
  Delete "$INSTDIR\Projects\Gems\math.inc"
  Delete "$INSTDIR\Projects\Gems\isr.inc"
  Delete "$INSTDIR\Projects\Gems\images.inc"
  Delete "$INSTDIR\Projects\Gems\hiscoredata.inc"
  Delete "$INSTDIR\Projects\Gems\hiscore.inc"
  Delete "$INSTDIR\Projects\Gems\gameplay.inc"
  Delete "$INSTDIR\Projects\Gems\font.inc"
  Delete "$INSTDIR\Projects\Gems\control.inc"
  Delete "$INSTDIR\Projects\Gems\ay_player.inc"
  Delete "$INSTDIR\Projects\Gems\game.asm"
  Delete "$INSTDIR\Projects\Gems\game_logic.txt"
  Delete "$INSTDIR\Projects\Gems\The_Gem_Machine.SFX"
  Delete "$INSTDIR\Projects\Gems\SoundFx.SFX"
  Delete "$INSTDIR\Projects\Gems\TuneF_Ska.pt3"
  Delete "$INSTDIR\Projects\Gems\TuneE_DnB.pt3"
  Delete "$INSTDIR\Projects\Gems\TuneD_HeavyMetal.pt3"
  Delete "$INSTDIR\Projects\Gems\TuneC.pt3"
  Delete "$INSTDIR\Projects\Gems\TuneB.pt3"
  Delete "$INSTDIR\Projects\Gems\TuneA.pt3"
  Delete "$INSTDIR\Projects\Gems\TitleTune.pt3"
  Delete "$INSTDIR\Projects\Noughts and Crosses\project.xml"
  Delete "$INSTDIR\Projects\Noughts and Crosses\game.asm"
  Delete "$INSTDIR\Projects\Noughts and Crosses\gameplay.inc"
  Delete "$INSTDIR\Projects\Noughts and Crosses\images.inc"
  Delete "$INSTDIR\Projects\SabreWulf\project.xml"
  Delete "$INSTDIR\Projects\SabreWulf\game.asm"
  Delete "$INSTDIR\Projects\SabreWulf\map.inc"
  Delete "$INSTDIR\Projects\SabreWulf\screen.inc"
  Delete "$INSTDIR\Projects\SabreWulf\sprites.inc"
  Delete "$INSTDIR\Projects\SabreWulf\tiles.inc"
  Delete "$INSTDIR\Projects\Space Invaders\project.xml"
  Delete "$INSTDIR\Projects\Space Invaders\tables.inc"
  Delete "$INSTDIR\Projects\Space Invaders\strings.inc"
  Delete "$INSTDIR\Projects\Space Invaders\sprites.inc"
  Delete "$INSTDIR\Projects\Space Invaders\screen.inc"
  Delete "$INSTDIR\Projects\Space Invaders\font.inc"
  Delete "$INSTDIR\Projects\Space Invaders\player.asm"
  Delete "$INSTDIR\Projects\Space Invaders\mothership.asm"
  Delete "$INSTDIR\Projects\Space Invaders\menu.asm"
  Delete "$INSTDIR\Projects\Space Invaders\libtext.asm"
  Delete "$INSTDIR\Projects\Space Invaders\libsprite.asm"
  Delete "$INSTDIR\Projects\Space Invaders\libscreen.asm"
  Delete "$INSTDIR\Projects\Space Invaders\libscore.asm"
  Delete "$INSTDIR\Projects\Space Invaders\libosb.asm"
  Delete "$INSTDIR\Projects\Space Invaders\libmath.asm"
  Delete "$INSTDIR\Projects\Space Invaders\libisr.asm"
  Delete "$INSTDIR\Projects\Space Invaders\libinput.asm"
  Delete "$INSTDIR\Projects\Space Invaders\libbeeper.asm"
  Delete "$INSTDIR\Projects\Space Invaders\game.asm"
  Delete "$INSTDIR\Projects\Space Invaders\aliens.asm"
  Delete "$INSTDIR\Projects\Space Invaders\README.txt"
  Delete "$INSTDIR\Projects\Space Invaders\license.txt"
  Delete "$INSTDIR\Projects\z88dk\project.xml"
  Delete "$INSTDIR\Projects\z88dk\main.c"
  Delete "$INSTDIR\Projects\BigSprites\project.xml"
  Delete "$INSTDIR\Projects\BigSprites\game.asm"
  Delete "$INSTDIR\Projects\BigSprites\spritesxor.asm"
  Delete "$INSTDIR\Projects\BigSprites\spritesmasked.asm"
  Delete "$INSTDIR\Projects\BigSprites\libspritexor.asm"
  Delete "$INSTDIR\Projects\BigSprites\libspritemasked.asm"
  Delete "$INSTDIR\Projects\BigSprites\libinput.asm"
  Delete "$INSTDIR\Projects\BigSprites\libscreen.asm"
  Delete "$INSTDIR\Projects\BigSprites\debugstring.asm"
  Delete "$INSTDIR\Projects\BigSprites\background.inc"
  Delete "$INSTDIR\Projects\BigSprites\spritesxor.inc"
  Delete "$INSTDIR\Projects\BigSprites\spritesmasked.inc"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\project.xml"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\circle.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\clock.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\clock2.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\colors.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\fact.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\fill.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\flag.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\flights.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\freregustav.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\led.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\lines.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\pong.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\scroll.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\spfill.bas"
  Delete "$INSTDIR\Projects\Boriel Basic Demo\stars.bas"
  Delete "$INSTDIR\Projects\debugstring.asm"
  ; Program Links
  Delete "$SMPROGRAMS\TommyGun\Uninstall.lnk"
  Delete "$DESKTOP\TommyGun.lnk"
  Delete "$SMPROGRAMS\TommyGun\TommyGun.lnk"
  Delete "$SMPROGRAMS\TommyGun\Getting Started Guide.lnk"
  Delete "$SMPROGRAMS\TommyGun\TommyGun Manual.lnk"
  ; Application Folders
  RMDir "$SMPROGRAMS\TommyGun"
  RMDir /r "$INSTDIR"
  ; Registry
  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  DeleteRegKey HKCU "Software\Scorpio\TommyGun"
  SetAutoClose true
SectionEnd