object Form1: TForm1
  Left = 465
  Top = 213
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1063#1072#1089#1099
  ClientHeight = 325
  ClientWidth = 340
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 24
    Width = 135
    Height = 37
    Caption = '00:00:00 '
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 96
    Width = 305
    Height = 185
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100
    TabOrder = 0
  end
  object RadioButton1: TRadioButton
    Left = 104
    Top = 128
    Width = 113
    Height = 17
    Caption = #1052#1077#1076#1083#1077#1085#1085#1086
    TabOrder = 1
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 104
    Top = 168
    Width = 113
    Height = 17
    Caption = #1059#1084#1077#1088#1077#1085#1085#1086
    TabOrder = 2
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 104
    Top = 208
    Width = 113
    Height = 17
    Caption = #1041#1099#1089#1090#1088#1086
    TabOrder = 3
    OnClick = RadioButton3Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 56
    Top = 32
  end
end
