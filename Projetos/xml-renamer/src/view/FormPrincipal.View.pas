unit FormPrincipal.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,   Vcl.FileCtrl,
  XmlScanner.Service, System.Generics.Collections, XmlInfo.Model,
  XmlRename.Service, System.ImageList, Vcl.ImgList;

type
  TfrmPrincipal = class(TForm)
    pnlContainer: TPanel;
    edtPasta: TEdit;
    btnProcurarPasta: TButton;
    mmLog: TMemo;
    btnAnalisar: TButton;
    btnRenomear: TButton;
    Label1: TLabel;
    ImageList1: TImageList;
    procedure btnProcurarPastaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAnalisarClick(Sender: TObject);
    procedure Log(const AMensagem: string);
    procedure btnRenomearClick(Sender: TObject);
  private
    FScannerService : TXmlScannerService;
    FRenameService : TXmlRenameService;
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
 FRenameService := TXmlRenameService.Create;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
 FListaXmls.Free;
 FScannerService.Free;
 FRenameService.Free;
end;



procedure TfrmPrincipal.Log(const AMensagem: string);
begin
  mmLog.Lines.Add(
    FormatDateTime('hh:nn:ss', Now) +
    ' - ' +
    AMensagem
  );
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
var
 Xml: TXmlInfo;

begin
  if edtPasta.Text = '' then
  begin
    ShowMessage('Selecione uma pasta.');
    Exit;
  end;

  mmLog.Clear;
  Log('Iniciando análise...');

  FreeAndNil(FListaXmls);

  FListaXmls := FScannerService.LerPasta(edtPasta.Text);

   mmLog.Lines.Add(
    Format('%d arquivo(s) encontrado(s).',
      [FListaXmls.Count])
  );

  mmLog.Lines.Add('');
  for Xml in FListaXmls do
  begin
   Log('Xml encontrado: ' + ExtractFileName(Xml.ArquivoOriginal));
   Log('Chave encontrada: ' + Xml.ChaveDeAcesso);
   Log('Novo nome: ' + Xml.NovoNome);
    mmLog.Lines.Add('');
  end;

end;

procedure TfrmPrincipal.btnRenomearClick(Sender: TObject);
var
 Xml : TXmlInfo;

begin
   if not Assigned(FListaXmls) then
  begin
    ShowMessage('Analise os arquivos primeiro.');
    Exit;
  end;

  mmLog.Lines.Add('');
  Log('===== RENOMEANDO =====');
  mmLog.Lines.Add('');

 for Xml in FListaXmls do
 begin
   try
     FRenameService.Renomear(Xml);

     Log('[OK] ' + ExtractFileName(Xml.ArquivoOriginal));

   except
     on E: Exception do
      Log('[ERRO] ' + E.Message);
   end;

 end;

 mmLog.Lines.Add('');
 Log('Processo concluído.');
end;

end.
