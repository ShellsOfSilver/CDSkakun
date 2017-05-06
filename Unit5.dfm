object Form5: TForm5
  Left = 253
  Top = 116
  Width = 766
  Height = 468
  Caption = 'Form5'
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
    Left = 519
    Top = 0
    Height = 434
    Align = alRight
  end
  object Panel1: TPanel
    Left = 522
    Top = 0
    Width = 236
    Height = 434
    Align = alRight
    TabOrder = 0
    object Label4: TLabel
      Left = 148
      Top = 184
      Width = 37
      Height = 13
      Caption = 'Mileage'
    end
    object Label3: TLabel
      Left = 161
      Top = 136
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object Label2: TLabel
      Left = 156
      Top = 88
      Width = 29
      Height = 13
      Caption = 'Model'
    end
    object Label1: TLabel
      Left = 155
      Top = 40
      Width = 28
      Height = 13
      Caption = 'Brand'
    end
    object Edit4: TEdit
      Left = 64
      Top = 200
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 64
      Top = 152
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 64
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 64
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 110
      Top = 272
      Width = 75
      Height = 25
      Caption = 'Delet'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 112
      Top = 240
      Width = 70
      Height = 25
      Caption = 'Add'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 434
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 517
      Height = 432
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnMouseDown = DBGrid1MouseDown
    end
  end
end
