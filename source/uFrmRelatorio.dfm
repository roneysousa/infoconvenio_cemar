object frmRelatorio: TfrmRelatorio
  Left = 242
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio'
  ClientHeight = 148
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 107
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Per'#237'odo'
      FocusControl = edtDTINIC
      Transparent = True
    end
    object edtDTINIC: TDateEdit
      Left = 16
      Top = 32
      Width = 109
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnExit = edtDTINICExit
    end
    object edtDTFINA: TDateEdit
      Left = 152
      Top = 32
      Width = 109
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnExit = edtDTFINAExit
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 107
    Width = 340
    Height = 41
    Align = alBottom
    BevelInner = bvSpace
    BevelOuter = bvSpace
    Color = clNavy
    TabOrder = 1
    object btImprimir: TBitBtn
      Left = 169
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = btImprimirClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00DBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDB0000000000000000000000DBDBDBDB00DBDBDBDB
        DBDBDBDBDB00DB00DBDB00000000000000000000000000DB00DB00DBDBDBDBDB
        DBFCFCFCDBDB000000DB00DBDBDBDBDBDB929292DBDB00DB00DB000000000000
        00000000000000DBDB0000DBDBDBDBDBDBDBDBDBDB00DB00DB00DB0000000000
        0000000000DB00DB0000DBDB00FFFFFFFFFFFFFFFF00DB00DB00DBDBDB00FF00
        00000000FF00000000DBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00FF
        0000000000FF00DBDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00
        0000000000000000DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB}
    end
    object btFechar: TBitBtn
      Left = 253
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btFecharClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
        4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
        4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
        41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
        575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
        43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
        6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
        C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
        65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
        6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
        76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
        FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
        4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btExcel: TBitBtn
      Left = 11
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excel...'
      TabOrder = 1
      OnClick = btExcelClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        180000000000000300000000000000000000000000000000000039724B39724B
        39724B326C46326C46326C462B65412B65412B6541255C37255C37255C371D52
        301D52301D5230194C2939724B6BA67B65A07665A0765E9B715E9B7157966A57
        966A48935E48935E48935E3C8C563C8C56348C4E348C4E194C29407A566BA67B
        EBF3EBE8F1E8E6F0E6E4EFE4E2EEE3DFECDFDEEBDEDCEADDDCEADBD9E8D9D8E7
        D8D8E7D8348C4E194C29407A5670AA80EDF5EDEBF3EBEAF1E9E6F0E6E4EFE4E2
        EEE3DFECDFDEEBDEDCEADBDCEADBDAE9DAD8E7D83C8C561D523046805C75AF85
        EFF6EFEDF5EDEBF3EBE9F2E9E8F1E8E4EFE481AA8D2B512F2B512F2B512F2B51
        2FDAE9DA3C8C561D52304C87617BB58AF3F8F354A4592B512F2B512F2B512F2B
        512F1C771D6CB67448935E4A964C255C37DCEADB48935E255C37548E6681BC90
        F4F9F4F1F7F154A45962B27554A4591C771D7BC18548935E4A964C255C3781AA
        8DDCEADD48935E255C3757966A8AB795F6FAF6F5F9F5F3F8F354A45931873481
        BC9048935E4A964C255C37609963609963DFECDF48935E255C375E9B7194C79C
        F9FBFAF6FAF6F5F9F531873494C79C5BAA6454A459326C46036803E6F0E6E2EE
        E3E1EDE157966A2B654165A07694C79CFCFDFBF9FBFA3F93469DD0A76CB6745B
        AA6441874854A459318734036803E6F0E6E4EFE457966A2B65416BA67B9DD0A7
        FCFDFC4A964CAAD6B272BB7B72BB7B48935E56825967B06E54A4593187340368
        03E6F0E65E9B71326C4670AA809DD0A7FEFEFE67B06E63AC6863AC68569A5DF6
        F9F6F3F8F3568259568259568259568259E9F2E95E9B71326C4675AF85AAD6B2
        FEFEFEFDFEFDFDFEFDFCFDFBF9FBFAF8FAF8F6F9F6F4F9F4F1F7F1EFF6EFEDF5
        EDEBF3EB65A07639724B7BB58AAAD6B2FFFFFFFFFFFFFEFFFEFDFEFDFCFDFBF9
        FBFAF8FAF8F6FAF6F4F9F4F1F7F1EFF6EFEDF5ED65A07639724B7BB58AAAD6B2
        AAD6B29DD0A79DD0A794C79C94C79C94C79C8AB79581BC907BB58A75AF8570AA
        8070AA806BA67B39724B81BC907BB58A75AF8570AA806BA67B65A0765E9B7157
        966A548E664C87614C876146805C407A56407A5639724B39724B}
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (21 x 29,7 cm) '
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6000
    PrinterSetup.mmMarginRight = 6000
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\EMPRESA\Convenio\Relatorio\rbNotas.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 192
    Version = '7.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Lines.Strings = (
          'COMPANHIA ENERG'#201'TICA DO MARANH'#195'O - CEMAR'
          'COODERNA'#199#195'O DE SERVI'#199'OS ADMINSTRATIVOS - CSA'
          'CONTROLE MENSAL DE UTILIZA'#199#195'O DO SERVI'#199'O DE R'#193'DIO T'#193'XI')
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 12435
        mmLeft = 78846
        mmTop = 794
        mmWidth = 115888
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        mmHeight = 11906
        mmLeft = 0
        mmTop = 13229
        mmWidth = 277019
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 60590
        mmTop = 12964
        mmWidth = 1323
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 102129
        mmTop = 13229
        mmWidth = 1323
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13229
        mmLeft = 152400
        mmTop = 13229
        mmWidth = 1323
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13494
        mmLeft = 202142
        mmTop = 13494
        mmWidth = 1323
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 13758
        mmLeft = 243682
        mmTop = 13229
        mmWidth = 1323
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 13229
        mmTop = 17727
        mmWidth = 263790
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DADOS USU'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 15875
        mmTop = 14288
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'DADOS DA UNIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 64029
        mmTop = 14288
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'LOCAL DE SA'#205'DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 113771
        mmTop = 14288
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'LOCAL DE CHEGADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 163248
        mmTop = 14288
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'DADOS DO VE'#205'CULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 208227
        mmTop = 14552
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'DADOS UTILIZA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 246857
        mmTop = 14288
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'PASSAGEIRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 14023
        mmTop = 21696
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'MATRIC.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 47361
        mmTop = 21696
        mmWidth = 11769
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = #211'RG'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 66675
        mmTop = 21696
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'UA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 90752
        mmTop = 21696
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label102'
        Caption = 'LOCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 102923
        mmTop = 21696
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 129911
        mmTop = 21696
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'HORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 143669
        mmTop = 21696
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'LOCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 152929
        mmTop = 21696
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 180446
        mmTop = 21696
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'HORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 193940
        mmTop = 21696
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'KM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 211667
        mmTop = 18521
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'INICIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 205317
        mmTop = 21960
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'FINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 217753
        mmTop = 21960
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'KM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 225425
        mmTop = 18521
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'KM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 252678
        mmTop = 18256
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label201'
        Caption = 'RODADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 244211
        mmTop = 21696
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 266436
        mmTop = 21696
        mmWidth = 9525
        BandType = 0
      end
      object lbl_DataEmissao: TppLabel
        UserName = 'Label11'
        Caption = '....'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 8996
        mmWidth = 3175
        BandType = 0
      end
      object lbl_Band1: TppLabel
        UserName = 'Label12'
        Caption = 'Label12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 240242
        mmTop = 5821
        mmWidth = 10245
        BandType = 0
      end
      object lbl_Band2: TppLabel
        UserName = 'lbl_Band2'
        Caption = 'lbl_Band2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 240242
        mmTop = 9525
        mmWidth = 13123
        BandType = 0
      end
      object lbl_bandeira: TppLabel
        UserName = 'lbl_bandeira'
        Caption = 'lbl_bandeira'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 239978
        mmTop = 265
        mmWidth = 16256
        BandType = 0
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 13229
        mmTop = 13229
        mmWidth = 265
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 84931
        mmTop = 17991
        mmWidth = 1323
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 129117
        mmTop = 17991
        mmWidth = 1323
        BandType = 0
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 142875
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 179917
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 193411
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 216959
        mmTop = 17198
        mmWidth = 1323
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 258498
        mmTop = 17727
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'VOUCHER'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2625
        mmLeft = 529
        mmTop = 18256
        mmWidth = 10583
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12965
        mmLeft = 46302
        mmTop = 12964
        mmWidth = 1323
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line202'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 231246
        mmTop = 16933
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label202'
        Caption = 'PR'#201'FIXO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3302
        mmLeft = 231511
        mmTop = 21696
        mmWidth = 12107
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NO2_NRMATR'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2600
        mmLeft = 47096
        mmTop = 265
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'NO2_NMPASS'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2600
        mmLeft = 14023
        mmTop = 265
        mmWidth = 32015
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 60590
        mmTop = 265
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'NO2_NMORGA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2600
        mmLeft = 61648
        mmTop = 265
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'NO2_UA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2600
        mmLeft = 85725
        mmTop = 265
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'NO2_NMSAID'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2600
        mmLeft = 102923
        mmTop = 265
        mmWidth = 25929
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 102129
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'NO2_DTSAIDA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2600
        mmLeft = 129911
        mmTop = 265
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'NO2_HORASAIDA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2600
        mmLeft = 143669
        mmTop = 265
        mmWidth = 7938
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'NO2_NMCHEG'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2600
        mmLeft = 152929
        mmTop = 265
        mmWidth = 26458
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'NO2_DTCHEGADA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2600
        mmLeft = 180446
        mmTop = 265
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'NO2_HOCHEGADA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2600
        mmLeft = 193940
        mmTop = 265
        mmWidth = 7938
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 152400
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'NO2_KMINIC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0.#00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2646
        mmLeft = 202936
        mmTop = 529
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'NO2_KMFINA'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0.#00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2646
        mmLeft = 217488
        mmTop = 529
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'NO2_TORODA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2646
        mmLeft = 244740
        mmTop = 265
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'NO2_VLNOTA'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2646
        mmLeft = 259292
        mmTop = 265
        mmWidth = 17463
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 202142
        mmTop = 265
        mmWidth = 1058
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 243682
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 13229
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'NO2_NRNOTA'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2646
        mmLeft = 0
        mmTop = 265
        mmWidth = 12700
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 46302
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 84931
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 129117
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 142875
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine27: TppLine
        UserName = 'Line27'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 179917
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 193411
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine29: TppLine
        UserName = 'Line29'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 216959
        mmTop = 265
        mmWidth = 1058
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 258498
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 231246
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'NO2_NRUNID'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2646
        mmLeft = 232569
        mmTop = 529
        mmWidth = 9260
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppLine22: TppLine
        UserName = 'Line11'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 1323
        mmWidth = 284692
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 252148
        mmTop = 2910
        mmWidth = 25135
        BandType = 8
      end
      object ppLabel25: TppLabel
        UserName = 'Label23'
        Caption = 'DATA/HORA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 231511
        mmTop = 2910
        mmWidth = 17198
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 21431
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'NO2_VLNOTA'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 2646
        mmLeft = 258498
        mmTop = 794
        mmWidth = 18256
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'TOTAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2963
        mmLeft = 246698
        mmTop = 794
        mmWidth = 8890
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 284692
        BandType = 7
      end
    end
  end
  object dsRelatorio: TDataSource
    DataSet = DM.qryConsulta
    Left = 272
    Top = 8
  end
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = dsRelatorio
    UserName = 'BDEPipeline1'
    Left = 152
    object ppBDEPipeline1ppField1: TppField
      FieldAlias = 'NO2_NRCONV'
      FieldName = 'NO2_NRCONV'
      FieldLength = 7
      DisplayWidth = 7
      Position = 0
    end
    object ppBDEPipeline1ppField2: TppField
      FieldAlias = 'NO2_DTLANC'
      FieldName = 'NO2_DTLANC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 1
    end
    object ppBDEPipeline1ppField3: TppField
      FieldAlias = 'NO2_NRMATR'
      FieldName = 'NO2_NRMATR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object ppBDEPipeline1ppField4: TppField
      FieldAlias = 'NO2_NMPASS'
      FieldName = 'NO2_NMPASS'
      FieldLength = 40
      DisplayWidth = 40
      Position = 3
    end
    object ppBDEPipeline1ppField5: TppField
      FieldAlias = 'NO2_CDORGA'
      FieldName = 'NO2_CDORGA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 4
    end
    object ppBDEPipeline1ppField6: TppField
      FieldAlias = 'NO2_NMORGA'
      FieldName = 'NO2_NMORGA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppBDEPipeline1ppField7: TppField
      FieldAlias = 'NO2_UA'
      FieldName = 'NO2_UA'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object ppBDEPipeline1ppField8: TppField
      FieldAlias = 'NO2_NMSAID'
      FieldName = 'NO2_NMSAID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object ppBDEPipeline1ppField9: TppField
      FieldAlias = 'NO2_DTSAID'
      FieldName = 'NO2_DTSAID'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object ppBDEPipeline1ppField10: TppField
      FieldAlias = 'NO2_HOSAID'
      FieldName = 'NO2_HOSAID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 9
    end
    object ppBDEPipeline1ppField11: TppField
      FieldAlias = 'NO2_NMCHEG'
      FieldName = 'NO2_NMCHEG'
      FieldLength = 30
      DisplayWidth = 30
      Position = 10
    end
    object ppBDEPipeline1ppField12: TppField
      FieldAlias = 'NO2_DTCHEG'
      FieldName = 'NO2_DTCHEG'
      FieldLength = 8
      DisplayWidth = 8
      Position = 11
    end
    object ppBDEPipeline1ppField13: TppField
      FieldAlias = 'NO2_HOCHEG'
      FieldName = 'NO2_HOCHEG'
      FieldLength = 4
      DisplayWidth = 4
      Position = 12
    end
    object ppBDEPipeline1ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'NO2_KMINIC'
      FieldName = 'NO2_KMINIC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppBDEPipeline1ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'NO2_KMFINA'
      FieldName = 'NO2_KMFINA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object ppBDEPipeline1ppField16: TppField
      FieldAlias = 'NO2_NRUNID'
      FieldName = 'NO2_NRUNID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 15
    end
    object ppBDEPipeline1ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'NO2_VLNOTA'
      FieldName = 'NO2_VLNOTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppBDEPipeline1ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'NO2_FLBAND'
      FieldName = 'NO2_FLBAND'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppBDEPipeline1ppField19: TppField
      FieldAlias = 'NO2_NRNOTA'
      FieldName = 'NO2_NRNOTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
    object ppBDEPipeline1ppField20: TppField
      FieldAlias = 'NO2_DTLANCAMENTO'
      FieldName = 'NO2_DTLANCAMENTO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 19
    end
    object ppBDEPipeline1ppField21: TppField
      FieldAlias = 'NO2_DTSAIDA'
      FieldName = 'NO2_DTSAIDA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 20
    end
    object ppBDEPipeline1ppField22: TppField
      FieldAlias = 'NO2_DTCHEGADA'
      FieldName = 'NO2_DTCHEGADA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 21
    end
    object ppBDEPipeline1ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'NO2_TORODA'
      FieldName = 'NO2_TORODA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppBDEPipeline1ppField24: TppField
      FieldAlias = 'NO2_HORASAIDA'
      FieldName = 'NO2_HORASAIDA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 23
    end
    object ppBDEPipeline1ppField25: TppField
      FieldAlias = 'NO2_HOCHEGADA'
      FieldName = 'NO2_HOCHEGADA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 24
    end
  end
  object Excel1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 72
    Top = 1
  end
  object RvProject1: TRvProject
    Engine = RvNDRWriter1
    ProjectFile = 'C:\INFOG2\CEMAR\Relatorio\rvTabela.rav'
    Left = 120
    Top = 64
  end
  object RvNDRWriter1: TRvNDRWriter
    StatusFormat = 'Printing page %p'
    Units = unMM
    UnitsFactor = 25.400000000000000000
    Title = 'Rave Report'
    Orientation = poLandScape
    ScaleX = 100.000000000000000000
    ScaleY = 100.000000000000000000
    StreamMode = smUser
    Left = 160
    Top = 64
  end
  object rvDataSetPeriodo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = cdsPeriodo
    Left = 264
    Top = 64
  end
  object rvqConsulta: TRvQueryConnection
    RuntimeVisibility = rtDeveloper
    Query = DM.qryConsulta
    Left = 200
    Top = 64
  end
  object rvtBandeiras: TRvTableConnection
    RuntimeVisibility = rtDeveloper
    Table = DM.tbSRTBA2
    Left = 232
    Top = 64
  end
  object cdsPeriodo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 72
    Data = {
      A90000009619E0BD010000001800000004000000000003000000A9000C444154
      415F494E494349414C0100490000000100055749445448020002000A000A4441
      54415F46494E414C0100490000000100055749445448020002000A0008444553
      434F4E544F080004000000010007535542545950450200490006004D6F6E6579
      000D56414C4F525F4C49515549444F0800040000000100075355425459504502
      00490006004D6F6E6579000000}
    object cdsPeriodoDATA_INICIAL: TStringField
      FieldName = 'DATA_INICIAL'
      Size = 10
    end
    object cdsPeriodoDATA_FINAL: TStringField
      FieldName = 'DATA_FINAL'
      Size = 10
    end
    object cdsPeriodoDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
    end
    object cdsPeriodoVALOR_LIQUIDO: TCurrencyField
      FieldName = 'VALOR_LIQUIDO'
      DisplayFormat = '###,##0.#0'
      currency = False
    end
  end
  object SaveDialog2: TSaveDialog
    Filter = '*.xls|Arquivo do Excel'
    Left = 120
    Top = 17
  end
end
