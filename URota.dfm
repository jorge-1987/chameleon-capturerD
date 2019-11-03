object FrmRota: TFrmRota
  Left = 196
  Top = 111
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Rotacion'
  ClientHeight = 107
  ClientWidth = 251
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
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 251
    Height = 81
    Caption = 'Tras la rotacion:'
    ItemIndex = 0
    Items.Strings = (
      'No modificar el tama'#241'o de la imagen'
      'Modificar para evitar el recorte de rotacion')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 0
    Top = 82
    Width = 251
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
