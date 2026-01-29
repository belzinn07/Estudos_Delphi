unit untCadastroView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,

  untDMConexao;

type
  TfrmCadastro = class(TForm)
    btnSalvar: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    edtNome: TEdit;
    edtCPF: TEdit;
    edtID: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

procedure TfrmCadastro.btnSalvarClick(Sender: TObject);

var
vID : Integer;

begin
if not TryStrToInt(edtID.Text, vID) then
  begin
    ShowMessage('Por favor, insira um ID numérico válido.');
    Exit;
  end;

try

TdmConexao.InserirClientes(
vID,
edtNome.Text,
edtCPF.Text

);

ShowMessage('Cliente ' + edtNome.Text + ' inserido com sucesso!');

except
    on E: Exception do
      ShowMessage('Erro ao salvar: ' + E.Message);

end;

end;

end.
