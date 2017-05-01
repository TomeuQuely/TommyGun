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
#ifndef ZXSpectrumPaletteH
#define ZXSpectrumPaletteH
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
namespace Scorpio
{
    namespace ImageParser
    {
        class ZXParser;
        //---------------------------------------------------------------------------
        class SevenuPImageParser //: public ZXParser
        {
        private:

                    void    __fastcall  Initialize(void);
                    String  __fastcall  GetName(void);

        public:
                            __fastcall  SevenuPImageParser();

        };
        //---------------------------------------------------------------------------
    }
}
//---------------------------------------------------------------------------
#endif
