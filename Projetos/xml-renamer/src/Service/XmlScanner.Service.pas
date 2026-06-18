unit XmlScanner.Service;

interface

uses
  System.Generics.Collections,
  XmlInfo.Model,
   System.IOUtils,
  System.SysUtils,
  System.Classes,
  System.RegularExpressions;

type
  TXmlScannerService = class
  public
    function LerPasta(const APasta: string): TObjectList<TXmlInfo>;
    function ExtrairChave(const AArquivo: string): string;
  end;

implementation

function TXmlScannerService.ExtrairChave(const AArquivo: string): string;
var
Conteudo: string;
Match: TMatch;

begin
Result := '';

Conteudo := TFile.ReadAllText(AArquivo, TEncoding.UTF8);

Match := TRegEx.Match(Conteudo, 'Id="NFe(\d{44})"');

if Match.Success then
 Result := Match.Groups[1].Value;

end;

function TXmlScannerService.LerPasta(
  const APasta: string): TObjectList<TXmlInfo>;
var
  Arquivo: string;
  XmlInfo: TXmlInfo;
begin
  Result := TObjectList<TXmlInfo>.Create(True);

  for Arquivo in TDirectory.GetFiles(APasta, '*.xml') do
  begin
    XmlInfo := TXmlInfo.Create;
    XmlInfo.ArquivoOriginal := Arquivo;

      XmlInfo.ChaveDeAcesso := ExtrairChave(Arquivo);

  XmlInfo.NovoNome :=
    XmlInfo.ChaveDeAcesso + '-nfe.xml';

  XmlInfo.Valido :=
    XmlInfo.ChaveDeAcesso <> '';

    Result.Add(XmlInfo);
  end;
end;

end.
