object Form6: TForm6
  Left = 0
  Top = 16
  Width = 640
  Height = 436
  Caption = 'Form6'
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
    Top = 0
    Height = 402
  end
  object Panel1: TPanel
    Left = 3
    Top = 0
    Width = 418
    Height = 402
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 416
      Height = 400
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
  object Panel2: TPanel
    Left = 421
    Top = 0
    Width = 211
    Height = 402
    Align = alRight
    TabOrder = 1
    object Label1: TLabel
      Left = 157
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Brand'
    end
    object Label2: TLabel
      Left = 156
      Top = 64
      Width = 29
      Height = 13
      Caption = 'Model'
    end
    object Label3: TLabel
      Left = 161
      Top = 112
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object Label4: TLabel
      Left = 148
      Top = 160
      Width = 37
      Height = 13
      Caption = 'Mileage'
    end
    object Edit1: TEdit
      Left = 16
      Top = 32
      Width = 169
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 16
      Top = 80
      Width = 169
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 16
      Top = 128
      Width = 169
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 16
      Top = 176
      Width = 169
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 110
      Top = 208
      Width = 75
      Height = 25
      Caption = 'Undelet'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 110
      Top = 208
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
end
