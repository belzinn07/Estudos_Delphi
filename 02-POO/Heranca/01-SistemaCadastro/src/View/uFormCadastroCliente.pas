unit uFormCadastroCliente;

interface

uses
  // Units do Windows e VCL (Sistema)
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,


  uFormBaseCadastro,
  untPessoa,
  untCliente;

type
  TfrmCadastroCliente = class(TfrmBaseCadastro)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
  protected
    function GetPessoa: TPessoa; override;
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

{ TfrmCadastroCliente }

function TfrmCadastroCliente.GetPessoa: TPessoa;
begin
  Result := TCliente.Create;
end;

end.
