inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'Cadastro de Clientes'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitLeft = 2
  ExplicitTop = 2
  TextHeight = 15
  inherited frmBaseCadastro: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1140
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = -88
    ExplicitTop = -87
    ExplicitWidth = 1142
    ExplicitHeight = 528
    inherited Panel2: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited edtNome: TEdit
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited edtDocumento: TEdit
        StyleElements = [seFont, seClient, seBorder]
      end
    end
  end
end
