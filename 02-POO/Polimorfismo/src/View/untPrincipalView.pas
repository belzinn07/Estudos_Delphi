unit untPrincipalView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  untCadastroEmpresaView, untCadastroClienteView;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    btnCadastarCliente: TButton;
    Panel4: TPanel;
    Label3: TLabel;
    btnCadastrarEmpresa: TButton;
    procedure btnCadastarClienteClick(Sender: TObject);
    procedure btnCadastrarEmpresaClick(Sender: TObject);


  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCadastarClienteClick(Sender: TObject);

begin

frmCadastroCliente := TfrmCadastroCliente.Create(nil);

try

frmCadastroCliente.ShowModal;

finally

FreeAndNil(frmCadastroCliente);
end;
end;

procedure TfrmPrincipal.btnCadastrarEmpresaClick(Sender: TObject);
begin

frmCadastroEmpresa := TfrmCadastroEmpresa.Create(nil);

try

frmCadastroEmpresa.ShowModal;

finally

FreeAndNil(frmCadastroEmpresa);
end;
end;

end.
