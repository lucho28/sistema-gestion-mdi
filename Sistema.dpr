program Sistema;

uses
  Vcl.Forms,
  FomularioPrincipal in 'FomularioPrincipal.pas' {FormPrincipal},
  FormularioAltaCliente in 'FormularioAltaCliente.pas' {FormCliente},
  DataModule in 'DataModule.pas' {DataModule8: TDataModule},
  FormularioNuevoCliente in 'FormularioNuevoCliente.pas' {FormNuevoCliente},
  FormularioModificarCliente in 'FormularioModificarCliente.pas' {FormModificarCliente},
  FormularioArticulo in 'FormularioArticulo.pas' {FormArticulo},
  FormularioNuevoArticulo in 'FormularioNuevoArticulo.pas' {FormNuevoArticuli};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCliente, FormCliente);
  Application.CreateForm(TDataModule8, DataModule8);
  Application.CreateForm(TFormNuevoCliente, FormNuevoCliente);
  Application.CreateForm(TFormModificarCliente, FormModificarCliente);
  Application.CreateForm(TFormArticulo, FormArticulo);
  Application.CreateForm(TFormNuevoArticuli, FormNuevoArticuli);
  Application.Run;
end.
