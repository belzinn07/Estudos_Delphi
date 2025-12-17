unit CalculadorDeDescontos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    editPreco: TEdit;
    editDesconto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    labelResultado: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
    vPreco, vDesconto, vFinal : Double;

begin
  vPreco := StrToFloatDef(editPreco.Text, 0);
  vDesconto := StrToFloatDef(editDesconto.Text, 0);

  vfinal := vPreco - (vPreco * (vDesconto/100));

  labelResultado.Caption := FormatCurr('R$ #,##0.00', vFinal);
end;

end.
