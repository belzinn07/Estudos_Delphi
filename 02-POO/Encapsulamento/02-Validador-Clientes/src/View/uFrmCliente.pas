unit uFrmCliente;

interface

uses
  uCliente,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtNome: TEdit;
    Label4: TLabel;
    edtCPF: TEdit;
    btnValidar: TButton;
    procedure btnValidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnValidarClick(Sender: TObject);
var
 cliente : TCliente;

begin
 cliente := TCliente.Create;

 try
   cliente.Nome := edtNome.Text;
   cliente.CPF :=  edtCPF.Text;

   if cliente.ValidarCPF then
    ShowMessage('CPF Válido')
    else
    ShowMessage('CPF Inválido');

 finally
 cliente.Free;

 end;
end;

end.
