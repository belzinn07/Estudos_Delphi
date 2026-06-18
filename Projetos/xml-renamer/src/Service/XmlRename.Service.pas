unit XmlRename.Service;

interface

uses
   XmlInfo.Model;

type
  TXmlRenameService = class
  public
    procedure Renomear(const AXmlInfo: TXmlInfo);
  end;

implementation

uses
  System.SysUtils,
  System.IOUtils;

procedure TXmlRenameService.Renomear(const AXmlInfo: TXmlInfo);
var
  NovoArquivo: string;
begin
  NovoArquivo := TPath.Combine(
    TPath.GetDirectoryName(AXmlInfo.ArquivoOriginal),
    AXmlInfo.NovoNome
  );

  if TFile.Exists(NovoArquivo) then
  raise Exception.CreateFmt(
    'Arquivo já existe: %s',
    [NovoArquivo]
  );

  TFile.Move(
    AXmlInfo.ArquivoOriginal,
    NovoArquivo
  );

  AXmlInfo.ArquivoOriginal := NovoArquivo;

end;

end.
