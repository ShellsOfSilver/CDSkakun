object Form3: TForm3
  Left = 298
  Top = 110
  Width = 767
  Height = 436
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 65
    Width = 759
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 358
    Width = 759
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Splitter3: TSplitter
    Left = 408
    Top = 68
    Height = 290
    Align = alRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 759
    Height = 65
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 312
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Open DB'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 224
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 136
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 2
      OnClick = Button3Click
    end
    object RadioButton1: TRadioButton
      Left = 8
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Use standart DB'
      TabOrder = 3
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Use other Db'
      TabOrder = 4
      OnClick = RadioButton2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 361
    Width = 759
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 411
    Top = 68
    Width = 348
    Height = 290
    Align = alRight
    TabOrder = 2
  end
  object Panel4: TPanel
    Left = 0
    Top = 68
    Width = 408
    Height = 290
    Align = alClient
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 406
      Height = 288
      Align = alClient
      DataSource = DataSource1
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnMouseDown = DBGrid1MouseDown
    end
  end
  object DataSource1: TDataSource
    Left = 472
  end
  object OpenDialog1: TOpenDialog
    Left = 552
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 496
  end
  object ADOTable1: TADOTable
    CursorType = ctStatic
    Left = 520
  end
end
