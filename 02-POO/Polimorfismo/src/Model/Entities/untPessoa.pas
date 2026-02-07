unit untPessoa;

interface


type
  TPessoa = class(TInterfacedObject)
  private
    FNome: string;
    FDocumento: string;
  public
    property Nome: string read FNome write FNome;
    property Documento: string read FDocumento write FDocumento;

  end;

implementation

end.
