unit uPrincipa.View;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList, Vcl.Buttons,
  uDMPrincipal, uContatoService, uContatoRepository, uFormularioContato.View,
  uContato;

type
  TFormPrincipal = class(TForm)
    Image1: TImage;
    pnlGeral: TPanel;
    btnExcluir: TSpeedButton;
    btnAdicionar: TSpeedButton;
    btnEditar: TSpeedButton;
    dbgLista: TDBGrid;
    pnlCabecalho: TPanel;
    lblTitulo: TLabel;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure dbgListaDblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    FService : TContatoService;
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses uDialogoConfirmacao;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  FService := TContatoService.Create(TContatoRepository.Create(DMPrincipal));
end;

procedure TFormPrincipal.FormDestroy(Sender: TObject);
begin
FService.Free;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  FService.ListarContatos;
end;



procedure TFormPrincipal.btnExcluirClick(Sender: TObject);
var
Contato : TContato;

begin

if TFormConfirmacao.Confirmar('Deseja realmente excluir este contato?') then
begin
 Contato := TContato.Create;
try

Contato.Id := DMPrincipal.qryContatos.FieldByName('ID').AsInteger;
FService.Excluir(Contato);

finally
  Contato.Free;
end;
end;

end;

procedure TFormPrincipal.btnEditarClick(Sender: TObject);

begin
with TFormContato.Create(nil) do
try
ModoEdicao := True;
IDContato:= DMPrincipal.qryContatos.FieldByName('ID').AsInteger;
ShowModal;
finally
  Free;
end;

end;

procedure TFormPrincipal.dbgListaDblClick(Sender: TObject);
begin
  btnEditarClick(Sender);
end;

procedure TFormPrincipal.btnAdicionarClick(Sender: TObject);
begin
  with TFormContato.Create(nil) do
  try
    ModoEdicao := False;
    IDContato := 0;
    ShowModal;
  finally
    Free;
  end;
end;

end.

