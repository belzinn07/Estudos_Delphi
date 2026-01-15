program Tabuada;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;


procedure TabuadaAdicao(numero, i: Integer);
begin
  Writeln(Format('%d + %d = %d', [numero, i, numero + i]));
end;

procedure TabuadaSubtracao(numero, i: Integer);
begin
  Writeln(Format('%d - %d = %d', [numero, i, numero - i]));
end;

procedure TabuadaMultiplicacao(numero, i: Integer);
begin
  Writeln(Format('%d x %d = %d', [numero, i, numero * i]));
end;

procedure TabuadaDivisao(numero, i: Integer);
begin

  Writeln(Format('%d / %d = %.2f', [numero, i, numero / i]));
end;

procedure ExibirMenu;
begin
  Writeln('====== Tabuada Dinamica =====');
  Writeln('1. Adicao');
  Writeln('2. Subtracao');
  Writeln('3. Multiplicacao');
  Writeln('4. Divisao');
  Writeln('5. Sair');
  Writeln('--------------------');
  Write('Escolha uma opcao: ');
end;

var
  opcao, numero, i: Integer;

begin
  repeat
    ExibirMenu;
    Readln(opcao);

    if opcao = 5 then Break;

    if not (opcao in [1..4]) then
    begin
      Writeln('Opcao invalida!');
      Continue;
    end;

    Write('Digite um numero para calcular: ');
    Readln(numero);
    Writeln('--- Resultado ---');

    for i := 1 to 10 do
    begin
      case opcao of
        1: TabuadaAdicao(numero, i);
        2: TabuadaSubtracao(numero, i);
        3: TabuadaMultiplicacao(numero, i);
        4: TabuadaDivisao(numero, i);
      end;
    end;

    Writeln('--------------------' + sLineBreak);
  until opcao = 5;
end.
