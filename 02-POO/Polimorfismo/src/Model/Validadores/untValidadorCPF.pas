unit untValidadorCPF;

interface

uses
 untPessoa, untInterface;

type
  TValidadorCPF = class(TPessoa,IValidador)

  public
   function Validar(Documento :string): Boolean;

  end;

implementation

{ TValidadorCPF }

function TValidadorCPF.Validar(Documento: string): Boolean;
begin
  Result := Length(Documento) = 11;
end;

end.
