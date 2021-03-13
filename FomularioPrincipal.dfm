object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Software Lucho'
  ClientHeight = 506
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 480
    Width = 757
    Height = 26
    Align = alBottom
    Caption = 'Datos de usuarios y base de dato'
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 568
    Top = 352
    object Altas1: TMenuItem
      Caption = 'Inicio'
      object Cliente1: TMenuItem
        Caption = 'Clientes'
        OnClick = Cliente1Click
      end
      object Articulos1: TMenuItem
        Caption = 'Articulos'
        OnClick = Articulos1Click
      end
    end
  end
end
