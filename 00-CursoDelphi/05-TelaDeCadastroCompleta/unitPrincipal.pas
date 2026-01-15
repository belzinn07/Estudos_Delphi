unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PageControl1: TPageControl;
    tsDadosPessoais: TTabSheet;
    tsDadosConjugue: TTabSheet;
    tsDadosTrabalho: TTabSheet;
    tsAnaliseCredito: TTabSheet;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit5: TEdit;
    Label3: TLabel;
    Edit6: TEdit;
    Label4: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit11: TEdit;
    CheckBox1: TCheckBox;
    Label9: TLabel;
    Edit12: TEdit;
    Label10: TLabel;
    Edit13: TEdit;
    Label11: TLabel;
    Edit14: TEdit;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Edit15: TEdit;
    Label13: TLabel;
    Edit16: TEdit;
    ComboBox2: TComboBox;
    Label14: TLabel;
    Label15: TLabel;
    Edit17: TEdit;
    Label16: TLabel;
    Edit18: TEdit;
    Label17: TLabel;
    Edit19: TEdit;
    Label18: TLabel;
    Edit20: TEdit;
    Label19: TLabel;
    Edit21: TEdit;
    Label20: TLabel;
    Edit22: TEdit;
    Label21: TLabel;
    Edit23: TEdit;
    Label22: TLabel;
    Edit24: TEdit;
    Edit25: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Edit26: TEdit;
    Label25: TLabel;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
