unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uFormContaCorrente, uFormContaPoupanca;

type
  TfrmPrincipal = class(TForm)
    pnlToolbar: TPanel;
    lblTitulo: TLabel;
    pnlCardContaCorrente: TPanel;
    lblContaConrrente: TLabel;
    btnContaCorrente: TButton;
    pnlCardContaPoupanca: TPanel;
    lblContaPoupanca: TLabel;
    btnContaPoupanca: TButton;
    procedure btnContaCorrenteClick(Sender: TObject);
    procedure btnContaPoupancaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnContaCorrenteClick(Sender: TObject);
begin
 frmContaCorrente := TfrmContaCorrente.Create(nil);

 try
   frmContaCorrente.ShowModal;
 finally
   FreeAndNil(frmContaCorrente);
 end;

end;

procedure TfrmPrincipal.btnContaPoupancaClick(Sender: TObject);
begin
frmContaPoupanca:= TfrmContaPoupanca.Create(nil);

try
  frmContaPoupanca.ShowModal;
finally
  FreeAndNil(frmContaPoupanca);

end;

end;

end.
