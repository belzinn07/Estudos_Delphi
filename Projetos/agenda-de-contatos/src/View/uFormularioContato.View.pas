unit uFormularioContato.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  uContatoService, uContatoRepository, uDMPrincipal, uContato;

type
  TFormContato = class(TForm)
    pnlGeral: TPanel;
    edtNome: TEdit;
    Label1: TLabel;
    edtTelefone: TEdit;
    Label3: TLabel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FService: TContatoService;
  public
    ModoEdicao : Boolean;
    IDContato: Integer;
  end;

var
  FormContato: TFormContato;

implementation

{$R *.dfm}

procedure TFormContato.FormCreate(Sender: TObject);
begin

  FService := TContatoService.Create(TContatoRepository.Create(DMPrincipal));

end;

procedure TFormContato.FormDestroy(Sender: TObject);
begin
FService.Free;
end;



procedure TFormContato.FormShow(Sender: TObject);
var
  Contato: TContato;
begin
  if ModoEdicao then
  begin
    Contato := FService.BuscarPorId(IDContato);

    try
      edtNome.Text := Contato.Nome;
      edtTelefone.Text := Contato.Telefone;
    finally
      Contato.Free;
    end;
  end
  else
  begin
    edtNome.Clear;
    edtTelefone.Clear;
    IDContato := 0;
  end;
end;

procedure TFormContato.btnSalvarClick(Sender: TObject);
var
  Contato: TContato;
begin
  Contato := TContato.Create;

  try
    Contato.Id := IDContato;
    Contato.Nome := edtNome.Text;
    Contato.Telefone := edtTelefone.Text;

    try
      FService.Salvar(Contato);
      ShowMessage('Salvo com sucesso!');
      ModalResult := mrOk;

    except
      on E: Exception do
      begin
        ShowMessage(E.Message);
        Exit;
      end;
    end;

  finally
    Contato.Free;
  end;
end;




end.
