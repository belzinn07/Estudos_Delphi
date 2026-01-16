unit untCliente;

interface

uses
  untPessoa, untInterface;

type
  TCliente =  class(TPessoa, IValidador)

  public
      function ValidarDocumento: Boolean;override;
      function GetTipoEntidade:  string;

  end;

implementation

function TCliente.GetTipoEntidade: string;
begin
  Result := 'Pessoa Física';
end;

function TCliente.ValidarDocumento: Boolean;
begin
  Result := Length(Documento) = 11;
end;


end.
