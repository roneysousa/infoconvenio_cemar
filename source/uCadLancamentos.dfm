object frmLancamentos: TfrmLancamentos
  Left = 78
  Top = 68
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amentos'
  ClientHeight = 480
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 439
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 59
      Height = 13
      Caption = 'Data Fatura:'
      FocusControl = edtDTFATU
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 57
      Width = 55
      Height = 13
      Caption = 'Passageiro:'
      FocusControl = dbeNMPASS
      Transparent = True
    end
    object Label4: TLabel
      Left = 16
      Top = 97
      Width = 64
      Height = 13
      Caption = 'N'#186'. Matricula:'
      FocusControl = DBEdit4
      Transparent = True
    end
    object Label5: TLabel
      Left = 453
      Top = 97
      Width = 26
      Height = 13
      Caption = 'Nota:'
      FocusControl = dbeNRNOTA
      Transparent = True
    end
    object Label7: TLabel
      Left = 16
      Top = 137
      Width = 78
      Height = 13
      Caption = 'Nome do '#211'rg'#227'o:'
      FocusControl = DBEdit7
      Transparent = True
    end
    object Label8: TLabel
      Left = 16
      Top = 177
      Width = 21
      Height = 13
      Caption = 'U.A.'
      FocusControl = DBEdit8
      Transparent = True
    end
    object Label9: TLabel
      Left = 16
      Top = 217
      Width = 74
      Height = 13
      Caption = 'Local de sa'#237'da:'
      FocusControl = DBEdit9
      Transparent = True
    end
    object Label10: TLabel
      Left = 416
      Top = 217
      Width = 99
      Height = 13
      Caption = 'Data/Hora de sa'#237'da:'
      Transparent = True
    end
    object Label12: TLabel
      Left = 16
      Top = 257
      Width = 89
      Height = 13
      Caption = 'Local de chegada:'
      FocusControl = DBEdit12
      Transparent = True
    end
    object Label13: TLabel
      Left = 416
      Top = 257
      Width = 114
      Height = 13
      Caption = 'Data/Hora de chegada:'
      Transparent = True
    end
    object Label15: TLabel
      Left = 16
      Top = 297
      Width = 48
      Height = 13
      Caption = 'KM inicial:'
      FocusControl = dbeKMINIC
      Transparent = True
    end
    object Label16: TLabel
      Left = 156
      Top = 297
      Width = 41
      Height = 13
      Caption = 'KM final:'
      FocusControl = dbeKMFINA
      Transparent = True
    end
    object Label17: TLabel
      Left = 16
      Top = 337
      Width = 43
      Height = 13
      Caption = 'Unidade:'
      FocusControl = dbeUNIDADE
      Transparent = True
    end
    object Label18: TLabel
      Left = 16
      Top = 377
      Width = 45
      Height = 13
      Caption = 'Bandeira:'
      FocusControl = dbeBANDEIRA
      Transparent = True
    end
    object Label19: TLabel
      Left = 76
      Top = 377
      Width = 27
      Height = 13
      Caption = 'Valor:'
      FocusControl = dbeValor
      Transparent = True
    end
    object txtTotalKM: TDBText
      Left = 304
      Top = 315
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'NO2_TOTKM'
      DataSource = dsNotas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object lbl_KMrodado: TLabel
      Left = 313
      Top = 298
      Width = 55
      Height = 13
      Caption = 'KM rodado:'
      FocusControl = dbeKMFINA
      Transparent = True
      Visible = False
    end
    object dbeNMPASS: TDBEdit
      Left = 16
      Top = 73
      Width = 571
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NO2_NMPASS'
      DataSource = dsNotas
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 113
      Width = 199
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NO2_NRMATR'
      DataSource = dsNotas
      TabOrder = 2
    end
    object dbeNRNOTA: TDBEdit
      Left = 453
      Top = 113
      Width = 134
      Height = 21
      DataField = 'NO2_NRNOTA'
      DataSource = dsNotas
      MaxLength = 8
      TabOrder = 3
      OnExit = dbeNRNOTAExit
      OnKeyPress = dbeNRNOTAKeyPress
    end
    object DBEdit7: TDBEdit
      Left = 16
      Top = 153
      Width = 571
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NO2_NMORGA'
      DataSource = dsNotas
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 16
      Top = 193
      Width = 199
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NO2_UA'
      DataSource = dsNotas
      TabOrder = 5
    end
    object DBEdit9: TDBEdit
      Left = 16
      Top = 233
      Width = 394
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NO2_NMSAID'
      DataSource = dsNotas
      TabOrder = 6
    end
    object dbeHOSAID: TDBEdit
      Left = 529
      Top = 233
      Width = 56
      Height = 21
      DataField = 'NO2_HOSAID'
      DataSource = dsNotas
      TabOrder = 8
      OnExit = dbeHOSAIDExit
    end
    object DBEdit12: TDBEdit
      Left = 16
      Top = 273
      Width = 394
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NO2_NMCHEG'
      DataSource = dsNotas
      TabOrder = 9
    end
    object dbeHOCHEG: TDBEdit
      Left = 528
      Top = 273
      Width = 56
      Height = 21
      DataField = 'NO2_HOCHEG'
      DataSource = dsNotas
      TabOrder = 11
      OnExit = dbeHOCHEGExit
    end
    object dbeKMINIC: TDBEdit
      Left = 16
      Top = 313
      Width = 134
      Height = 21
      DataField = 'NO2_KMINIC'
      DataSource = dsNotas
      TabOrder = 12
    end
    object dbeKMFINA: TDBEdit
      Left = 156
      Top = 313
      Width = 134
      Height = 21
      DataField = 'NO2_KMFINA'
      DataSource = dsNotas
      TabOrder = 13
      OnChange = dbeKMFINAChange
      OnExit = dbeKMFINAExit
    end
    object dbeUNIDADE: TDBEdit
      Left = 16
      Top = 353
      Width = 43
      Height = 21
      DataField = 'NO2_NRUNID'
      DataSource = dsNotas
      TabOrder = 14
      OnKeyPress = dbeUNIDADEKeyPress
    end
    object dbeBANDEIRA: TDBEdit
      Left = 16
      Top = 393
      Width = 57
      Height = 21
      DataField = 'NO2_FLBAND'
      DataSource = dsNotas
      MaxLength = 1
      TabOrder = 15
      OnExit = dbeBANDEIRAExit
      OnKeyPress = dbeBANDEIRAKeyPress
    end
    object dbeValor: TDBEdit
      Left = 76
      Top = 393
      Width = 134
      Height = 21
      DataField = 'NO2_VLNOTA'
      DataSource = dsNotas
      TabOrder = 16
    end
    object edtDTFATU: TDateEdit
      Left = 16
      Top = 32
      Width = 109
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnExit = edtDTFATUExit
    end
    object dbeDTSAID: TDateEdit
      Left = 416
      Top = 233
      Width = 109
      Height = 21
      NumGlyphs = 2
      TabOrder = 7
      OnExit = dbeDTSAIDExit
    end
    object edtDTCHEG: TDateEdit
      Left = 416
      Top = 273
      Width = 109
      Height = 21
      NumGlyphs = 2
      TabOrder = 10
      OnExit = edtDTCHEGExit
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 439
    Width = 636
    Height = 41
    Align = alBottom
    BevelInner = bvSpace
    BevelOuter = bvSpace
    Color = clNavy
    TabOrder = 1
    object btGravar: TBitBtn
      Left = 432
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = btGravarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000220B0000220B00000001000000010000942929009431
        31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
        4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
        5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
        73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
        8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
        A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
        BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
        CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
        E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
        33343433332505050B4848191516111B27384647452D0002131048191515111A
        05184046492E0102121048191515111C03032F42493200011210481915151120
        0601243A493200011210481915151221231D1F27322C04041310481915151515
        1515151313151515160F48190D111E282B292B2828292B26150C481909384544
        4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
        3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
        4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
        4343434343434630130F4848092D3A363636363636363A2A0748}
    end
    object btCancelar: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btCancelarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000D30E0000D30E00000001000000010000AD4A0000B54A
        0000B5520000BD520000BD5A0000C65A0000C6630000CE630000CE6B0000D673
        0000DE730000DE7B0000E77B0000E7840000F7940000CE6B0800FF9C0800A542
        1000AD4A1000B5521000C6631000B55A2100CE732100B55A3100BD633100FFAD
        3100CE7B3900BD6B4200C6734200CE844200CE844A00BD735200BD7B5200C67B
        5200C6845A00C6846300FFBD6300C68C7300CE947B00CE9C8400FF00FF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00282828282828
        2828281F05002828282828282828282828282817050713282828282828282828
        2828282817060715282828282828282828282828281507062328280004040404
        040404232828000701282802090807070707061B28282706062328040B090711
        2727272828282800071328060D070A07232828282828281C070128070E13020B
        082028282828281C0701280F101D28020D0818282828280107132816191E2828
        140D0C03212513060623281A2421282828150C0D0B0908061228282622282828
        282827140808041B282828282828282828282828282828282828282828282828
        2828282828282828282828282828282828282828282828282828}
    end
  end
  object dsNotas: TDataSource
    DataSet = DM.tbNotas
    Left = 256
    Top = 176
  end
end
