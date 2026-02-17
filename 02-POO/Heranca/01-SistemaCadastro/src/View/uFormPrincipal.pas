unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,

  uFormCadastroCliente, uFormCadastroEmpresa;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnCadClientes: TButton;
    Label2: TLabel;
    Panel4: TPanel;
    Label3: TLabel;
    btnCadEmpresa: TButton;
    procedure btnCadClientesClick(Sender: TObject);
    procedure btnCadEmpresaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;


implementation

{$R *.dfm}



procedure TfrmPrincipal.btnCadClientesClick(Sender: TObject);
begin
frmCadastroCliente := TfrmCadastroCliente.Create(nil);

try
   frmCadastroCliente.ShowModal;

finally
   FreeAndNil(frmCadastroCliente);
end;

end;

procedure TfrmPrincipal.btnCadEmpresaClick(Sender: TObject);
begin
frmCadastroEmpresa := TfrmCadastroEmpresa.Create(nil);

try
  frmCadastroEmpresa.ShowModal;
finally
  FreeAndNil(frmCadastroEmpresa);

end;
end;

end.
