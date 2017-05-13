object Form1: TForm1
  Left = 478
  Top = 203
  BorderStyle = bsSingle
  Caption = #1050#1091#1088#1089#1086#1074#1072#1103
  ClientHeight = 228
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 187
    Width = 296
    Height = 41
    Align = alBottom
    TabOrder = 0
    object Button4: TButton
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 0
      OnClick = Button4Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 296
    Height = 187
    Align = alClient
    TabOrder = 1
    object Button3: TButton
      Left = 192
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Animation'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button3Click
      OnMouseMove = Button3MouseMove
    end
    object Button2: TButton
      Left = 104
      Top = 96
      Width = 75
      Height = 25
      Caption = 'DB'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button2Click
      OnMouseMove = Button2MouseMove
    end
    object Button1: TButton
      Left = 16
      Top = 96
      Width = 75
      Height = 25
      Caption = #1052#1072#1089#1080#1074
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button1Click
      OnMouseMove = Button1MouseMove
    end
  end
end
