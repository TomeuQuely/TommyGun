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
#include "pch.h"
//---------------------------------------------------------------------------
#pragma hdrstop
//---------------------------------------------------------------------------
#include "ZXJupiterAcePalette.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
//---------------------------------------------------------------------------
using namespace Scorpio;
//using namespace Imaging;
using namespace JupiterAcePalette;
//---------------------------------------------------------------------------
const   String  g_sPaletteName = "Jupiter Ace (Chunky)";
//---------------------------------------------------------------------------
unsigned char g_cPixelMasks[8] =
{
    0x80,
    0x40,
    0x20,
    0x10,
    0x08,
    0x04,
    0x02,
    0x01
};
//---------------------------------------------------------------------------
__fastcall ZXJupiterAcePalette::ZXJupiterAcePalette()
: ZXPalette(2, 64, 48)
{
    PalSignature(m_sSignature);
    Initialize();
}
//---------------------------------------------------------------------------
void __fastcall ZXJupiterAcePalette::Initialize(void)
{
    m_PixelFormat               = pf32bit;
    // initialize our palette information
    m_iBitsPerPixel             = 4;
    m_iBitsPerAttribute         = 4;
    m_iPixelsWidePerAttribute   = 4;
    m_iPixelsHighPerAttribute   = 4;
    m_fPixelsPerByte            = 2.f;
    m_bSupportsPixelsOnly       = true;
    // normally we would initialize the color table
    SetColor(0, clBlack);
    SetColor(1, clWhite);
}
//---------------------------------------------------------------------------
void __fastcall ZXJupiterAcePalette::Write(int X, int Y, bool bSet, ZXImage& Image)
{
    // dirty the character block
    int dX = (X >> 3) << 3;
    int dY = (Y >> 3) << 3;
    TRect Rect(dX, dY, dX + 8, dY + 8);
    Image.AddRect(Rect);
    // write the pixel to the image
    SetPixel(X, Y, bSet, Image);
}
//---------------------------------------------------------------------------
void __fastcall ZXJupiterAcePalette::Draw(ZXImage& Image, Graphics::TBitmap* Bitmap)
{
    //PERFORMANCE_PUSH
    // loop through the character block and set all the ink and paper values
    Bitmap->PixelFormat = pf32bit;
    int iCols = CalculateStride(Image.Width);
    TRect UpdateRect;
    int iRects = Image.Rects();
    for (int rect = 0; rect < iRects; ++rect)
    {
        Image.GetRect(rect, UpdateRect);
        for (int y = UpdateRect.Top; y < UpdateRect.Bottom; ++y)
        {
            for (int x = UpdateRect.Left; x < UpdateRect.Right; x += 8)
            {
                int iCX = x >> 3;
                unsigned char Pixels = Image.Pixels[(y * iCols) + iCX];
                Bitmap->Canvas->Pixels[x+0][y] = (Pixels & g_cPixelMasks[0]) ? clWhite : clBlack;
                Bitmap->Canvas->Pixels[x+1][y] = (Pixels & g_cPixelMasks[1]) ? clWhite : clBlack;
                Bitmap->Canvas->Pixels[x+2][y] = (Pixels & g_cPixelMasks[2]) ? clWhite : clBlack;
                Bitmap->Canvas->Pixels[x+3][y] = (Pixels & g_cPixelMasks[3]) ? clWhite : clBlack;
                Bitmap->Canvas->Pixels[x+4][y] = (Pixels & g_cPixelMasks[4]) ? clWhite : clBlack;
                Bitmap->Canvas->Pixels[x+5][y] = (Pixels & g_cPixelMasks[5]) ? clWhite : clBlack;
                Bitmap->Canvas->Pixels[x+6][y] = (Pixels & g_cPixelMasks[6]) ? clWhite : clBlack;
                Bitmap->Canvas->Pixels[x+7][y] = (Pixels & g_cPixelMasks[7]) ? clWhite : clBlack;
            }
        }
    }
    //PERFORMANCE_POP(__FUNC__);
}
//---------------------------------------------------------------------------
void __fastcall ZXJupiterAcePalette::SetPixel(int iX, int iY, bool bSet, ZXImage& Image)
{
    //PERFORMANCE_PUSH
    if (0 <= iX && iX < Image.Width && 0 <= iY && iY < Image.Height)
    {
        int x = iX & 0xFFFFFFFC;
        int y = iY & 0xFFFFFFFC;
        for (int i = 0; i < 4; ++i)
        {
            DoSetPixel(x + 0, y + i, bSet, Image);
            DoSetPixel(x + 1, y + i, bSet, Image);
            DoSetPixel(x + 2, y + i, bSet, Image);
            DoSetPixel(x + 3, y + i, bSet, Image);
        }
    }
    //PERFORMANCE_POP(__FUNC__)
}
//---------------------------------------------------------------------------
void __fastcall ZXJupiterAcePalette::DoSetPixel(int iX, int iY, bool bSet, ZXImage& Image)
{
    //PERFORMANCE_PUSH
    if (0 <= iX && iX < Image.Width && 0 <= iY && iY < Image.Height)
    {
        int iCols = CalculateStride(Image.Width);
        int iCX   = iX >> 3;
        // assign any transparent attributes
        unsigned int PixelOffset = ( iY * iCols) + iCX;
        // set the appropreiate pixels and attribute
        unsigned char cPixelBit   = 128 >> (iX % 8);
        // set or reset the pixel
        Image.Pixels[PixelOffset] = bSet ? (Image.Pixels[PixelOffset] | cPixelBit) : (Image.Pixels[PixelOffset] & ~cPixelBit);
    }
    //PERFORMANCE_POP(__FUNC__)
}
//---------------------------------------------------------------------------
String __fastcall ZXJupiterAcePalette::GetName(void)
{
    return g_sPaletteName;
}
//---------------------------------------------------------------------------
bool __fastcall ZXJupiterAcePalette::Convert(ZXImage* Image, Graphics::TBitmap* Bitmap)
{
    bool bConverted = false;
    if (true == SAFE_PTR(Bitmap))
    {
        TRect Rect(0, 0, Image->Width, Image->Height);
        int iXS = 0;
        int iXE = Image->Width;
        int iYS = 0;
        int iYE = Image->Height;

        for (int cy = iYS; cy < iYE; cy++)
        {
            // loop through all the columns
            for (int cx = iXS; cx < iXE; cx++)
            {
                // set pixels according to the most common pair of colors
                SetPixel(cx, cy, Bitmap->Canvas->Pixels[cx][cy] != clBlack, *Image);
            }
        }
        bConverted = true;
    }
    return bConverted;
}
//---------------------------------------------------------------------------

