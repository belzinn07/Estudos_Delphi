unit untEmpresa;

interface

uses
  untPessoa, untInterface;

type
  TValidadorCPF =  class(TPessoa, IValidador)

  public
      function Validar: Boolean;

  end;

implementation

function TValidadorCPF.Validar: Boolean;
begin
  Result := Length(Documento) = 11;
end;

end.
