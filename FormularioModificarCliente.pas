unit FormularioModificarCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DataModule, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFormModificarCliente = class(TForm)
    LabelClienteId: TLabel;
    LabelClienteNombre: TLabel;
    LabelClienteApellido: TLabel;
    LabelClienteDni: TLabel;
    LabelClienteDireccion: TLabel;
    LabelClienteTelefono: TLabel;
    LabelClienteCelular: TLabel;
    LabelClienteMail: TLabel;
    ButtonAceptarFormModificarCliente: TButton;
    EditNombreCliente: TEdit;
    EditApellidoCliente: TEdit;
    EditCuitCliente: TEdit;
    EditIdCliente: TEdit;
    EditCelularCliente: TEdit;
    EditMailCliente: TEdit;
    EditTelefonoCliente: TEdit;
    EditDireccionCliente: TEdit;
    ButtonCancelarFormModificarCliente: TButton;
    procedure ButtonAceptarFormModificarClienteClick(Sender: TObject);
    procedure EditNombreClienteChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonCancelarFormModificarClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModificarCliente: TFormModificarCliente;

implementation

{$R *.dfm}

uses FormularioAltaCliente;

////////////////////////////////////////////////////////////////////////////////
//            PROCEDIMIENTO PARA MODIFICAR CLIENTES
//
////////////////////////////////////////////////////////////////////////////////

procedure TFormModificarCliente.ButtonAceptarFormModificarClienteClick(Sender: TObject);
begin
  with DataModule8 do
  begin
  case
      Application.MessageBox('Se modificaran los datos del cliente.' + #13#10 +
      '¿Desea continuar?', 'AVISO!', MB_YESNO + MB_ICONWARNING) of
            IDNO:
              begin
                EditCuitCliente.SetFocus;
              end;
            IDYES:
              begin
                SistemaConnection.StartTransaction;
                try
                  FDQueryClientes.SQL.Clear;
                  //FDQuery1.SQL.Text:='UPDATE cliente SET nombre='+quotedstr(EditNombreCliente.Text)+' WHERE idcliente="'+EditIdCliente.Text+'"';
                  FDQueryClientes.SQL.Add('UPDATE cliente SET cuit='+quotedstr(EditCuitCliente.Text)+'');
                  FDQueryClientes.SQL.Add(' WHERE idcliente="'+EditIdCliente.Text+'"');
                  FDQueryClientes.ExecSQL;
                  FDQueryClientes.SQL.Clear;
                  FDQueryClientes.SQL.Add('UPDATE cliente SET nombre='+quotedstr(EditNombreCliente.Text)+'');
                  FDQueryClientes.SQL.Add(' WHERE idcliente="'+EditIdCliente.Text+'"');
                  FDQueryClientes.ExecSQL;
                  FDQueryClientes.SQL.Clear;
                  FDQueryClientes.SQL.Add('UPDATE cliente SET apellido='+quotedstr(EditApellidoCliente.Text)+'');
                  FDQueryClientes.SQL.Add(' WHERE idcliente="'+EditIdCliente.Text+'"');
                  FDQueryClientes.ExecSQL;
                  FDQueryClientes.SQL.Clear;
                  FDQueryClientes.SQL.Add('UPDATE cliente SET direccion='+quotedstr(EditDireccionCliente.Text)+'');
                  FDQueryClientes.SQL.Add(' WHERE idcliente="'+EditIdCliente.Text+'"');
                  FDQueryClientes.ExecSQL;
                  FDQueryClientes.SQL.Clear;
                  FDQueryClientes.SQL.Add('UPDATE cliente SET telefono='+quotedstr(EditTelefonoCliente.Text)+'');
                  FDQueryClientes.SQL.Add(' WHERE idcliente="'+EditIdCliente.Text+'"');
                  FDQueryClientes.ExecSQL;
                  FDQueryClientes.SQL.Clear;
                  FDQueryClientes.SQL.Add('UPDATE cliente SET celular='+quotedstr(EditCelularCliente.Text)+'');
                  FDQueryClientes.SQL.Add(' WHERE idcliente="'+EditIdCliente.Text+'"');
                  FDQueryClientes.ExecSQL;
                  FDQueryClientes.SQL.Clear;
                  FDQueryClientes.SQL.Add('UPDATE cliente SET mail='+quotedstr(EditMailCliente.Text)+'');
                  FDQueryClientes.SQL.Add(' WHERE idcliente="'+EditIdCliente.Text+'"');
                  FDQueryClientes.ExecSQL;
                  FDQueryClientes.SQL.Clear;
                  FDQueryClientes.SQL.Text := ' SELECT * FROM cliente';
                  FDQueryClientes.Active := True;
                  except
                  SistemaConnection.Rollback;
                  raise
                  end;
                FormModificarCliente.Close;
              end;
    end;
  end;
end;



procedure TFormModificarCliente.ButtonCancelarFormModificarClienteClick(
  Sender: TObject);
begin
  FormModificarCliente.Close;
end;

procedure TFormModificarCliente.EditNombreClienteChange(Sender: TObject);
begin
  with DataModule8 do
  begin
    EditNombreCliente.Text := FDQueryClientes.FieldByName('nombre').Value;
  end;
end;



procedure TFormModificarCliente.FormShow(Sender: TObject);
begin
  with DataModule8 do
  begin

    EditIdCliente.Text := FDQueryClientes.FieldByName('idcliente').AsString;
    EditCuitCliente.Text := FDQueryClientes.FieldByName('cuit').AsString;
    EditNombreCliente.Text := FDQueryClientes.FieldByName('nombre').AsString;
    EditApellidoCliente.Text := FDQueryClientes.FieldByName('apellido').AsString;
    EditDireccionCliente.Text := FDQueryClientes.FieldByName('direccion').AsString;
    EditTelefonoCliente.Text := FDQueryClientes.FieldByName('telefono').AsString;
    EditCelularCliente.Text := FDQueryClientes.FieldByName('celular').AsString;
    EditMailCliente.Text := FDQueryClientes.FieldByName('mail').AsString;

    end;
end;

end.
