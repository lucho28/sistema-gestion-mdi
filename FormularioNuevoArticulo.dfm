object FormNuevoArticuli: TFormNuevoArticuli
  Left = 0
  Top = 0
  Caption = 'FormNuevoArticuli'
  ClientHeight = 388
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 70
    Top = 45
    Width = 33
    Height = 13
    Caption = 'Codigo'
  end
  object Label2: TLabel
    Left = 16
    Top = 72
    Width = 54
    Height = 13
    Caption = 'Descripcion'
  end
  object Label3: TLabel
    Left = 76
    Top = 99
    Width = 29
    Height = 13
    Caption = 'Precio'
  end
  object Label4: TLabel
    Left = 76
    Top = 126
    Width = 26
    Height = 13
    Caption = 'Stock'
  end
  object EditCodigoArticulo: TEdit
    Left = 120
    Top = 42
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditDescripcionArticulo: TEdit
    Left = 76
    Top = 69
    Width = 295
    Height = 21
    TabOrder = 1
  end
  object EditPrecioArticulo: TEdit
    Left = 120
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EditStockArticulo: TEdit
    Left = 120
    Top = 123
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EditTelefonoCliente: TEdit
    Left = 120
    Top = 182
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EditCelularCliente: TEdit
    Left = 120
    Top = 209
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EditMailCliente: TEdit
    Left = 120
    Top = 237
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object ButtonAceptarNuevoArticulo: TButton
    Left = 47
    Top = 308
    Width = 120
    Height = 50
    Caption = 'Aceptar'
    TabOrder = 7
    OnClick = ButtonAceptarNuevoArticuloClick
  end
  object ButtonCancelarFormNuevoArticulo: TButton
    Left = 218
    Top = 308
    Width = 120
    Height = 50
    Caption = 'Cancelar'
    TabOrder = 8
  end
end
