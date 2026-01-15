program ValorTotalEstoque;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

function CalcularTotal(preco: Currency; quantidade: Integer): Currency;
begin
  Result := preco * quantidade;
end;

procedure LerDados(var preco: Currency; var quantidade: Integer);
begin
  Writeln('Digite o preço: ');
  Readln(preco);

  Writeln('Digite a quantidade:');
  Readln(quantidade);
end;

procedure ExibirResultados(preco: Currency; quantidade: Integer);
var
  total: Currency;
begin
  total := CalcularTotal(preco, quantidade);
  Writeln('O total é: ', total:0:2);
end;

var
  preco: Currency;
  quantidade: Integer;

begin
  LerDados(preco, quantidade);
  ExibirResultados(preco, quantidade);

  Readln;
end.

