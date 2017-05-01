/*---------------------------------------------------------------------------

    (c) 2004 Scorpio Software
        19 Wittama Drive
        Glenmore Park
        Sydney NSW 2745
        Australia

-----------------------------------------------------------------------------

    $Workfile::                                                           $
    $Revision::                                                           $
        $Date::                                                           $
      $Author::                                                           $

---------------------------------------------------------------------------*/
//---------------------------------------------------------------------------
#include "pch.h"
#pragma hdrstop
//---------------------------------------------------------------------------
RL_MESSAGE_LOGGER_OBJECT
//---------------------------------------------------------------------------
using namespace Scorpio;
using namespace Interface;
using namespace Plugin;
using namespace Logging;
//- GLOBAL LOG FILE ---------------------------------------------------------
ZXLogFile g_LogFile;
//---------------------------------------------------------------------------
using namespace Scorpio;
using namespace SamMode3Palette;
//---------------------------------------------------------------------------
// NewPluginClass
/**
 * Called from ImageEditor.cpp to create a new Plugin object. The ImageEditor.cpp only uses the
 * Base class reference. So this function returns a Plugin object to use of type class ZXBasePlugin.
 * @return  ZXBasePlugin a ZXBasePlugin compatible object
 * @author  KiwiWare Plugin Wizard
 * @date    Created 17 December 2001 by Tony Thompson
 * @remarks Copyright Scorpio Software 2001
 */
//---------------------------------------------------------------------------
SamMode3PalettePlugin* NewPluginClass(void)
{
    RL_METHOD
    // create the new plugin class object
    return new SamMode3PalettePlugin();
}
//---------------------------------------------------------------------------
// Constructor
/**
 * Allocates resource for use by the Plugin class
 * @author  KiwiWare Plugin Wizard
 * @date    Created 17 December 2001 by Tony Thompson
 * @remarks Copyright Scorpio Software 2001
 */
//---------------------------------------------------------------------------
__fastcall SamMode3PalettePlugin::SamMode3PalettePlugin()
{
    RL_METHOD
    frmSamMode3Palette = new TfrmSamMode3Palette(NULL);
    dlgSamCoupeColors  = new TdlgSamCoupeColors(NULL);
}
//---------------------------------------------------------------------------
// Destructor
/**
 * Frees the resources of the Plugin class
 * @author  KiwiWare Plugin Wizard
 * @date    Created 17 December 2001 by Tony Thompson
 * @remarks Copyright Scorpio Software 2001
 */
//---------------------------------------------------------------------------
__fastcall SamMode3PalettePlugin::~SamMode3PalettePlugin()
{
    RL_METHOD
    // release our resources before dying
    SAFE_DELETE(dlgSamCoupeColors);
    SAFE_DELETE(frmSamMode3Palette);
    Release();
}
//---------------------------------------------------------------------------
// InitialisePlugin
/**
 * Initialises the plugin for use
 * @param   PluginHandle the handle allocated to the plugin
 * @return  HRESULT S_OK success, S_FALSE failure
 * @author  KiwiWare Plugin Wizard
 * @date    Created 17 December 2001 by Tony Thompson
 * @remarks Copyright Scorpio Software 2001
 */
//---------------------------------------------------------------------------
HRESULT __fastcall SamMode3PalettePlugin::InitialisePlugin(ZXPlugin* pPlugin)
{
    RL_METHOD
    HRESULT hResult = E_POINTER;
    // use the hInstanceParent to get the Parent Interfaces using GetProcAddress
    // if the interfaces do not exist then fail the Initialization
    // if it passes then
    if (true == SAFE_PTR(frmSamMode3Palette))
    {
        hResult = frmSamMode3Palette->Initialize(pPlugin->Handle, pPlugin->ParentInstance);
    }
    return hResult;
}
//---------------------------------------------------------------------------
// ReleasePlugin
/**
 * Releases the resources associated with the Plugin
 * @return  HRESULT S_OK success, S_FALSE failure
 * @author  KiwiWare Plugin Wizard
 * @date    Created 17 December 2001 by Tony Thompson
 * @remarks Copyright Scorpio Software 2001
 */
//---------------------------------------------------------------------------
HRESULT __fastcall SamMode3PalettePlugin::ReleasePlugin(void)
{
    RL_METHOD
    RL_HRESULT(S_OK)
    if (true == SAFE_PTR(frmSamMode3Palette))
    {
        hResult = frmSamMode3Palette->Release();
    }
    return hResult;
}
//---------------------------------------------------------------------------
void __fastcall SamMode3PalettePlugin::RegisterEvents(void)
{
}
//---------------------------------------------------------------------------
HRESULT __fastcall SamMode3PalettePlugin::GetPalette(ZXPalette*& Palette)
{
    RL_METHOD
    RL_HRESULT(E_POINTER);
    if (true == SAFE_PTR(frmSamMode3Palette))
    {
        hResult = frmSamMode3Palette->GetPalette(Palette);
    }
    return hResult;
}
//---------------------------------------------------------------------------
HRESULT __fastcall SamMode3PalettePlugin::GetPalettePanel(TPanel*& Panel)
{
    RL_METHOD
    RL_HRESULT(E_POINTER);
    if (true == SAFE_PTR(frmSamMode3Palette))
    {
        Panel = frmSamMode3Palette->panCPCPalette;
        hResult = S_OK;
    }
    return hResult;
}
//---------------------------------------------------------------------------

