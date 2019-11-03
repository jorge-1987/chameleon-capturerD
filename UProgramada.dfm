object FrmProgramada: TFrmProgramada
  Left = 192
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Captura Programada'
  ClientHeight = 243
  ClientWidth = 188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 64
    Width = 175
    Height = 26
    Caption = 'Indique dentro de cuanto desea que '#13#10'sea realizada la captura:'
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 16
    Height = 13
    Caption = 'HH'
  end
  object Label3: TLabel
    Left = 38
    Top = 116
    Width = 3
    Height = 13
    Caption = ':'
  end
  object Label4: TLabel
    Left = 79
    Top = 116
    Width = 3
    Height = 13
    Caption = ':'
  end
  object Label5: TLabel
    Left = 48
    Top = 96
    Width = 18
    Height = 13
    Caption = 'MM'
  end
  object Label6: TLabel
    Left = 88
    Top = 96
    Width = 14
    Height = 13
    Caption = 'SS'
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 185
    Height = 57
    Caption = 'Tipo de Programacion'
    Items.Strings = (
      'Dentro De:'
      'A Las:')
    TabOrder = 0
  end
  object HH: TEdit
    Left = 8
    Top = 112
    Width = 25
    Height = 21
    MaxLength = 3
    TabOrder = 1
    Text = '120'
  end
  object MM: TEdit
    Left = 48
    Top = 112
    Width = 25
    Height = 21
    MaxLength = 2
    TabOrder = 2
    Text = '15'
  end
  object SS: TEdit
    Left = 88
    Top = 112
    Width = 25
    Height = 21
    MaxLength = 2
    TabOrder = 3
    Text = '50'
  end
end
