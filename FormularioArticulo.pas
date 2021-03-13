unit FormularioArticulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DataModule,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormArticulo = class(TForm)
    PanelBaraArticulo: TPanel;
    ButtonAgregarArticulo: TButton;
    ButtonModificarArticulo: TButton;
    ButtonEliminarArticulo: TButton;
    ButtonBuscarArticulo: TButton;
    EditBuscarArticulo: TEdit;
    RadioButtonCuitCliente: TRadioButton;
    RadioButtonNombreCliente: TRadioButton;
    ButtonLimpiarBusquedaArticulo: TButton;
    DBGrid2: TDBGrid;
    ButtonImprimirArticulo: TButton;
    ButtonSalirFormArticulo: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonSalirFormArticuloClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArticulo: TFormArticulo;

implementation

{$R *.dfm}

procedure TFormArticulo.ButtonSalirFormArticuloClick(Sender: TObject);
begin
  FormArticulo.Close;
end;

procedure TFormArticulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
