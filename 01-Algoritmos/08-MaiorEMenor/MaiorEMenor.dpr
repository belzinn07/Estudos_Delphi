program MaiorEMenor;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Cliente in '..\..\02-POO\01-Classe-Cliente\Cliente.pas';

var
maior,menor,numero : Double;
primeiraLeitura: Boolean;

begin

  primeiraLeitura := True;

     repeat


       Writeln('======Descubra o Maior e o Menor======');

       Writeln('Digite um número ou 0 para sair: ');
       Readln(numero);
     if numero <> 0 then
     begin
       if primeiraLeitura then
       begin
         maior := numero;
         menor := numero;
         primeiraLeitura := False;
       end
       else
       begin
          if numero > maior then maior := numero;
          if numero < menor then menor := numero;
       end;

       Writeln('O maior número é ', maior:0:2,' e menor é ', menor:0:2);
     end;
     until (numero = 0);
     Writeln('Saindo...');
     Readln;


end.
