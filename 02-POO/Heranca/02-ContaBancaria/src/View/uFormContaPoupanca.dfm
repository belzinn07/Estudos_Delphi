inherited frmContaPoupanca: TfrmContaPoupanca
  Caption = 'frmContaPoupanca'
  Position = poMainFormCenter
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 17
  inherited Label1: TLabel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlToolbar: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      Width = 699
      Height = 71
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited edtValor: TEdit
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited mmExtrato: TMemo
    StyleElements = [seFont, seClient, seBorder]
  end
end
