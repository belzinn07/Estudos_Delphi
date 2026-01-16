unit untEmpresa;

interface

uses
  untPessoa;

type
  TEmpresa = class(TPessoa)

  public
    function ValidarDocumento : Boolean;override;
  end;

implementation

function TEmpresa.ValidarDocumento: Boolean;
begin
  Result := Length(Documento) = 14;
end;
end.
