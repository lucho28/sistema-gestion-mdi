object FormCliente: TFormCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Clientes'
  ClientHeight = 571
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ScreenSnap = True
  ShowHint = True
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 60
    Width = 794
    Height = 468
    Align = alTop
    DataSource = DataModule8.DataSourceClientes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'idcliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cuit'
        Title.Caption = 'CUIT/DNI'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nombre'
        Title.Caption = 'Nombre'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'apellido'
        Title.Caption = 'Apellido'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'direccion'
        Title.Caption = 'Direccion'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefono'
        Title.Caption = 'Telefono'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Title.Caption = 'Celular'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mail'
        Title.Caption = 'Mail'
        Width = 150
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 118
    Top = 536
    Width = 81
    Height = 27
    Caption = 'Button1'
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 214
    Top = 540
    Width = 75
    Height = 23
    Caption = 'Avanzar'
    TabOrder = 2
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 538
    Width = 75
    Height = 25
    Caption = 'Retroceder'
    TabOrder = 3
    Visible = False
    OnClick = Button5Click
  end
  object PanelBarraCliente: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 60
    Align = alTop
    TabOrder = 4
    object ButtonAgregarCliente: TButton
      Left = 0
      Top = 0
      Width = 100
      Height = 59
      BiDiMode = bdLeftToRight
      Caption = 'Agregar'
      ParentBiDiMode = False
      TabOrder = 0
      OnClick = ButtonAgregarClienteClick
    end
    object ButtonModificarCliente: TButton
      Left = 99
      Top = 0
      Width = 100
      Height = 59
      Caption = 'Visualizar/Modificar'
      TabOrder = 1
      OnClick = ButtonModificarClienteClick
    end
    object ButtonEliminarCliente: TButton
      Left = 198
      Top = 0
      Width = 100
      Height = 59
      Caption = 'Eliminar'
      TabOrder = 2
      OnClick = ButtonEliminarClienteClick
    end
    object ButtonBuscarCliente: TButton
      Left = 297
      Top = 0
      Width = 100
      Height = 59
      Caption = 'Buscar'
      TabOrder = 3
      OnClick = ButtonBuscarClienteClick
    end
    object EditBuscarCliente: TEdit
      Left = 403
      Top = 8
      Width = 383
      Height = 21
      TabOrder = 4
    end
    object RadioButtonCuitCliente: TRadioButton
      Left = 424
      Top = 35
      Width = 65
      Height = 17
      Caption = 'CUIT/DNI'
      TabOrder = 5
    end
    object RadioButtonNombreCliente: TRadioButton
      Left = 519
      Top = 35
      Width = 62
      Height = 17
      Caption = 'Nombre'
      TabOrder = 6
    end
    object ButtonLimpiarBusqueda: TButton
      Left = 688
      Top = 31
      Width = 98
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 7
      OnClick = ButtonLimpiarBusquedaClick
    end
  end
  object ButtonImprimirCliente: TButton
    Left = 538
    Top = 530
    Width = 120
    Height = 40
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = ButtonImprimirClienteClick
  end
  object ButtonSalirFormCliente: TButton
    Left = 674
    Top = 530
    Width = 120
    Height = 40
    Caption = 'Salir'
    TabOrder = 6
    OnClick = ButtonSalirFormClienteClick
  end
  object Button2: TButton
    Left = 352
    Top = 537
    Width = 75
    Height = 25
    Caption = 'Reporte'
    TabOrder = 7
    OnClick = Button2Click
  end
end
