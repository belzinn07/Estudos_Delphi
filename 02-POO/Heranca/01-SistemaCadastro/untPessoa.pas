unit untPessoa;

interface

type
  TPessoa = class
    protected
      FNome: string;
      FDocumento: string;
    public
      property Nome: string read FNome write FNome;
      property Documento: string read FDocumento write FDocumento;

      function ValidarDocumento: Boolean; virtual;
  end;

implementation

function TPessoa.ValidarDocumento: Boolean;
begin
  Result := True;
end;

end.
