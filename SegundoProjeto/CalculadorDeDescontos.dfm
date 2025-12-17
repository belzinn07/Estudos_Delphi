object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 288
    Top = 83
    Width = 77
    Height = 15
    Caption = 'Digite o pre'#231'o:'
  end
  object Label2: TLabel
    Left = 288
    Top = 112
    Width = 34
    Height = 15
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 288
    Top = 131
    Width = 96
    Height = 15
    Caption = 'Digite o desconto:'
  end
  object labelResultado: TLabel
    Left = 320
    Top = 232
    Width = 57
    Height = 15
    Caption = 'Valor Final:'
  end
  object editPreco: TEdit
    Left = 288
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object editDesconto: TEdit
    Left = 288
    Top = 152
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Button1: TButton
    Left = 309
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
end
