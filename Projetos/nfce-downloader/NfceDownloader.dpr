program NfceDownloader;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  NfceDowloader.Service in 'service\NfceDowloader.Service.pas';

var
  Chave: string;
  Downloader: TNfceDownloader;
  Xml: string;
begin
  try
    Write('Informe a chave: ');
    ReadLn(Chave);

    Downloader := TNfceDownloader.Create;
    try
      Xml := Downloader.BaixarXmlMock('retorno.html');

      if Xml <> '' then
      begin
        Writeln('XML obtido com sucesso.');
        Writeln(Copy(Xml, 1, 500));
      end
      else
        Writeln('Nenhum XML retornado.');
    finally
      Downloader.Free;
    end;

    Readln;
  except
    on E: Exception do
    begin
      Writeln(E.Message);
      Readln;
    end;
  end;
end.
