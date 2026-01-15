program ReajusteDeValor;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const
VALOR_REAJUSTE: Currency = 1.05;



function CalcularReajuste(valorOriginal: Currency) : Currency;
begin
   Result := (valorOriginal * VALOR_REAJUSTE);
end;


function CalcularPercentualReajuste(): Currency;
begin
    Result:= (VALOR_REAJUSTE - 1) * 100;
end;

procedure LerDados(var valorOriginal: Currency);
begin
   Writeln('Digite um valor: ');
   Readln(valorOriginal);

end;





procedure ExibirResultado(valorOriginal: Currency);

var
percentualReajuste: Currency;
valorReajustado:Currency;
begin
  percentualReajuste:= CalcularPercentualReajuste;
  valorReajustado:= CalcularReajuste(valorOriginal);
  Writeln('O valor sofreu um reajuste de ', percentualReajuste:0:2, '%');
  Writeln('O valor reajustado é: ', valorReajustado:0:2);
end;

var
valorOriginal: Currency;

begin

LerDados(valorOriginal);
ExibirResultado(valorOriginal);

Readln;
end.
