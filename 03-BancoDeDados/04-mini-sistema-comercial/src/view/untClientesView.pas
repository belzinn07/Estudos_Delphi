unit untClientesView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls,

  untClienteService, untFormularioClienteView;

type
  TfrmClientePrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dbgClientes: TDBGrid;
    btnNovo: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientePrincipal: TfrmClientePrincipal;

implementation

{$R *.dfm}

procedure TfrmClientePrincipal.btnEditarClick(Sender: TObject);
var
 Service: TClienteService;

begin



end;

procedure TfrmClientePrincipal.btnNovoClick(Sender: TObject);

begin

FormularioClientes.ShowModal;

end;

end.
