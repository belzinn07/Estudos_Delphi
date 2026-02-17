unit uContaPoupanca;

interface
uses uContaBancaria;

type
 TContaPoupanca = class(TContaBancaria)

   public

    const TAXA_RENDIMENTO = 0.005;
    procedure Depositar(Valor: Currency);override;
    function CalcularRendimento: Currency;

 end;

implementation

procedure TContaPoupanca.Depositar(Valor: Currency);
var
 Rendimento: Currency;

begin
inherited Depositar(Valor);

 Rendimento:=  CalcularRendimento;

inherited Depositar(Rendimento);

end;

function TContaPoupanca.CalcularRendimento: Currency;
begin

Result:= Saldo * TAXA_RENDIMENTO;

end;

end.
