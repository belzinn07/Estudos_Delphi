unit untCrudClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids,

  untCadastroCliente, untDataModule;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    btnExcluir: TButton;
    btnNovo: TButton;
    dsClientes: TDataSource;
    btnEditar: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}



procedure TfrmPrincipal.btnEditarClick(Sender: TObject);
begin
   if DMConexao.qryClientes.IsEmpty then Exit;

  FormCadastro.ModoEdicao := True;
  FormCadastro.IDCliente :=
    DMConexao.qryClientes.FieldByName('ID').AsInteger;

  FormCadastro.edtNome.Text :=
    DMConexao.qryClientes.FieldByName('NOME').AsString;

  FormCadastro.ShowModal;
end;

procedure TfrmPrincipal.btnExcluirClick(Sender: TObject);
begin

if not DMConexao.qryClientes.IsEmpty then
  DMConexao.ExcluirCliente(DMConexao.qryClientes.FieldByName('ID').AsInteger);

end;

procedure TfrmPrincipal.btnNovoClick(Sender: TObject);
begin

 FormCadastro.ModoEdicao := False;
 FormCadastro.IDCliente := 0;
 FormCadastro.edtNome.Clear;

 FormCadastro.ShowModal;

end;

procedure TfrmPrincipal.DBGrid1DblClick(Sender: TObject);
begin

DMConexao.qryClientes.Edit;

end;

end.
