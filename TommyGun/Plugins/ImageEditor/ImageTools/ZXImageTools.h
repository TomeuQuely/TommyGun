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
#ifndef ImageEditorH
#define ImageEditorH
//-- APP --------------------------------------------------------------------
#include "..\ZXImage.h"
#include "..\PaintTools\ZXToolInterface.h"
#include "ZXBasePlugin.h"
//---------------------------------------------------------------------------
using namespace Scorpio;
using namespace Plugin;
//---------------------------------------------------------------------------
// Plugin Class
/**
 * @class   ZXImageTools class
 * @brief   This class was generated by the KiwiWare Plugin Wizard.
 * @brief   It is the basis for constructing a KiwiWare compatible plugin.
 * @author  KiwiWare Plugin Wizard
 * @date    Created 17 December 2001 by Tony Thompson
 * @remarks Copyright Scorpio Software 2001
 */
//---------------------------------------------------------------------------
class ZXImageTools : public ZXBasePlugin
{
public:
                    __fastcall  ZXImageTools();
                    __fastcall ~ZXImageTools();

            HRESULT __fastcall  InitialisePlugin    (ZXPlugin* pPlugin);
            HRESULT __fastcall  ReleasePlugin       (void);
            void    __fastcall  RegisterEvents      (void);

            HRESULT __fastcall  MouseDown           (ZXImage* Image, TMouseButton Button, TShiftState Shift, int X, int Y);
            HRESULT __fastcall  MouseMove           (ZXImage* Image, TShiftState Shift, int X, int Y);
            HRESULT __fastcall  MouseUp             (ZXImage* Image, TMouseButton Button, TShiftState Shift, int X, int Y);
            HRESULT __fastcall  Cursor              (TCursor& Cursor);
            HRESULT __fastcall  ImageChange         (ZXImage* Image);
    // Events
    //static  HRESULT WINAPI      EventSaveQuery      (ZXEventManager* EventManager, LPDATA lpData, DWORD dwParam, DWORD dwArg);
};
//---------------------------------------------------------------------------
ZXImageTools* NewPluginClass(void);
//---------------------------------------------------------------------------
#endif
