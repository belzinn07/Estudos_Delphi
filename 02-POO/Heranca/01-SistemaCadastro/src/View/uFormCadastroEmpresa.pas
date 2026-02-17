unit uFormCadastroEmpresa;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  uFormBaseCadastro,
  untPessoa,
  untEmpresa;

type
  TfrmCadastroEmpresa = class(TfrmBaseCadastro)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;

   protected
       function GetPessoa: TPessoa; override;
  end;

var
  frmCadastroEmpresa: TfrmCadastroEmpresa;

implementation

{$R *.dfm}

{ TfrmCadastroEmpresa }

function TfrmCadastroEmpresa.GetPessoa: TPessoa;
begin
  Result := TEmpresa.Create;
end;

end.
