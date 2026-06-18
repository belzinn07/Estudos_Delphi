unit XmlInfo.Model;

interface
type
 TXmlInfo = class

  private
   FArquivoOriginal :   string;
   FChaveDeAcesso: string;
   FNovoNome: string;
   FValido : Boolean;

  public
   property ArquivoOriginal : string read FArquivoOriginal write FArquivoOriginal;
   property ChaveDeAcesso: string read FChaveDeAcesso write FChaveDeAcesso;
   property NovoNome: string read FNovoNome write FNovoNome;
   property Valido: Boolean read FValido write FValido;

 end;

implementation

end.
