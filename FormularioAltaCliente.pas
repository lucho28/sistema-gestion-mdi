unit FormularioAltaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, DataModule, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Menus, FormularioNuevoCliente, FormularioModificarCliente,
  Vcl.Buttons{, frxClass};

type
  TFormCliente = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    PanelBarraCliente: TPanel;
    ButtonAgregarCliente: TButton;
    ButtonModificarCliente: TButton;
    ButtonEliminarCliente: TButton;
    ButtonBuscarCliente: TButton;
    EditBuscarCliente: TEdit;
    RadioButtonCuitCliente: TRadioButton;
    RadioButtonNombreCliente: TRadioButton;
    ButtonLimpiarBusqueda: TButton;
    ButtonImprimirCliente: TButton;
    ButtonSalirFormCliente: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ToolButtonAgregarClienteClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ToolButtonEliminarClienteClick(Sender: TObject);
    procedure ToolButtonModificarClienteClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ButtonAgregarClienteClick(Sender: TObject);
    procedure ButtonModificarClienteClick(Sender: TObject);
    procedure ButtonEliminarClienteClick(Sender: TObject);
    procedure ButtonBuscarClienteClick(Sender: TObject);
    procedure ButtonLimpiarBusquedaClick(Sender: TObject);
    procedure ButtonImprimirClienteClick(Sender: TObject);
    procedure ButtonSalirFormClienteClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCliente: TFormCliente;
  Posicion: integer; {Variable para guardar el valor de la celda id de la dbgrid}
implementation

{$R *.dfm}

procedure TFormCliente.Button1Click(Sender: TObject);
begin
  ShowMessage (dbgrid1.Columns[0].Field.AsString);
end;



procedure TFormCliente.ButtonLimpiarBusquedaClick(Sender: TObject);
begin
  with DataModule8 do
  begin
    FDQueryClientes.OpenOrExecute;
    FDQueryClientes.SQL.Clear;
    FDQueryClientes.SQL.Text := ' SELECT * FROM cliente';
    FDQueryClientes.Active := True;
    RadioButtonNombreCliente.Checked := false;
    RadioButtonCuitCliente.Checked := false;
  end;
    EditBuscarCliente.Text := '';

end;

procedure TFormCliente.ButtonSalirFormClienteClick(Sender: TObject);
begin
  FormCliente.Close;
end;

procedure TFormCliente.Button4Click(Sender: TObject);
begin
  with DataModule8 Do
  Begin
    dbgrid1.DataSource.DataSet.MoveBy(1); { avanzar en el dbgrid }
  End;
end;

procedure TFormCliente.Button5Click(Sender: TObject);
begin
  with DataModule8 do
  begin
    dbgrid1.DataSource.DataSet.MoveBy(-1); { retroceder en la dbgrid }
  end;
end;

procedure TFormCliente.Button6Click(Sender: TObject);
begin
  Posicion := StrToInt(dbgrid1.Columns[0].Field.AsString);
  with DataModule8 do
  begin
    FDQueryClientes.SQL.Clear;
    FDQueryClientes.Active := false;
    //FDQuery1.SQL.Text := 'DELETE FROM cliente WHERE idcliente < 1000 ';
    FDQueryClientes.SQL.Text := 'UPDATE cliente SET nombre = "Eduardo" WHERE idcliente = '+IntToStr(Posicion)+' ';
    FDQueryClientes.ExecSQL;

    FDQueryClientes.OpenOrExecute;
    FDQueryClientes.SQL.Text := 'SELECT * FROM cliente';


    FDQueryClientes.Active := True;
    DBGrid1.Refresh;
  end;
end;



procedure TFormCliente.ButtonAgregarClienteClick(Sender: TObject);
begin
   if FormNuevoCliente.Active then
   begin

   end
   else
   begin
     FormNuevoCliente.Show;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//          PRECEDIMIENTO PARA BUSCAR CLIENTES
//          POR NOMBRE O POR CUIT/DNI
////////////////////////////////////////////////////////////////////////////////

procedure TFormCliente.ButtonBuscarClienteClick(Sender: TObject);
begin
  with DataModule8 do
  Begin
    if RadioButtonNombreCliente.Checked then
    begin
      if EditBuscarCliente.Text = '' then
        begin
          case
            Application.MessageBox('Por favor ingrese un Nombre para la busqueda. ',
            'ERROR!', MB_RETRYCANCEL + MB_ICONSTOP) of
            IDCANCEL:
              begin
                EditBuscarCliente.SetFocus;
              end;
            IDRETRY:
              begin
                EditBuscarCliente.SetFocus;
              end;
          end;
        end
      else
        begin
                  FDQueryClientes.Close;
                  FDQueryClientes.SQL.Clear;
                  FDQueryClientes.SQL.Text := 'SELECT * FROM cliente WHERE nombre LIKE '
                   + quotedstr('%'+editBuscarCliente.Text+'%') +  '  ';
                  FDQueryClientes.Open();
        end;
    end
    else if RadioButtonCuitCliente.Checked then
    begin
      if EditBuscarCliente.Text = '' then
        begin
          case
            Application.MessageBox('Por favor ingrese un Cuit/Dni para la busqueda. ',
            'ERROR!', MB_RETRYCANCEL + MB_ICONSTOP) of
            IDCANCEL:
              begin
                EditBuscarCliente.SetFocus;
              end;
            IDRETRY:
              begin
                EditBuscarCliente.SetFocus;
              end;
          end;
        end
      else
        begin
                FDQueryClientes.Close;
                FDQueryClientes.SQL.Clear;
                FDQueryClientes.SQL.Text := 'SELECT * FROM cliente WHERE cuit LIKE ' +
                quotedstr('%'+editBuscarCliente.Text+'%') +  '  ';
                FDQueryClientes.Open();
        end;

    end;
  End;


  
end;


////////////////////////////////////////////////////////////////////////////////
//      PROCEDIMIENTO PARA ELIMINAR CLIENTE
//      BOTON ELIMINAR FORMULARIO ALTA CLIENTE
////////////////////////////////////////////////////////////////////////////////


procedure TFormCliente.ButtonEliminarClienteClick(Sender: TObject);
begin
  Posicion := StrToInt(dbgrid1.Columns[0].Field.AsString); {Tomo el valor de la celda id de la dbgrid}
  With DataModule8 Do
  Begin
    case
      Application.MessageBox('Si elimina no podra recuperar los datos del cliente.' + #13#10 +
      '¿Desea continuar?', 'AVISO!', MB_YESNO + MB_ICONWARNING) of
            IDNO:
              begin
                EditBuscarCliente.SetFocus;
              end;
            IDYES:
              begin
                SistemaConnection.StartTransaction;
                try
                  FDQueryClientes.SQL.Clear;
                  FDQueryClientes.Active := false;
                  FDQueryClientes.SQL.Text := 'DELETE FROM cliente WHERE idcliente = '+IntToStr(Posicion)+' ';
                  FDQueryClientes.ExecSQL;

                  FDQueryClientes.OpenOrExecute;
                  FDQueryClientes.SQL.Text := 'SELECT * FROM cliente';


                  FDQueryClientes.Active := True;
                  DBGrid1.Refresh;
                  SistemaConnection.Commit;
                except
                  SistemaConnection.Rollback;
                  raise
                end;
              end;

    end;
  end;
end;

procedure TFormCliente.ButtonImprimirClienteClick(Sender: TObject);
begin

  with DataModule8 do
  begin
    //frxReport1.ShowReport();
  end;
end;

procedure TFormCliente.ButtonModificarClienteClick(Sender: TObject);
begin
  FormModificarCliente.Show;
end;

procedure TFormCliente.DBGrid1DblClick(Sender: TObject);
begin
  FormModificarCliente.Show;
end;



procedure TFormCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TFormCliente.ToolButton3Click(Sender: TObject);
begin
    with DataModule8 do
  Begin
    FDQueryClientes.Close;
    FDQueryClientes.SQL.Clear;
    //FDQuery1.Active := false;
    //FDQuery1.SQL.Text := 'DELETE FROM cliente WHERE idcliente < 1000 ';
    FDQueryClientes.SQL.Text := 'SELECT * FROM cliente WHERE nombre LIKE ' + quotedstr('%'+editBuscarCliente.Text+'%') +  '  ';
    FDQueryClientes.Open();

    //FDQuery1.ExecSQL;

    //FDQuery1.OpenOrExecute;
    //FDQuery1.SQL.Text := 'SELECT * FROM cliente';


    //FDQuery1.Active := True;
    //DBGrid1.Refresh;
  End;
end;

procedure TFormCliente.ToolButtonAgregarClienteClick(Sender: TObject);
begin
  FormNuevoCliente.Show;
end;

procedure TFormCliente.ToolButtonEliminarClienteClick(Sender: TObject);
begin
  Posicion := StrToInt(dbgrid1.Columns[0].Field.AsString); {Tomo el valor de la celda id de la dbgrid}
  With DataModule8 Do
  Begin
    FDQueryClientes.SQL.Clear;
    FDQueryClientes.Active := false;
    //FDQuery1.SQL.Text := 'DELETE FROM cliente WHERE idcliente < 1000 ';
    FDQueryClientes.SQL.Text := 'DELETE FROM cliente WHERE idcliente = '+IntToStr(Posicion)+' ';
    FDQueryClientes.ExecSQL;

    FDQueryClientes.OpenOrExecute;
    FDQueryClientes.SQL.Text := 'SELECT * FROM cliente';


    FDQueryClientes.Active := True;
    DBGrid1.Refresh;
  End;
end;

procedure TFormCliente.ToolButtonModificarClienteClick(Sender: TObject);
begin
  FormModificarCliente.Show;
end;

end.
