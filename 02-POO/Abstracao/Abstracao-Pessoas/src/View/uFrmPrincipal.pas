unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uPessoa;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    mmPessoas: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var
 Pessoa: TPessoa;

begin

Pessoa := TPessoa.Create;

try

 Pessoa.Nome := 'Maria';
 Pessoa.TipoPessoa := 'Física';
 Pessoa.CPFCNPJ := '12312312312';

mmPessoas.Lines.Add(Pessoa.Nome);
mmPessoas.Lines.Add(Pessoa.TipoPessoa);
mmPessoas.Lines.Add(Pessoa.CPFCNPJ);

finally
 Pessoa.Free;
end;


end;

end.
