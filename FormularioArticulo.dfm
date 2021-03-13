object FormArticulo: TFormArticulo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Articulos'
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
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBaraArticulo: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 60
    Align = alTop
    TabOrder = 0
    object ButtonAgregarArticulo: TButton
      Left = 0
      Top = 0
      Width = 100
      Height = 59
      BiDiMode = bdLeftToRight
      Caption = 'Agregar'
      ParentBiDiMode = False
      TabOrder = 0
    end
    object ButtonModificarArticulo: TButton
      Left = 99
      Top = 0
      Width = 100
      Height = 59
      Caption = 'Visualizar/Modificar'
      TabOrder = 1
    end
    object ButtonEliminarArticulo: TButton
      Left = 198
      Top = 0
      Width = 100
      Height = 59
      Caption = 'Eliminar'
      TabOrder = 2
    end
    object ButtonBuscarArticulo: TButton
      Left = 297
      Top = 0
      Width = 100
      Height = 59
      Caption = 'Buscar'
      TabOrder = 3
    end
    object EditBuscarArticulo: TEdit
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
    object ButtonLimpiarBusquedaArticulo: TButton
      Left = 688
      Top = 31
      Width = 98
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 7
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 60
    Width = 794
    Height = 467
    Align = alTop
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idarticulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descripcion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stock'
        Visible = True
      end>
  end
  object ButtonImprimirArticulo: TButton
    Left = 526
    Top = 530
    Width = 120
    Height = 40
    Caption = 'Imprimir'
    TabOrder = 2
  end
  object ButtonSalirFormArticulo: TButton
    Left = 673
    Top = 530
    Width = 120
    Height = 40
    Caption = 'Salir'
    TabOrder = 3
    OnClick = ButtonSalirFormArticuloClick
  end
end
