object Form2: TForm2
  Left = 196
  Top = 142
  Width = 960
  Height = 484
  Caption = #1052#1072#1089#1089#1080#1074
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
    Top = 97
    Width = 944
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 401
    Width = 944
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Splitter3: TSplitter
    Left = 353
    Top = 100
    Width = 2
    Height = 301
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 97
    Align = alTop
    BevelWidth = 2
    BiDiMode = bdLeftToRight
    Ctl3D = True
    ParentBiDiMode = False
    ParentCtl3D = False
    TabOrder = 0
    object Label4: TLabel
      Left = 208
      Top = 48
      Width = 19
      Height = 13
      Caption = 'max'
    end
    object Label3: TLabel
      Left = 208
      Top = 24
      Width = 16
      Height = 13
      Caption = 'min'
    end
    object Label2: TLabel
      Left = 88
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Row'
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 15
      Height = 13
      Caption = 'Col'
    end
    object Edit4: TEdit
      Left = 251
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 251
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 88
      Top = 40
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '3'
    end
    object Edit1: TEdit
      Left = 16
      Top = 40
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '3'
    end
    object Button4: TButton
      Left = 216
      Top = 68
      Width = 97
      Height = 25
      Caption = 'Save'
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 104
      Top = 68
      Width = 97
      Height = 25
      Caption = 'To count'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 16
      Top = 68
      Width = 75
      Height = 25
      Caption = 'Create'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 404
    Width = 944
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button3: TButton
      Left = 864
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = Button3Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 100
    Width = 353
    Height = 301
    Align = alLeft
    TabOrder = 2
    object StringGrid1: TStringGrid
      Left = 1
      Top = 1
      Width = 351
      Height = 299
      Align = alClient
      ColCount = 3
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      TabOrder = 0
      Visible = False
    end
  end
  object Panel4: TPanel
    Left = 355
    Top = 100
    Width = 589
    Height = 301
    Align = alClient
    TabOrder = 3
    object ListBox1: TListBox
      Left = 1
      Top = 1
      Width = 587
      Height = 146
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      Visible = False
    end
    object ListBox2: TListBox
      Left = 1
      Top = 147
      Width = 587
      Height = 153
      Align = alBottom
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 600
  end
end
