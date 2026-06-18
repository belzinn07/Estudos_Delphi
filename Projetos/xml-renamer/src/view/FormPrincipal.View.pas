unit FormPrincipal.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,   Vcl.FileCtrl,
  XmlScanner.Service, System.Generics.Collections, XmlInfo.Model;

type
  TfrmPrincipal = class(TForm)
    pnlContainer: TPanel;
    edtPasta: TEdit;
    btnProcurarPasta: TButton;
    mmLog: TMemo;
    btnAnalisar: TButton;
    btnRenomear: TButton;
    Label1: TLabel;
    procedure btnProcurarPastaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAnalisarClick(Sender: TObject);
  private
    FScannerService : TXmlScannerService;
    FListaXmls: TObjectList<TXmlInfo>;

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 FScannerService := TXmlScannerService.Create;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
 FListaXmls.Free;
 FScannerService.Free;
end;



procedure TfrmPrincipal.btnProcurarPastaClick(Sender: TObject);
var
Pasta: string;

begin
 Pasta := '';

 if SelectDirectory('Selecione a pasta dos XMLs: ', '', Pasta) then
   edtPasta.Text := Pasta;

end;

procedure TfrmPrincipal.btnAnalisarClick(Sender: TObject);
begin
  if edtPasta.Text = '' then
  begin
    ShowMessage('Selecione uma pasta.');
    Exit;
  end;

  FreeAndNil(FListaXmls);

  FListaXmls := FScannerService.LerPasta(edtPasta.Text);

  mmL

end;

end.
