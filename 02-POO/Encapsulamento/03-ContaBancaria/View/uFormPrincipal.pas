unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uContaBancaria;

type
  TfrmContaBancaria = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtValor: TEdit;
    Label2: TLabel;
    btnSacar: TButton;
    btnDepositar: TButton;
    mmExtrato: TMemo;
    procedure btnDepositarClick(Sender: TObject);
    procedure btnSacarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FConta: TContaBancaria;
  public
    { Public declarations }
  end;

var
  frmContaBancaria: TfrmContaBancaria;

implementation

{$R *.dfm}

procedure TfrmContaBancaria.FormCreate(Sender: TObject);
begin
FConta := TContaBancaria.Create;
end;



procedure TfrmContaBancaria.FormDestroy(Sender: TObject);
begin
 FConta.Free;
end;

procedure TfrmContaBancaria.btnDepositarClick(Sender: TObject);
var
  Valor: Currency;
begin
  Valor := StrToCurr(edtValor.Text);
  FConta.Depositar(Valor);

  mmExtrato.Lines.Add('Depósito: ' + Valor.ToString);
  mmExtrato.Lines.Add('Saldo: ' + FConta.Saldo.ToString);
end;


procedure TfrmContaBancaria.btnSacarClick(Sender: TObject);
var
  Valor: Currency;
begin
  Valor := StrToCurr(edtValor.Text);
  FConta.Sacar(Valor);

  mmExtrato.Lines.Add('Saque: ' + Valor.ToString);
  mmExtrato.Lines.Add('Saldo: ' + FConta.Saldo.ToString);
end;



end.
