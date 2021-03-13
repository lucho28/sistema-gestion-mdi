object FormModificarCliente: TFormModificarCliente
  Left = 0
  Top = 0
  Caption = 'Modificar Cliente'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LabelClienteId: TLabel
    Left = 122
    Top = 43
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object LabelClienteNombre: TLabel
    Left = 96
    Top = 97
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object LabelClienteApellido: TLabel
    Left = 96
    Top = 124
    Width = 37
    Height = 13
    Caption = 'Apellido'
  end
  object LabelClienteDni: TLabel
    Left = 87
    Top = 70
    Width = 46
    Height = 13
    Caption = 'CUIT/DNI'
  end
  object LabelClienteDireccion: TLabel
    Left = 81
    Top = 151
    Width = 43
    Height = 13
    Caption = 'Direccion'
  end
  object LabelClienteTelefono: TLabel
    Left = 81
    Top = 178
    Width = 42
    Height = 13
    Caption = 'Telefono'
  end
  object LabelClienteCelular: TLabel
    Left = 83
    Top = 205
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object LabelClienteMail: TLabel
    Left = 83
    Top = 232
    Width = 18
    Height = 13
    Caption = 'Mail'
  end
  object ButtonAceptarFormModificarCliente: TButton
    Left = 49
    Top = 288
    Width = 120
    Height = 50
    Caption = 'Aceptar'
    TabOrder = 0
    OnClick = ButtonAceptarFormModificarClienteClick
  end
  object EditNombreCliente: TEdit
    Left = 154
    Top = 94
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EditApellidoCliente: TEdit
    Left = 154
    Top = 121
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EditCuitCliente: TEdit
    Left = 154
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EditIdCliente: TEdit
    Left = 154
    Top = 40
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object EditCelularCliente: TEdit
    Left = 154
    Top = 202
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EditMailCliente: TEdit
    Left = 154
    Top = 229
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object EditTelefonoCliente: TEdit
    Left = 154
    Top = 175
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object EditDireccionCliente: TEdit
    Left = 154
    Top = 148
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object ButtonCancelarFormModificarCliente: TButton
    Left = 219
    Top = 288
    Width = 120
    Height = 50
    Caption = 'Cancelar'
    TabOrder = 9
    OnClick = ButtonCancelarFormModificarClienteClick
  end
end
