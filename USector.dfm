object FrmSector: TFrmSector
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  BorderIcons = [biSystemMenu]
  Caption = 'Sector'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 119
    Height = 13
    Caption = 'Transparencia: (Solo NT)'
  end
  object TB: TTrackBar
    Left = 0
    Top = 16
    Width = 121
    Height = 41
    Max = 255
    Position = 255
    TabOrder = 0
    OnChange = TBChange
  end
end
