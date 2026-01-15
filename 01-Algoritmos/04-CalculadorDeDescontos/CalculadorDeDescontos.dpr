program CalculadorDeDescontos;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

function CalcularDesconto(preco: Currency; percentual: Double): Currency;
begin
  Result := preco * (percentual / 100);
end;

function CalcularPrecoFinal(preco, desconto: Currency): Currency;
begin
  Result := preco - desconto;
end;

procedure LerDados(var nome: string; var preco: Currency; var percentual: Double);
begin
  Writeln('Digite o nome do produto:');
  Readln(nome);

  Writeln('Digite o preco:');
  Readln(preco);

  Writeln('Digite o percentual de desconto:');
  Readln(percentual);
end;

procedure ExibirResultado(nome: string; desconto, precoFinal: Currency);
begin
  Writeln('O valor de desconto do ', nome, ' é: R$ ', desconto:0:2);
  Writeln('Preco final é: R$ ', precoFinal:0:2);
end;

var
  nomeDoProduto: string;
  precoOriginal: Currency;
  percentualDesconto: Double;
  valorDesconto: Currency;
  precoFinal: Currency;

begin
  LerDados(nomeDoProduto, precoOriginal, percentualDesconto);

  valorDesconto := CalcularDesconto(precoOriginal, percentualDesconto);
  precoFinal := CalcularPrecoFinal(precoOriginal, valorDesconto);

  ExibirResultado(nomeDoProduto, valorDesconto, precoFinal);

  Writeln;
  Writeln('Pressione ENTER para sair...');
  Readln;
end.

