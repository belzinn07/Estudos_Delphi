unit NfceDowloader.Service;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Net.HttpClient,
  System.IOUtils,
  System.Net.URLClient;


type
  TNfceDownloader = class
  private
    function ExtrairXmlDoHtml(const Html: string): string;
  public
    function BaixarXml(const AChave: string): string;
    function BaixarXmlMock(const Arquivo: string): string;
  end;

implementation



{ TNfceDownloader }

function TNfceDownloader.BaixarXml(const AChave: string): string;
var
  Http: THTTPClient;
  Resp: IHTTPResponse;
  Params: TStringList;
  Html: string;
begin
  Http := THTTPClient.Create;
  Params := TStringList.Create;
  try
    {
    Params.Add('Sistema=Nfce');
    Params.Add('OrigemSite=0');
    Params.Add('Ambiente=1');
    Params.Add('ChaveAcessoDfe=' + AChave);

    Resp := Http.Post(
      'https://dfe-portal.svrs.rs.gov.br/NfceSSL/DownloadXmlDfe',
      TStringStream.Create(
        Params.DelimitedText.Replace(',', '&'),
        TEncoding.UTF8
      )
    );}

    //Html := Resp.ContentAsString;

    TFile.WriteAllText(
  'retorno.html',
  Html,
  TEncoding.UTF8
);

    Result := ExtrairXmlDoHtml(Html);

  finally
    Params.Free;
    Http.Free;
  end;
end;

function TNfceDownloader.BaixarXmlMock(
  const Arquivo: string): string;
var
  Html: string;
begin
  Html := TFile.ReadAllText(
    Arquivo,
    TEncoding.UTF8
  );

Writeln('Tamanho HTML: ' + IntToStr(Length(Html)));
  Result := ExtrairXmlDoHtml(Html);
end;

function TNfceDownloader.ExtrairXmlDoHtml(const Html: string): string;
begin
    {
  if Pos('stringJson', Html) > 0 then
    Result := 'ENCONTROU'
  else
    Result := '';
     }

    Result := Html;
end;

end.
