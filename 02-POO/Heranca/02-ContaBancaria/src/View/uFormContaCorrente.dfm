inherited frmContaCorrente: TfrmContaCorrente
  Caption = 'frmContaCorrente'
  ClientHeight = 524
  ClientWidth = 716
  Position = poMainFormCenter
  StyleElements = [seFont, seClient, seBorder]
  OnShow = FormShow
  ExplicitWidth = 732
  ExplicitHeight = 563
  TextHeight = 17
  inherited Label1: TLabel
    Left = 273
    Top = 121
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 273
    ExplicitTop = 121
  end
  object lblLimite: TLabel [1]
    Left = 304
    Top = 353
    Width = 4
    Height = 17
  end
  inherited pnlToolbar: TPanel
    Width = 716
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 714
    inherited lblTitulo: TLabel
      Width = 714
      Height = 71
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited edtValor: TEdit
    Left = 249
    Top = 152
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 249
    ExplicitTop = 152
  end
  inherited btnDepositar: TButton
    Left = 391
    Top = 216
    ExplicitLeft = 391
    ExplicitTop = 216
  end
  inherited btnSacar: TButton
    Left = 265
    Top = 216
    ExplicitLeft = 265
    ExplicitTop = 216
  end
  inherited mmExtrato: TMemo
    Left = 208
    Top = 304
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 208
    ExplicitTop = 304
  end
end
