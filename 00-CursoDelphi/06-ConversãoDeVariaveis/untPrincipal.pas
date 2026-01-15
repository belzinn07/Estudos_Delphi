unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    GroupBox1: TGroupBox;
    edtValor1: TEdit;
    lblValor2: TLabel;
    btnSomar: TButton;
    edtValor2: TEdit;
    Label1: TLabel;
    edtResultado: TEdit;
    procedure btnSomarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSomarClick(Sender: TObject);
var
total, primeiroValor,segundoValor : Double;

begin
  primeiroValor := StrToFloatDef(edtValor1.Text,0);
  segundoValor  := StrToFloatDef(edtValor2.Text,0);

  total := StrToFloat(edtResultado.Text);
  edtResultado.Text  := FloatToStr(total);
end;

end.

