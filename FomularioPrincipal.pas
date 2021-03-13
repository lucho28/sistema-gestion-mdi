unit FomularioPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ComCtrls, Vcl.Menus, FormularioAltaCliente, FormularioArticulo;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Altas1: TMenuItem;
    Cliente1: TMenuItem;
    Articulos1: TMenuItem;
    Panel1: TPanel;
    procedure Cliente1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Articulos1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}





procedure TFormPrincipal.Articulos1Click(Sender: TObject);
begin
  if FormArticulo.Active then
  begin

  end
  else
  begin
    FormArticulo := TFormArticulo.Create(Self);
    FormArticulo.Show;
  end;
end;

procedure TFormPrincipal.Cliente1Click(Sender: TObject);
begin
  if FormCliente.Active then
  begin

  end
  else
  begin
  FormCliente := TFormCliente.Create(Self);
  FormCliente.Show;
  end;

end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  FormCliente.Close;
  FormArticulo.Close;
end;

end.
