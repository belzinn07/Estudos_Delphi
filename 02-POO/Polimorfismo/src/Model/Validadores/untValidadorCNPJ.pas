unit untValidadorCNPJ;

interface

uses
 untPessoa, untInterface;

type
  TValidadorCNPJ = class(TPessoa,IValidador)

  public
   function Validar(Documento: string): Boolean;

  end;

implementation

{ TValidadorCNPJ }

function TValidadorCNPJ.Validar(Documento: string): Boolean;
begin
  Result := Length(Documento) = 14 ;
end;

end.
