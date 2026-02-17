unit uFormContaPoupanca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, Vcl.StdCtrls, Vcl.ExtCtrls,
  uContaBancaria;

type
  TfrmContaPoupanca = class(TfrmBase)


   protected
      function GetConta: TContaBancaria; override;


  end;

var
  frmContaPoupanca: TfrmContaPoupanca;

implementation

uses
  uContaPoupanca;

{$R *.dfm}

function TfrmContaPoupanca.GetConta: TContaBancaria;
begin

Result:= TContaPoupanca.Create;

end;

end.
