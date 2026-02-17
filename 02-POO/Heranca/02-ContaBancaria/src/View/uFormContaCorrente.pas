unit uFormContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormBase, Vcl.StdCtrls, Vcl.ExtCtrls,

   uContaCorrente, uContaBancaria;

type
  TfrmContaCorrente = class(TfrmBase)
    lblLimite: TLabel;
    procedure FormShow(Sender: TObject);


   protected
       function GetConta: TContaBancaria; override;

  end;

var
  frmContaCorrente: TfrmContaCorrente;

implementation

{$R *.dfm}

procedure TfrmContaCorrente.FormShow(Sender: TObject);
var
  Conta: TContaCorrente;
begin
  Conta := TContaCorrente(GetConta);
  lblLimite.Caption :=
    'Limite do Cheque Especial: ' + CurrToStr(Conta.LimiteChequeEspecial);
end;


function TfrmContaCorrente.GetConta: TContaBancaria;
begin
  Result := TContaCorrente.Create;
end;



end.
