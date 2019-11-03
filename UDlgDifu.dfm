object FrmDlgDifu: TFrmDlgDifu
  Left = 192
  Top = 107
  Width = 329
  Height = 231
  BorderIcons = [biSystemMenu]
  Caption = 'Difuso'
  Color = clBtnFace
  Constraints.MinHeight = 231
  Constraints.MinWidth = 329
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    321
    204)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 40
    Width = 52
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'CantPixels:'
  end
  object Label2: TLabel
    Left = 216
    Top = 88
    Width = 30
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Alpha:'
  end
  object SpeedButton1: TSpeedButton
    Left = 96
    Top = 152
    Width = 23
    Height = 23
    AllowAllUp = True
    Anchors = [akRight, akBottom]
    GroupIndex = 2
  end
  object SpeedButton2: TSpeedButton
    Left = 96
    Top = 176
    Width = 23
    Height = 23
    AllowAllUp = True
    Anchors = [akRight, akBottom]
    GroupIndex = 4
  end
  object SpeedButton3: TSpeedButton
    Left = 128
    Top = 160
    Width = 23
    Height = 23
    AllowAllUp = True
    Anchors = [akRight, akBottom]
    GroupIndex = 3
  end
  object SpeedButton4: TSpeedButton
    Left = 64
    Top = 160
    Width = 23
    Height = 23
    AllowAllUp = True
    Anchors = [akRight, akBottom]
    GroupIndex = 1
  end
  object BtnAplicar: TButton
    Left = 216
    Top = 176
    Width = 105
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Aplicar'
    TabOrder = 0
    OnClick = BtnAplicarClick
  end
  object Button2: TButton
    Left = 216
    Top = 8
    Width = 105
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Limpiar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 216
    Top = 144
    Width = 105
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Preview'
    TabOrder = 2
    OnClick = Button3Click
  end
  object SpinEdit1: TSpinEdit
    Left = 216
    Top = 56
    Width = 105
    Height = 22
    Anchors = [akRight, akBottom]
    MaxValue = 5000
    MinValue = 1
    TabOrder = 3
    Value = 1
  end
  object SpinEdit2: TSpinEdit
    Left = 216
    Top = 104
    Width = 105
    Height = 22
    Anchors = [akRight, akBottom]
    MaxValue = 255
    MinValue = 0
    TabOrder = 4
    Value = 1
  end
  object SB: TScrollBox
    Left = 0
    Top = 0
    Width = 209
    Height = 145
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 105
      Height = 105
      AutoSize = True
    end
  end
end
