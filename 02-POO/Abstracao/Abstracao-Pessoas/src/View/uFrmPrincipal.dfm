object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 631
  ClientWidth = 1023
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1023
    Height = 81
    Align = alTop
    Color = 6888724
    ParentBackground = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 416
    Top = 360
    Width = 185
    Height = 57
    Caption = 'Ver Pessoas Cadastradas'
    TabOrder = 1
    OnClick = Button1Click
  end
  object mmPessoas: TMemo
    Left = 352
    Top = 128
    Width = 321
    Height = 209
    TabOrder = 2
  end
end
