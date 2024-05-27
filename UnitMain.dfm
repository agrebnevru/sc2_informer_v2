object FormMain: TFormMain
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SC2TV Informer v2'
  ClientHeight = 227
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000040040000000000000000000000000000000000000000
    00000000000000000000000000050000001C010A044A06260F840A3613A10B37
    11A509290B8E030F035A000000260000000A0000000000000000000000000000
    0000000000000000000F081209570C5527C613843CFC16903FFF18943DFF1B91
    36FF1C882CFF1D7B1FFE175710DB0A1B07760000001900000001000000000000
    0000000000093E474179479C6AF9129B52FF14AC5BFF16B65EFF19B95AFF1CB4
    50FF1FAA42FF219B31FF218820FF46893CFE606C5CA800000015000000000000
    00000A0908266AA785F73DB37CFF10B66DFF12C877FF14D279FF17D373FF1BCD
    66FF1FC255FF22B142FF239D2EFF2B8A23FF7CA86FFF2B2E2461000000010000
    00000C140E353DA072FF15AF73FF0DC783FF0DD98FFF10E190FF13DF85FF17D5
    74FF1CCE63FF20BC4DFF23A737FF289127FF358126FF2C382277000000010000
    0000010704134EA683F33CBD92FF1BCD99FF0CDB9FFF20CEA6FF4EB9C2FF5FAF
    CDFF2AB679FF20BB53FF2EAA47FF47A04BFF69A161FF10200B48000000000000
    000000000003334F4484B3C2BBFF3C8B78FF5CC7D6FF95C5FEFF92C3FFFF8CBF
    FFFF7AB6EDFF3AAD6CFF58B16CFF84B988FF4C6B499D02060203000000000000
    00000101000357534EA82D2C2BFF253F55FF117AC0FF2B88C4FF98BCE6FFA4CD
    FFFF9CC9FFFF7AB5C9FF6B9E77DF344B3565060C060200000000000000000000
    0000000000000101013D4D6178E74E687FFF85CEF3FF76D2FDFF345267FF1971
    B0FF167EBEFF5580A7F40D0D0D630202021A0000000000000000000000000000
    000000000000000000180E1013B40A0B0BFF151D21FF51616AFFB9BFC6FF74B6
    DCFF87DAFFFF285C78FF6A6968FF4B4A496B0000000000000000000000000000
    0000000000000000001F272727F8252525FF0A0A0AFF161616FF949596FFDCDF
    E1FFACC0C9FF404954FF4B4845FF373432650000000000000000000000000000
    0000000000000000001D4E4E4EED575757FF272727FF0C0C0CFF2D2E2EFFC7CE
    D8FF636971FF232323E90E0D0C591817150B0000000000000000000000000000
    000000000000040404273C3C3CDA9E9E9EFF5B5B5BFF2C2C2CFF111111FF2727
    27FF424242FF2020209E00000002000000000000000000000000000000000000
    000000000000000000000A0A0A44727272F29D9D9DFF616161FF313131FF5252
    52FF676767ED0303032500000000000000000000000000000000000000000000
    00000000000000000000000000000C0C0C2726262681434343BF242424811F1F
    1F66080808200000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000001212120306060601000000000000
    000000000000000000000000000000000000000000000000000000000000E007
    0000C0010000800100008000000080000000800100008001000080030000C007
    0000C0070000C0070000C0070000C00F0000E01F0000F03F0000F9FF0000}
  Menu = MM1
  OldCreateOrder = False
  ShowHint = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 525
    Height = 227
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1044#1080#1085#1072#1084#1080#1095#1077#1089#1082#1080#1077' '#1086#1082#1085#1072
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 517
        Height = 199
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Label6: TLabel
          Left = 8
          Top = 70
          Width = 130
          Height = 26
          Caption = #1042#1099' '#1084#1086#1078#1077#1090#1077' '#1076#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1082#1089#1080#1084#1091#1084' 10 '#1086#1082#1086#1085
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object LabelIssetNewVirsion: TLabel
          Left = 8
          Top = 180
          Width = 171
          Height = 13
          Cursor = crHandPoint
          Caption = #1053#1072' '#1089#1072#1081#1090#1077' '#1076#1086#1089#1090#1091#1087#1085#1072' '#1085#1086#1074#1072#1103' '#1074#1077#1088#1089#1080#1103'!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          Visible = False
          OnClick = LabelIssetNewVirsionClick
        end
        object ButtonWindowShow: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100
          Enabled = False
          TabOrder = 0
          OnClick = ButtonWindowShowClick
        end
        object ButtonWindowHide: TButton
          Left = 89
          Top = 8
          Width = 75
          Height = 25
          Caption = #1057#1082#1088#1099#1090#1100
          Enabled = False
          TabOrder = 1
          OnClick = ButtonWindowHideClick
        end
        object ButtonWindowEdit: TButton
          Left = 8
          Top = 39
          Width = 156
          Height = 25
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          Enabled = False
          TabOrder = 2
          OnClick = ButtonWindowEditClick
        end
        object ListBoxForms: TListBox
          Left = 346
          Top = 1
          Width = 170
          Height = 197
          Align = alRight
          ItemHeight = 13
          TabOrder = 3
          OnClick = ListBoxFormsClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'/'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1086#1082#1086#1085
      ImageIndex = 1
      object PanelAddNewWindow: TPanel
        Left = 0
        Top = 33
        Width = 517
        Height = 166
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 8
          Top = 33
          Width = 117
          Height = 13
          Caption = #1055#1091#1090#1100' '#1082' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1102'*:'
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 57
          Width = 231
          Height = 13
          Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1086#1089#1090#1072#1083#1100#1085#1099#1093' '#1087#1086#1083#1077#1081' '#1085#1077#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1086
          Transparent = True
        end
        object Label3: TLabel
          Left = 8
          Top = 76
          Width = 33
          Height = 13
          Caption = #1058#1077#1082#1089#1090':'
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 119
          Width = 84
          Height = 13
          Caption = #1055#1086#1079#1080#1094#1080#1103' '#1090#1077#1082#1089#1090#1072':'
          Transparent = True
        end
        object Label5: TLabel
          Left = 8
          Top = 6
          Width = 56
          Height = 13
          Caption = #1048#1084#1103' '#1086#1082#1085#1072'*:'
          Transparent = True
        end
        object Label13: TLabel
          Left = 8
          Top = 152
          Width = 68
          Height = 13
          Caption = #1062#1074#1077#1090' '#1090#1077#1082#1089#1090#1072':'
          Transparent = True
        end
        object Label7: TLabel
          Left = 328
          Top = 119
          Width = 82
          Height = 13
          Caption = #1056#1072#1079#1084#1077#1088' '#1096#1088#1080#1092#1090#1072':'
        end
        object Label8: TLabel
          Left = 328
          Top = 152
          Width = 40
          Height = 13
          Caption = #1064#1088#1080#1092#1090':'
        end
        object EditImagePath: TEdit
          Left = 125
          Top = 30
          Width = 361
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object ButtonImagePath: TButton
          Left = 492
          Top = 30
          Width = 21
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = ButtonImagePathClick
        end
        object MemoMessage: TMemo
          Left = 125
          Top = 76
          Width = 361
          Height = 37
          TabOrder = 2
        end
        object EditLeft: TEdit
          Left = 125
          Top = 119
          Width = 36
          Height = 21
          NumbersOnly = True
          TabOrder = 3
          Text = '0'
        end
        object EditTop: TEdit
          Left = 192
          Top = 119
          Width = 36
          Height = 21
          NumbersOnly = True
          TabOrder = 4
          Text = '0'
        end
        object UpDownTextPosLeft: TUpDown
          Left = 161
          Top = 119
          Width = 15
          Height = 21
          Associate = EditLeft
          TabOrder = 5
        end
        object UpDownTextPosRight: TUpDown
          Left = 228
          Top = 119
          Width = 15
          Height = 21
          Associate = EditTop
          TabOrder = 6
        end
        object EditWindowName: TEdit
          Left = 125
          Top = 6
          Width = 361
          Height = 21
          TabOrder = 7
        end
        object CCBNewWindow: TColorComboBox
          Left = 125
          Top = 146
          Width = 118
          Height = 20
          TabOrder = 8
        end
        object EditTextSize: TEdit
          Left = 434
          Top = 119
          Width = 36
          Height = 21
          NumbersOnly = True
          TabOrder = 9
          Text = '8'
        end
        object FontComboBox1: TFontComboBox
          Left = 376
          Top = 146
          Width = 110
          Height = 20
          FontName = 'Tahoma'
          TabOrder = 10
        end
        object UpDown1: TUpDown
          Left = 470
          Top = 119
          Width = 16
          Height = 21
          Associate = EditTextSize
          Position = 8
          TabOrder = 11
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 517
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object ButtonStartWindowCreate: TButton
          Left = 8
          Top = 2
          Width = 105
          Height = 25
          Caption = #1053#1072#1095#1072#1090#1100' '#1089#1086#1079#1076#1072#1085#1080#1077
          TabOrder = 0
          OnClick = ButtonStartWindowCreateClick
        end
        object ButtonSaveNewWindow: TButton
          Left = 119
          Top = 2
          Width = 114
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          Enabled = False
          TabOrder = 1
          OnClick = ButtonSaveNewWindowClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 2
      object Label9: TLabel
        Left = 3
        Top = 166
        Width = 149
        Height = 13
        Caption = #1047#1072#1082#1088#1077#1087#1083#1103#1077#1084' '#1079#1072' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077#1084':'
        Visible = False
      end
      object Label10: TLabel
        Left = 158
        Top = 185
        Width = 206
        Height = 11
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1102#1076#1072' '#1080#1084#1103' '#1086#1082#1085#1072', '#1085#1072#1087#1088#1080#1084#1077#1088' "StarCraft 2"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clScrollBar
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentFont = False
        Visible = False
      end
      object Label11: TLabel
        Left = 103
        Top = 9
        Width = 325
        Height = 11
        Caption = 
          #1044#1072#1085#1085#1072#1103' '#1092#1091#1085#1082#1094#1080#1103' '#1087#1086#1079#1074#1086#1083#1103#1077#1090' '#1076#1077#1072#1082#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1100' '#1076#1074#1080#1078#1077#1085#1080#1103' '#1086#1082#1086 +
          #1085
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clScrollBar
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object LabelHowMatchTime: TLabel
        Left = 143
        Top = 39
        Width = 38
        Height = 13
        Caption = '(1 '#1089#1077#1082'.)'
      end
      object EditStackWithWindow: TEdit
        Left = 158
        Top = 163
        Width = 222
        Height = 21
        TabOrder = 0
        Text = 'LanGAME'
        Visible = False
      end
      object CBOnOffStackWithWindow: TCheckBox
        Left = 386
        Top = 165
        Width = 135
        Height = 17
        Caption = #1042#1082#1083'/'#1042#1099#1082#1083' '#1079#1072#1082#1088#1077#1087#1083#1077#1085#1080#1077
        TabOrder = 1
        Visible = False
        OnClick = CBOnOffStackWithWindowClick
      end
      object CBOnOffMove: TCheckBox
        Left = 3
        Top = 3
        Width = 102
        Height = 17
        Caption = #1047#1072#1082#1088#1077#1087#1080#1090#1100' '#1086#1082#1085#1072
        TabOrder = 2
        OnClick = CBOnOffMoveClick
      end
      object CBShowWindow: TCheckBox
        Left = 3
        Top = 38
        Width = 134
        Height = 17
        Caption = #1055#1083#1072#1074#1085#1086#1077' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077
        TabOrder = 3
      end
      object TBTimeShowHide: TTrackBar
        Left = 187
        Top = 26
        Width = 327
        Height = 39
        Max = 5
        Min = 1
        ParentShowHint = False
        Position = 1
        PositionToolTip = ptTop
        ShowHint = True
        ShowSelRange = False
        TabOrder = 4
        TickMarks = tmBoth
        OnChange = TBTimeShowHideChange
      end
    end
  end
  object MM1: TMainMenu
    Left = 496
    Top = 65520
    object N11: TMenuItem
      Caption = #1043#1083#1072#1074#1085#1072#1103
      object N2: TMenuItem
        Caption = '-'
      end
      object N1: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N1Click
      end
    end
    object N21: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      object N3: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N3Click
      end
    end
  end
  object XPM: TXPManifest
    Left = 480
    Top = 65520
  end
  object TI1: TTrayIcon
    Hint = 'SC2TV Informer v2'
    Icon.Data = {
      0000010001001010000001002000680400001600000028000000100000002000
      0000010020000000000040040000000000000000000000000000000000000000
      00000000000000000000000000050000001C010A044A06260F840A3613A10B37
      11A509290B8E030F035A000000260000000A0000000000000000000000000000
      0000000000000000000F081209570C5527C613843CFC16903FFF18943DFF1B91
      36FF1C882CFF1D7B1FFE175710DB0A1B07760000001900000001000000000000
      0000000000093E474179479C6AF9129B52FF14AC5BFF16B65EFF19B95AFF1CB4
      50FF1FAA42FF219B31FF218820FF46893CFE606C5CA800000015000000000000
      00000A0908266AA785F73DB37CFF10B66DFF12C877FF14D279FF17D373FF1BCD
      66FF1FC255FF22B142FF239D2EFF2B8A23FF7CA86FFF2B2E2461000000010000
      00000C140E353DA072FF15AF73FF0DC783FF0DD98FFF10E190FF13DF85FF17D5
      74FF1CCE63FF20BC4DFF23A737FF289127FF358126FF2C382277000000010000
      0000010704134EA683F33CBD92FF1BCD99FF0CDB9FFF20CEA6FF4EB9C2FF5FAF
      CDFF2AB679FF20BB53FF2EAA47FF47A04BFF69A161FF10200B48000000000000
      000000000003334F4484B3C2BBFF3C8B78FF5CC7D6FF95C5FEFF92C3FFFF8CBF
      FFFF7AB6EDFF3AAD6CFF58B16CFF84B988FF4C6B499D02060203000000000000
      00000101000357534EA82D2C2BFF253F55FF117AC0FF2B88C4FF98BCE6FFA4CD
      FFFF9CC9FFFF7AB5C9FF6B9E77DF344B3565060C060200000000000000000000
      0000000000000101013D4D6178E74E687FFF85CEF3FF76D2FDFF345267FF1971
      B0FF167EBEFF5580A7F40D0D0D630202021A0000000000000000000000000000
      000000000000000000180E1013B40A0B0BFF151D21FF51616AFFB9BFC6FF74B6
      DCFF87DAFFFF285C78FF6A6968FF4B4A496B0000000000000000000000000000
      0000000000000000001F272727F8252525FF0A0A0AFF161616FF949596FFDCDF
      E1FFACC0C9FF404954FF4B4845FF373432650000000000000000000000000000
      0000000000000000001D4E4E4EED575757FF272727FF0C0C0CFF2D2E2EFFC7CE
      D8FF636971FF232323E90E0D0C591817150B0000000000000000000000000000
      000000000000040404273C3C3CDA9E9E9EFF5B5B5BFF2C2C2CFF111111FF2727
      27FF424242FF2020209E00000002000000000000000000000000000000000000
      000000000000000000000A0A0A44727272F29D9D9DFF616161FF313131FF5252
      52FF676767ED0303032500000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C2726262681434343BF242424811F1F
      1F66080808200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001212120306060601000000000000
      000000000000000000000000000000000000000000000000000000000000E007
      0000C0010000800100008000000080000000800100008001000080030000C007
      0000C0070000C0070000C0070000C00F0000E01F0000F03F0000F9FF0000}
    PopupMenu = PMTray
    Visible = True
    OnDblClick = TI1DblClick
    Left = 448
    Top = 65520
  end
  object PMTray: TPopupMenu
    Left = 424
    Top = 65520
    object N4: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100'/'#1057#1082#1088#1099#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1082#1080
      OnClick = N4Click
    end
    object N7: TMenuItem
      Caption = #1047#1072#1082#1088#1077#1087#1080#1090#1100' '#1086#1082#1085#1072
      OnClick = N7Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N6Click
    end
  end
  object OD1: TOpenDialog
    Filter = 
      'All (*.gif;*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.ico;*.e' +
      'mf;*.wmf)|*.gif;*.gif;*.png;*.jpg;*.jpeg;*.bmp;|GIF Image (*.gif' +
      ')|*.gif|Portable Network Graphics (*.png)|*.png|JPEG Image File ' +
      '(*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.' +
      'bmp'
    Left = 464
    Top = 65520
  end
  object HTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 392
    Top = 65520
  end
  object Timer: TTimer
    Interval = 5000
    OnTimer = TimerTimer
    Left = 408
    Top = 65520
  end
end
