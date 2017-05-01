object frmSamMode4Palette: TfrmSamMode4Palette
  Left = 281
  Top = 777
  Width = 374
  Height = 137
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object panSamPalette: TPanel
    Tag = -1
    Left = 0
    Top = 15
    Width = 358
    Height = 86
    Align = alBottom
    BevelOuter = bvNone
    Constraints.MaxHeight = 86
    Constraints.MinHeight = 86
    TabOrder = 0
    DesignSize = (
      358
      86)
    object lblSamPalette: TLabel
      Left = 96
      Top = 12
      Width = 151
      Height = 13
      Caption = 'Mode 4 (16 Colour Palette)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblColours0to7: TLabel
      Left = 8
      Top = 36
      Width = 61
      Height = 13
      Cursor = crHandPoint
      Hint = 'Click to change the colour of the current pen'
      Caption = 'Colours 0 - 7'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = lblColours0to7Click
    end
    object lblColours8to15: TLabel
      Tag = 1
      Left = 8
      Top = 64
      Width = 67
      Height = 13
      Cursor = crHandPoint
      Hint = 'Click to change the colour of the current pen'
      Caption = 'Colours 8 - 15'
      Font.Charset = ANSI_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = lblColours0to7Click
    end
    object lblResetPalette: TLabel
      Left = 276
      Top = 12
      Width = 77
      Height = 13
      Cursor = crHandPoint
      Hint = 'Click to reset the palette back to the system default'
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Reset Palette'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = lblResetPaletteClick
    end
    object imgLogo: TImage
      Left = 0
      Top = 4
      Width = 86
      Height = 30
      AutoSize = True
      Picture.Data = {
        07544269746D6170AE1E0000424DAE1E00000000000036000000280000005600
        00001E0000000100180000000000781E0000120B0000120B0000000000000000
        0000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEC19B8DD5BCB3FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFE0000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEEDE1DBC19B8DFDFFFED5BCB3C19B8DC19B8DC19B8DA3
        685DC19B8DA3685DC19B8DA3685DD5BCB3FDFFFED5BCB3A3685DD5BCB3C19B8D
        A3685DEDE1DBC19B8DEDE1DBC19B8DC19B8D83362AD5BCB3EDE1DBC19B8DC19B
        8DEDE1DBC19B8DEDE1DBC19B8DFDFFFEEDE1DBD5BCB3EDE1DBA3685DC19B8DED
        E1DBA3685DC19B8DC19B8DEDE1DBC19B8DC19B8DD5BCB3EDE1DBC19B8DEDE1DB
        A3685DD5BCB3D5BCB3A3685DD5BCB3C19B8DA3685DFDFFFEC19B8DA3685DD5BC
        B3EDE1DBC19B8DFDFFFEA3685D83362AC19B8DC19B8DD5BCB3A3685DEDE1DBFD
        FFFEFDFFFEFDFFFE0000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFED5BCB383362AD5BCB3A3685DA3685D83362A
        83362AA3685D83362A83362AC19B8DA3685D83362AEDE1DB77020183362AA368
        5D83362A770201A3685D83362AC19B8D83362AA3685D83362A83362AA3685D83
        362A770201A3685DA3685DA3685D770201EDE1DBEDE1DB83362AEDE1DB83362A
        C19B8DA3685D83362AA3685D83362AD5BCB383362A83362AA3685D83362A8336
        2AA3685D77020183362A83362A83362AA3685D77020183362AA3685D83362A83
        362AC19B8DD5BCB383362AFDFFFEC19B8D83362A83362A83362A83362AA3685D
        EDE1DBFDFFFEFDFFFEFDFFFE0000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB770201770201770201A368
        5D83362A83362AEDE1DBA3685D83362AC19B8DA3685DA3685DC19B8DA3685DC1
        9B8D83362AA3685DD5BCB383362A77020183362AA3685DA3685DD5BCB3A3685D
        770201C19B8DC19B8D77020183362A770201770201EDE1DBD5BCB383362AEDE1
        DB770201A3685D83362AD5BCB3FDFFFE83362A83362A77020183362A83362A77
        020177020183362AD5BCB383362A83362AC19B8DC19B8DA3685DC19B8D770201
        A3685DC19B8DC19B8DC19B8D83362AFDFFFEA3685DA3685D83362A83362A8336
        2AA3685DFDFFFEFDFFFEFDFFFEFDFFFE0000FDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB770201A3685D77
        0201A3685D83362A83362AEDE1DBA3685D83362AC19B8D83362AC19B8DEDE1DB
        83362AC19B8DC19B8D83362A83362A83362A83362AA3685D83362AA3685DA368
        5D83362AA3685D83362A83362A83362A770201A3685D83362AEDE1DBC19B8D83
        362AC19B8D83362AC19B8D83362AA3685DC19B8D83362AA3685D83362A83362A
        770201A3685D83362A83362A83362A83362A83362AC19B8DD5BCB383362A8336
        2A83362A83362AC19B8DD5BCB3A3685D770201D5BCB3D5BCB383362AC19B8D83
        362AC19B8DA3685DEDE1DBFDFFFEFDFFFEFDFFFE0000FDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DBC19B8D
        EDE1DBC19B8DC19B8DC19B8DA3685DEDE1DBD5BCB383362AC19B8DA3685DC19B
        8DFDFFFEC19B8D83362AD5BCB3C19B8D83362AD5BCB3A3685DA3685DC19B8DC1
        9B8D83362AC19B8DEDE1DBA3685DA3685DD5BCB3A3685DEDE1DBC19B8DD5BCB3
        A3685D83362AA3685DA3685DA3685DD5BCB383362AA3685DC19B8DEDE1DBC19B
        8DA3685DC19B8DEDE1DBC19B8DD5BCB383362AC19B8DC19B8DD5BCB3FDFFFEA3
        685DA3685DEDE1DBC19B8D83362AC19B8DC19B8DC19B8DC19B8DFDFFFEFDFFFE
        FDFFFEC19B8DEDE1DBFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE0000FDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE0000FDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFED5BCB3D5BCB3FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB
        D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3EDE1DBFDFFFEFDFFFEFDFF
        FEEDE1DBD5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3EDE1DBFDFFFE34
        33CFD5BCB3EDE1DBEDE1DBD5BCB3D5BCB3D5BCB3D5BCB3D5BCB3EDE1DBFDFFFE
        FDFFFEFDFFFEFDFFFE3433CFD5BCB3EDE1DBEDE1DBD5BCB3D5BCB3D5BCB3D5BC
        B3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3EDE1DBEDE1DBD5BCB3D5BCB3ED
        E1DBD5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3EDE1DB
        0000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEC19B8DC19B8DC19B8D770201C19B8DFDFFFEFDFFFEFDFFFEFDFF
        FED5BCB3770201770201770201770201770201770201770201D5BCB3FDFFFEFD
        FFFEFDFFFEFDFFFE83362A770201770201770201770201770201770201C19B8D
        3433CF3433CF3433CF3433CF83362A77020177020177020183362AC19B8DEDE1
        DBFDFFFEFDFFFEFDFFFE3433CF3433CF3433CF3433CFEDE1DBC19B8D77020177
        0201770201770201770201770201770201770201770201A3685D3433CF3433CF
        3433CFC19B8D83362A7702017702017702017702017702017702017702017702
        01D5BCB30000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEEDE1DB770201770201D5BCB383362A83362AEDE1DBFDFFFEFD
        FFFEFDFFFEFDFFFEA3685D770201770201770201770201770201770201C19B8D
        FDFFFEFDFFFEFDFFFEFDFFFED5BCB37702017702017702017702017702017702
        01A3685D3433CF3433CF3433CF3433CF83362A770201770201A3685DEDE1DBFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFE3433CF3433CF3433CF3433CFFDFFFEFDFFFE
        EDE1DB83362A770201770201770201770201770201770201770201A3685D3433
        CF3433CF3433CF3433CF83362A77020177020177020177020177020177020177
        0201770201D5BCB30000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEA3685D770201770201A3685DD5BCB3770201A3685D
        FDFFFEFDFFFEFDFFFEFDFFFEEDE1DB83362A7702017702017702017702017702
        01C19B8DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEA3685D77020177020177020177
        0201770201A3685DEDE1DB3433CF3433CFD5BCB383362A770201C19B8DFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFED5BCB33433CF3433CFD5BCB3FDFF
        FEFDFFFEFDFFFEFDFFFEA3685D770201770201770201770201770201770201A3
        685DD5BCB33433CF3433CFD5BCB383362A770201770201770201770201770201
        770201770201770201D5BCB30000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFED5BCB3770201770201770201770201D5BCB3A368
        5D770201D5BCB3FDFFFEFDFFFEFDFFFEFDFFFEC19B8D77020177020177020177
        0201770201D5BCB3FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB83362A770201
        770201770201770201A3685DFDFFFEFDFFFEFDFFFEEDE1DB770201A3685DFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEA3685D770201770201770201770201
        770201A3685DFDFFFEFDFFFEFDFFFEEDE1DB83362A7702017702017702017702
        01770201770201770201770201D5BCB30000FDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE83362A77020177020177020177020183
        362AD5BCB377020183362AFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE83362A770201
        770201770201770201C19B8DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEC19B
        8D770201770201770201770201A3685DFDFFFEFDFFFEFDFFFEEDE1DBA3685DFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DBA3685D83362A83362A83362A
        C19B8DEDE1DBFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB83362A7702017702
        01770201770201A3685DFDFFFEFDFFFEFDFFFEEDE1DB83362A77020177020177
        0201770201770201770201770201770201D5BCB30000FDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEC19B8D770201770201770201770201
        770201770201C19B8DC19B8D770201C19B8DFDFFFEFDFFFEFDFFFEFDFFFED5BC
        B3770201770201770201770201D5BCB3FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFE83362A770201770201770201A3685DFDFFFEFDFFFEFDFFFEEDE1DB
        EDE1DBFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEC19B8D7702017702017702017702
        01770201770201770201C19B8DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEC19B8D77
        0201770201770201770201A3685DFDFFFEFDFFFEFDFFFEEDE1DB83362A770201
        770201770201770201770201770201770201770201D5BCB30000FDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB83362A7702017702017702
        01770201770201770201770201D5BCB383362A770201EDE1DBFDFFFEFDFFFEFD
        FFFEFDFFFEA3685D770201770201770201C19B8DFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFED5BCB3770201770201770201A3685DFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEA3685D77020177020177020177
        0201770201770201770201770201770201C19B8DFDFFFEFDFFFEFDFFFEFDFFFE
        EDE1DB83362A770201770201770201A3685DFDFFFEFDFFFEFDFFFEEDE1DB8336
        2A770201770201770201770201770201770201770201770201D5BCB30000FDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEC19B8D77020177020177
        0201770201770201770201770201770201A3685DD5BCB3770201A3685DFDFFFE
        FDFFFEFDFFFEFDFFFEEDE1DB83362A770201770201D5BCB3FDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEA3685D770201770201A3685DFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFED5BCB3770201770201770201
        770201770201C19B8DC19B8DC19B8DC19B8DC19B8DD5BCB3FDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEA3685D770201770201770201A3685DFDFFFEFDFFFEFDFFFEED
        E1DB83362A770201770201770201770201770201770201770201770201D5BCB3
        0000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFED5BCB3770201770201
        770201770201770201770201770201770201770201770201C19B8DA3685D7702
        01D5BCB3FDFFFEFDFFFEFDFFFEFDFFFEC19B8D770201770201C19B8DFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB83362A770201A3685D
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEA3685D7702017702
        01770201770201770201FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFED5BCB3770201770201770201A3685DFDFFFEFDFFFE
        FDFFFEEDE1DB83362A7702017702017702017702017702017702017702017702
        01D5BCB30000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEA3685D7702
        0177020177020177020177020177020177020177020177020177020183362AD5
        BCB383362A83362AEDE1DBFDFFFEFDFFFEFDFFFEFDFFFEA3685D770201C19B8D
        FDFFFEFDFFFEFDFFFEEDE1DBEDE1DBFDFFFEFDFFFEFDFFFEFDFFFEC19B8D7702
        01A3685DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB83362A77
        0201770201770201770201770201FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFED5BCB3770201770201770201A3685DFDFF
        FEFDFFFEFDFFFEFDFFFE83362A77020177020177020177020177020177020177
        0201770201D5BCB30000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEC19B8D77
        0201770201770201770201770201770201770201770201770201770201770201
        770201A3685DC19B8D770201C19B8DFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB7702
        01D5BCB3FDFFFEFDFFFEFDFFFED5BCB3A3685DFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFE83362AA3685DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB
        770201770201770201770201770201770201D5BCB3D5BCB3EDE1DBD5BCB3EDE1
        DBD5BCB3EDE1DBD5BCB3EDE1DBD5BCB3EDE1DBC19B8D770201770201770201A3
        685DFDFFFEFDFFFEFDFFFEEDE1DB83362A770201770201770201770201770201
        770201770201770201D5BCB30000FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB
        83362A7702017702017702017702017702017702017702017702017702017702
        01770201770201770201D5BCB3A3685D770201EDE1DBFDFFFEFDFFFEFDFFFEFD
        FFFEA3685DC19B8DFDFFFEFDFFFEFDFFFED5BCB3770201C19B8DFDFFFEFDFFFE
        FDFFFEFDFFFED5BCB3A3685DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEEDE1DB77020177020177020177020177020177020177020177020177020177
        0201770201770201770201770201770201770201770201770201770201770201
        770201A3685DFDFFFEFDFFFEFDFFFEEDE1DB83362A7702017702017702017702
        01770201770201770201770201D5BCB30000FDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEA3685D77020177020177020177020177020177020177020177020177020177
        020177020177020177020177020183362AD5BCB3770201A3685DFDFFFEFDFFFE
        FDFFFEFDFFFEEDE1DBEDE1DBFDFFFEFDFFFEFDFFFED5BCB377020183362AEDE1
        DBFDFFFEFDFFFEFDFFFEFDFFFEEDE1DBFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEA3685D770201770201770201770201770201770201770201
        7702017702017702017702017702017702017702017702017702017702017702
        01770201770201A3685DFDFFFEFDFFFEFDFFFEFDFFFE83362A77020177020177
        0201770201770201770201770201770201D5BCB30000FDFFFEFDFFFEFDFFFEFD
        FFFED5BCB3770201770201770201770201770201770201770201770201770201
        770201770201770201770201770201770201770201C19B8DC19B8D770201C19B
        8DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB77020177
        0201A3685DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFED5BCB37702017702017702017702017702017702
        0177020177020177020177020177020183362A83362A83362A83362A83362A77
        020177020177020177020183362AFDFFFEFDFFFEFDFFFEEDE1DB83362A770201
        770201770201770201770201770201770201770201D5BCB30000FDFFFEFDFFFE
        FDFFFEFDFFFE83362A7702017702017702017702017702017702017702017702
        01770201770201770201770201770201770201770201770201770201D5BCB383
        362A83362AEDE1DBFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFED5BCB3
        770201770201770201D5BCB3FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEA3685D77020177020177020177
        0201770201770201770201770201770201A3685DFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFE83362A770201770201770201A3685DFDFFFEFDFFFEFDFFFEFDFFFE8336
        2A770201770201770201770201770201770201770201770201D5BCB30000FDFF
        FEFDFFFEFDFFFEC19B8D77020177020177020177020177020177020177020177
        0201770201770201770201770201770201770201770201770201770201770201
        A3685DD5BCB3770201A3685DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEEDE1DB77020177020177020183362AFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEA3685D770201
        770201770201770201770201770201770201A3685DFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFED5BCB377020177020177020177020183362AFDFFFEFDFFFEFDFFFEED
        E1DB83362A770201770201770201770201770201770201770201770201D5BCB3
        0000FDFFFEFDFFFEEDE1DB83362A770201770201770201770201770201770201
        7702017702017702017702017702017702017702017702017702017702017702
        01770201770201D5BCB3A3685D770201EDE1DBFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEEDE1DB770201770201770201770201C19B8DFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEEDE1DBC19B8DEDE1DBFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FED5BCB3A3685D83362A83362A83362AA3685DD5BCB3FDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFED5BCB3A3685DA3685DA3685DA3685DD5BCB3FDFFFEFDFFFE
        FDFFFEFDFFFEC19B8DA3685DA3685DA3685DA3685DA3685D83362A7702018336
        2AD5BCB30000FDFFFEFDFFFEA3685D7702017702017702017702017702017702
        0177020177020177020177020177020177020177020177020177020177020177
        020177020177020177020183362AD5BCB377020183362AFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFED5BCB377020177020177020177020183362AEDE1DBFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB83362AC19B8DFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DBFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFED5BCB383
        362A770201D5BCB30000FDFFFEEDE1DB77020177020177020177020177020177
        0201770201770201770201770201770201770201770201770201770201770201
        770201770201770201770201770201770201C19B8DC19B8D770201C19B8DFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB770201770201770201770201770201A3
        685DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE83362A770201D5BCB3FDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEEDE1DBEDE1DBFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        D5BCB3770201770201D5BCB30000FDFFFEA3685D770201770201770201770201
        7702017702017702017702017702017702017702017702017702017702017702
        01770201770201770201770201770201770201770201770201D5BCB383362A77
        0201EDE1DBFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB770201770201770201770201
        770201770201D5BCB3FDFFFEFDFFFEFDFFFEFDFFFEFDFFFE83362A7702017702
        01C19B8DFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEC19B8D83362AEDE1DBFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFED5BCB3770201770201D5BCB30000D5BCB37702017702017702017702
        0177020177020177020177020177020177020177020177020177020177020177
        0201770201770201770201770201770201770201770201770201770201A3685D
        D5BCB3770201A3685DFDFFFEFDFFFEFDFFFEFDFFFEEDE1DB7702017702017702
        0177020177020177020183362AFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE83362A77
        020177020177020183362AD5BCB3FDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFED5BCB383362A770201770201EDE1DBFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFED5BCB3770201770201D5BCB30000EDE1DBD5BCB3D5BCB3D5
        BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3
        D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BC
        B3D5BCB3FDFFFED5BCB3D5BCB3FDFFFEFDFFFEFDFFFEFDFFFEFDFFFED5BCB3D5
        BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3FDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3D5BCB3FDFFFEFDFFFEFDFFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDFFFEEDE1DBD5BCB3D5BCB3D5BCB3FDFFFEFDFFFEFD
        FFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFEFDFFFE
        FDFFFEFDFFFEFDFFFEFDFFFEFDFFFED5BCB3D5BCB3FDFFFE0000}
    end
    object panColour0: TPanel
      Left = 80
      Top = 32
      Width = 20
      Height = 20
      Color = clNavy
      TabOrder = 0
      OnClick = panColour0Click
    end
    object panColour8: TPanel
      Tag = 8
      Left = 80
      Top = 60
      Width = 20
      Height = 20
      Color = clTeal
      TabOrder = 1
      OnClick = panColour0Click
    end
    object panColour1: TPanel
      Tag = 1
      Left = 108
      Top = 32
      Width = 20
      Height = 20
      BevelOuter = bvLowered
      Color = clYellow
      TabOrder = 2
      OnClick = panColour0Click
    end
    object panColour9: TPanel
      Tag = 9
      Left = 108
      Top = 60
      Width = 20
      Height = 20
      Color = clOlive
      TabOrder = 3
      OnClick = panColour0Click
    end
    object panColour2: TPanel
      Tag = 2
      Left = 136
      Top = 32
      Width = 20
      Height = 20
      Color = clAqua
      TabOrder = 4
      OnClick = panColour0Click
    end
    object panColour10: TPanel
      Tag = 10
      Left = 136
      Top = 60
      Width = 20
      Height = 20
      Color = 16744576
      TabOrder = 5
      OnClick = panColour0Click
    end
    object panColour3: TPanel
      Tag = 3
      Left = 164
      Top = 32
      Width = 20
      Height = 20
      Color = clRed
      TabOrder = 6
      OnClick = panColour0Click
    end
    object panColour11: TPanel
      Tag = 11
      Left = 164
      Top = 60
      Width = 20
      Height = 20
      Color = 8421631
      TabOrder = 7
      OnClick = panColour0Click
    end
    object panColour4: TPanel
      Tag = 4
      Left = 192
      Top = 32
      Width = 20
      Height = 20
      Color = clWhite
      TabOrder = 8
      OnClick = panColour0Click
    end
    object panColour12: TPanel
      Tag = 12
      Left = 192
      Top = 60
      Width = 20
      Height = 20
      Color = clLime
      TabOrder = 9
      OnClick = panColour0Click
    end
    object panColour5: TPanel
      Tag = 5
      Left = 220
      Top = 32
      Width = 20
      Height = 20
      Color = clBlack
      TabOrder = 10
      OnClick = panColour0Click
    end
    object panColour13: TPanel
      Tag = 13
      Left = 220
      Top = 60
      Width = 20
      Height = 20
      Color = 8454016
      TabOrder = 11
      OnClick = panColour0Click
    end
    object panColour6: TPanel
      Tag = 6
      Left = 248
      Top = 32
      Width = 20
      Height = 20
      Color = clBlue
      TabOrder = 12
      OnClick = panColour0Click
    end
    object panColour14: TPanel
      Tag = 14
      Left = 248
      Top = 60
      Width = 20
      Height = 20
      Color = clNavy
      TabOrder = 13
      OnClick = panColour0Click
    end
    object panColour7: TPanel
      Tag = 7
      Left = 276
      Top = 32
      Width = 20
      Height = 20
      Color = clFuchsia
      TabOrder = 14
      OnClick = panColour0Click
    end
    object panColour15: TPanel
      Tag = 15
      Left = 276
      Top = 60
      Width = 20
      Height = 20
      Color = 8421631
      TabOrder = 15
      OnClick = panColour0Click
    end
  end
end
