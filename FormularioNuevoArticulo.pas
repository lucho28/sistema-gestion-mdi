unit FormularioNuevoArticulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormNuevoArticuli = class(TForm)
    EditCodigoArticulo: TEdit;
    EditDescripcionArticulo: TEdit;
    EditPrecioArticulo: TEdit;
    EditStockArticulo: TEdit;
    EditTelefonoCliente: TEdit;
    EditCelularCliente: TEdit;
    EditMailCliente: TEdit;
    ButtonAceptarNuevoArticulo: TButton;
    ButtonCancelarFormNuevoArticulo: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure ButtonAceptarNuevoArticuloClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNuevoArticuli: TFormNuevoArticuli;

implementation

{$R *.dfm}

procedure TFormNuevoArticuli.ButtonAceptarNuevoArticuloClick(Sender: TObject);


begin

  if EditCodigoArticulo.Text = '' then
  begin
    case
      Application.MessageBox('El campo CUIT/DNI no puede estar vacio. Por favor ingrese un CUIT/DNI.',
      'ERROR!', MB_RETRYCANCEL + MB_ICONSTOP) of
      IDCANCEL:
        begin
          //ButtonCancelarFormNuevoClienteClick(Self);
        end;
      IDRETRY:
        begin
          EditCodigoArticulo.SetFocus;
        end;
    end;

  end
  else
  begin
    case
      Application.MessageBox('Desea guardar los datos para un nuevo cliente?',
      'AVISO!', MB_YESNO + MB_ICONWARNING) of
      IDYES:
        begin
          //CrearNuevoCliente(Self);
        end;
      IDNO:
        begin
          EditCodigoArticulo.SetFocus;
        end;
    end;
  end;


end;

end.
