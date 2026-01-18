unit untPagamentoPix;

interface

uses
System.SysUtils,
  untInterface;

type
  TPagamentoPix = class(TInterfacedObject, IPagamento)

  function Pagar(Valor: Double): string;

  end;

implementation

function TPagamentoPix.Pagar(Valor: Double): string;

var
  valorDePagamento: Double;
begin

  Result := Format('Pagamento PIX realizado no valor de R$ %.2f ', [Valor]);
end;

end.
