unit untCadastroClienteView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untBaseCadastro, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls,

  untPessoa,untInterface, untValidadorCPF;

type
  TfrmCadastroCliente = class(TfrmBaseCadastro)

  protected
   function GetPessoa : TPessoa; override;
   function CriarValidador: IValidador;override;

  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

function TfrmCadastroCliente.GetPessoa: TPessoa;
begin
  Result := TValidadorCPF.Create;
end;

function TfrmCadastroCliente.CriarValidador: IValidador;
begin
  Result := TValidadorCPF.Create;
end;

end.
