unit untEmpresa;

interface

uses
 untPessoa, untInterface;

type
  TEmpresa = class(TPessoa,IValidador)

  public
   function ValidaDocumento: Boolean;override;
   function GetTipoEntidade : string;

  end;

implementation

function TEmpresa.GetTipoEntidade: string;
begin
  Result:= 'Pessoa Jurídica';
end;

function TEmpresa.ValidaDocumento: Boolean;
begin
  Result := Length(Documento) = 14 ;
end;

end.
