object FormNuevoCliente: TFormNuevoCliente
  Left = 0
  Top = 0
  Caption = 'Nuevo Cliente'
  ClientHeight = 361
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 90
    Top = 45
    Width = 46
    Height = 13
    Caption = 'CUIT/DNI'
  end
  object Label2: TLabel
    Left = 90
    Top = 72
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label3: TLabel
    Left = 90
    Top = 99
    Width = 37
    Height = 13
    Caption = 'Apellido'
  end
  object Label4: TLabel
    Left = 90
    Top = 126
    Width = 43
    Height = 13
    Caption = 'Direccion'
  end
  object Label5: TLabel
    Left = 90
    Top = 153
    Width = 42
    Height = 13
    Caption = 'Telefono'
  end
  object Label6: TLabel
    Left = 93
    Top = 180
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label7: TLabel
    Left = 93
    Top = 208
    Width = 18
    Height = 13
    Caption = 'Mail'
  end
  object EditCuitCliente: TEdit
    Left = 170
    Top = 42
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditNombreCliente: TEdit
    Left = 170
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EditApellidoCliente: TEdit
    Left = 170
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EditDireccionCliente: TEdit
    Left = 170
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EditTelefonoCliente: TEdit
    Left = 170
    Top = 150
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EditCelularCliente: TEdit
    Left = 170
    Top = 177
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EditMailCliente: TEdit
    Left = 170
    Top = 205
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button1: TButton
    Left = 47
    Top = 284
    Width = 120
    Height = 50
    Caption = 'Aceptar'
    TabOrder = 7
    OnClick = Button1Click
  end
  object ButtonCancelarFormNuevoCliente: TButton
    Left = 218
    Top = 284
    Width = 120
    Height = 50
    Caption = 'Cancelar'
    TabOrder = 8
    OnClick = ButtonCancelarFormNuevoClienteClick
  end
end
