unit untCadastroClienteView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCadastroClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtNome: TEdit;
    edtCPF: TEdit;
    lblNome: TLabel;
    lblCPF: TLabel;
    Panel2: TPanel;
    btnSalvar: TButton;
    btnVoltar: TButton;
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

{$R *.dfm}

procedure TfrmCadastroClientes.btnVoltarClick(Sender: TObject);
begin

edtNome.Clear;
Close;

end;

end.
