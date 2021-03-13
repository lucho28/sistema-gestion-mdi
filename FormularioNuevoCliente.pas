unit FormularioNuevoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DataModule;

type
  TFormNuevoCliente = class(TForm)
    EditCuitCliente: TEdit;
    EditNombreCliente: TEdit;
    EditApellidoCliente: TEdit;
    EditDireccionCliente: TEdit;
    EditTelefonoCliente: TEdit;
    EditCelularCliente: TEdit;
    EditMailCliente: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    ButtonCancelarFormNuevoCliente: TButton;
    procedure Button1Click(Sender: TObject);
    procedure CrearNuevoCliente(Sender: TObject);
    procedure ButtonCancelarFormNuevoClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNuevoCliente: TFormNuevoCliente;

implementation

{$R *.dfm}

procedure TFormNuevoCliente.Button1Click(Sender: TObject);


begin

  if EditCuitCliente.Text = '' then
  begin
    case
      Application.MessageBox('El campo CUIT/DNI no puede estar vacio. Por favor ingrese un CUIT/DNI.',
      'ERROR!', MB_RETRYCANCEL + MB_ICONSTOP) of
      IDCANCEL:
        begin
          ButtonCancelarFormNuevoClienteClick(Self);
        end;
      IDRETRY:
        begin
          EditCuitCliente.SetFocus;
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
          CrearNuevoCliente(Self);
        end;
      IDNO:
        begin
          EditCuitCliente.SetFocus;
        end;
    end;
  end;
  FormNuevoCliente.Close;

end;

procedure TFormNuevoCliente.ButtonCancelarFormNuevoClienteClick(Sender: TObject);
begin
  FormNuevoCliente.Close;
end;

////////////////////////////////////////////////////////////////////////////////
//      Procedimiento para guardar clientes
//
////////////////////////////////////////////////////////////////////////////////

procedure TFormNuevoCliente.CrearNuevoCliente(Sender: TObject);
begin

  with DataModule8 do
    begin
      SistemaConnection.StartTransaction;
      try
        FDQueryClientes.SQL.Clear;
        {FDQuery1.SQL.Text :=  'INSERT INTO cliente (nombre,apellido) values ' +
        '('+quotedstr(EditNombreCliente.Text)+','+quotedstr(EditApellidoCliente.Text)+')';
        FDQuery1.ExecSQL; }
        FDQueryClientes.SQL.Text :=  'INSERT INTO cliente (cuit,nombre,apellido,direccion,telefono,celular,mail) '+
        ' values ' +
        '('+quotedstr(EditCuitCliente.Text)+','+quotedstr(EditNombreCliente.Text)+
        ','+quotedstr(EditApellidoCliente.Text)+','+quotedstr(EditDireccionCliente.Text)+
        ','+quotedstr(EditTelefonoCliente.Text)+','+quotedstr(EditCelularCliente.Text)+
        ','+quotedstr(EditMailCliente.Text)+')';
        FDQueryClientes.ExecSQL;
        FDQueryClientes.SQL.Clear;
        FDQueryClientes.SQL.Text := ' SELECT * FROM cliente';
        FDQueryClientes.Active := True;
        SistemaConnection.Commit;
      except
        SistemaConnection.Rollback;
      raise

      end;

    end;

end;


end.
