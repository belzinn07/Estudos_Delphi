unit uContaBancaria;

interface

uses
 System.SysUtils;

type
 TContaBancaria = class

   private

    FSaldo: Currency;
    function GetSaldo: Currency;

   public

   property Saldo: Currency read GetSaldo;

   procedure Sacar(Valor : Currency);
   procedure Depositar(Valor: Currency);virtual;
 end;

implementation

function TContaBancaria.GetSaldo: Currency;
begin
  Result := FSaldo;
end;

procedure TContaBancaria.Sacar(Valor: Currency);
begin

if Valor> FSaldo then
  raise Exception.Create('Saldo Insulficiente');

if Valor <= 0 then
  raise Exception.Create('Valor Inválido');

FSaldo := FSaldo - Valor ;

end;

procedure TContaBancaria.Depositar(Valor: Currency);
begin

if Valor <= 0 then
  raise Exception.Create('Valor Inválido');

FSaldo := FSaldo + Valor;

end;

end.
