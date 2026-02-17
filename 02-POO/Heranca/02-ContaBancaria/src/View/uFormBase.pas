unit uFormBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uContaBancaria, uContaPoupanca;

type
  TfrmBase = class(TForm)
    pnlToolbar: TPanel;
    lblTitulo: TLabel;
    edtValor: TEdit;
    Label1: TLabel;
    btnDepositar: TButton;
    btnSacar: TButton;
    mmExtrato: TMemo;
    procedure btnSacarClick(Sender: TObject);
    procedure btnDepositarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
   FConta : TContaBancaria;
  protected
    function GetConta: TContaBancaria;virtual;abstract;
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

procedure TfrmBase.btnDepositarClick(Sender: TObject);
var
  Valor: Currency;
begin


  Valor := StrToCurr(edtValor.Text);
  FConta.Depositar(Valor);

  mmExtrato.Lines.Add('Depósito: ' + Valor.ToString());
  mmExtrato.Lines.Add('Saldo: ' + FConta.Saldo.ToString());

end;

procedure TfrmBase.btnSacarClick(Sender: TObject);
var

 Valor: Currency;

begin

  Valor:= StrToCurr(edtValor.Text);
  FConta.Sacar(Valor);

  mmExtrato.Lines.Add('Saque:' + Valor.ToString());
  mmExtrato.Lines.Add('Saldo: ' + FConta.Saldo.ToString());

end;

procedure TfrmBase.FormCreate(Sender: TObject);
begin
FConta := GetConta;
end;

procedure TfrmBase.FormDestroy(Sender: TObject);
begin
 FConta.Free;
end;

end.
