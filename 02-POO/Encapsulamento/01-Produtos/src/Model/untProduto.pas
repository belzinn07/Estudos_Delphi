unit untProduto;

interface

type
  TProduto = class
  private
    FNome: String;
    FPreco: Currency;
  public
    property Nome: String read FNome write FNome;
    property Preco: Currency read FPreco write FPreco;

    function ValidarPreco: Boolean;
  end;

implementation

{ TProduto }

function TProduto.ValidarPreco: Boolean;
begin
  Result := FPreco > 0;
end;

end.

