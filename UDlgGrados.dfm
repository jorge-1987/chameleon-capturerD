object FrmGrados: TFrmGrados
  Left = 196
  Top = 225
  BorderStyle = bsDialog
  Caption = 'Grados'
  ClientHeight = 85
  ClientWidth = 181
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 6
    Width = 122
    Height = 26
    Caption = 'Ingrese grados deseados.'#13#10'      Ej: -15, 12, -5. 10'
  end
  object EdtGrados: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '35'
    OnKeyPress = EdtGradosKeyPress
  end
  object BtnAceptar: TButton
    Left = 48
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = BtnAceptarClick
  end
end
