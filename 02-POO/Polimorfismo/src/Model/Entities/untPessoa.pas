unit untPessoa;

interface

type
  TPessoa = class(TInterfacedObject)
    protected
      FNome: string;
      FDocumento: string;
    public
      property Nome: string read FNome write FNome;
      property Documento: string read FDocumento write FDocumento;

      function ValidarDocumento : Boolean; virtual; abstract;

  end;
implementation

end.
