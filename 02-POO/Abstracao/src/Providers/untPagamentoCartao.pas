unit untPagamentoCartao;

interface

uses
  SysUtils,
  untInterface;

type
  TPagamentoCartao = class(TInterfacedObject, IPagamento)

    function Pagar(Valor: Currency): string;
  end;

implementation

function TPagamentoCartao.Pagar(Valor: Currency): string;
begin

 Result := Format('Pagamento no CARTÃO realizado no valor de R$ %.2f', [Valor]);

end;
end.
