object FrmTrazo: TFrmTrazo
  Left = 196
  Top = 111
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Trazo del Lapiz'
  ClientHeight = 78
  ClientWidth = 165
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
    Left = 41
    Top = 0
    Width = 79
    Height = 13
    Caption = 'Grosor en Pixels:'
  end
  object Edit1: TEdit
    Left = 40
    Top = 16
    Width = 81
    Height = 21
    TabOrder = 0
    Text = '1'
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 18
    Top = 48
    Width = 129
    Height = 25
    Caption = 'Aplicar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
