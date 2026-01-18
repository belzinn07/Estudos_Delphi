unit untCadastroEmpresaView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untBaseCadastro, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls,

  untPessoa, untInterface, untValidadorCNPJ;

type
  TfrmCadastroEmpresa = class(TfrmBaseCadastro)
    Label2: TLabel;
    Label3: TLabel;

  protected
    function GetPessoa : TPessoa; override;
    function CriarValidador : IValidador; override;
  end;

var
  frmCadastroEmpresa: TfrmCadastroEmpresa;

implementation

{$R *.dfm}

function TfrmCadastroEmpresa.GetPessoa: TPessoa;
begin
  Result := TValidadorCNPJ.Create;
end;

function TfrmCadastroEmpresa.CriarValidador: IValidador;
begin
  Result := TValidadorCNPJ.Create;
end;

end.
