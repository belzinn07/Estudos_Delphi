unit uContaCorrente;

interface

uses
  uContaBancaria, SysUtils;

type
  TContaCorrente = class(TContaBancaria)
    LimiteChequeEspecial: Currency;
    constructor Create;
  end;

implementation

constructor TContaCorrente.Create;
var
  Limite: string;
begin

  LimiteChequeEspecial := 500;
  Depositar(LimiteChequeEspecial);
  Limite := CurrToStr(LimiteChequeEspecial);

  end;

end.

