object FrmMasivo: TFrmMasivo
  Left = 198
  Top = 1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Modificador de Tama'#241'os Masivo.'
  ClientHeight = 424
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 34
    Height = 13
    Caption = 'Origen:'
  end
  object Label2: TLabel
    Left = 152
    Top = 0
    Width = 36
    Height = 13
    Caption = 'Destino'
  end
  object Label3: TLabel
    Left = 152
    Top = 280
    Width = 169
    Height = 13
    Caption = 'Detalle segun seleccion de nombre:'
  end
  object Label4: TLabel
    Left = 304
    Top = 16
    Width = 69
    Height = 13
    Caption = 'Ancho Nuevo:'
  end
  object Label5: TLabel
    Left = 304
    Top = 32
    Width = 49
    Height = 13
    Caption = '(En Pixels)'
  end
  object Label6: TLabel
    Left = 304
    Top = 88
    Width = 56
    Height = 13
    Caption = 'Alto Nuevo:'
  end
  object Label7: TLabel
    Left = 304
    Top = 104
    Width = 49
    Height = 13
    Caption = '(En Pixels)'
  end
  object Label8: TLabel
    Left = 0
    Top = 192
    Width = 104
    Height = 13
    Caption = 'Imagenes a Modificar:'
  end
  object Bar: TGauge
    Left = 304
    Top = 160
    Width = 92
    Height = 41
    Progress = 0
  end
  object ImgC: TImage
    Left = 304
    Top = 56
    Width = 105
    Height = 105
    Visible = False
  end
  object ImgD: TImage
    Left = 192
    Top = 160
    Width = 105
    Height = 105
    Visible = False
  end
  object Button1: TButton
    Left = 152
    Top = 320
    Width = 241
    Height = 25
    Caption = 'Modificar Tama'#241'os'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DcO: TDriveComboBox
    Left = 0
    Top = 16
    Width = 145
    Height = 19
    DirList = DlO
    TabOrder = 1
  end
  object DlO: TDirectoryListBox
    Left = 0
    Top = 40
    Width = 145
    Height = 153
    FileList = Flb
    ItemHeight = 16
    TabOrder = 2
  end
  object Flb: TFileListBox
    Left = 0
    Top = 208
    Width = 145
    Height = 137
    ItemHeight = 13
    Mask = '*.jpg'
    TabOrder = 3
  end
  object DcD: TDriveComboBox
    Left = 152
    Top = 16
    Width = 145
    Height = 19
    DirList = DlD
    TabOrder = 4
  end
  object DlD: TDirectoryListBox
    Left = 152
    Top = 40
    Width = 145
    Height = 153
    ItemHeight = 16
    TabOrder = 5
  end
  object EdtN: TEdit
    Left = 152
    Top = 296
    Width = 241
    Height = 21
    TabOrder = 6
  end
  object RgName: TRadioGroup
    Left = 8
    Top = 352
    Width = 385
    Height = 65
    Caption = 'Destino'
    ItemIndex = 2
    Items.Strings = (
      'Nombre seleccionado, m'#225's aumento progresivo.'
      'Nombre original, Lugar Original. (Sobreescribir).'
      'Nombre Original, mas Detalle.')
    TabOrder = 7
  end
  object RgO: TRadioGroup
    Left = 152
    Top = 208
    Width = 113
    Height = 65
    Caption = 'Formato Origen'
    ItemIndex = 0
    Items.Strings = (
      'Jpg'
      'Bmp')
    TabOrder = 8
    OnClick = RgOClick
  end
  object RgD: TRadioGroup
    Left = 280
    Top = 208
    Width = 113
    Height = 65
    Caption = 'Formato Destino'
    ItemIndex = 0
    Items.Strings = (
      'Jpg'
      'Bmp')
    TabOrder = 9
  end
  object EdtW: TEdit
    Left = 304
    Top = 48
    Width = 89
    Height = 21
    TabOrder = 10
    Text = '100'
  end
  object Panel1: TPanel
    Left = 304
    Top = 72
    Width = 90
    Height = 10
    TabOrder = 11
  end
  object EdtH: TEdit
    Left = 304
    Top = 120
    Width = 89
    Height = 21
    TabOrder = 12
    Text = '100'
  end
  object Panel2: TPanel
    Left = 304
    Top = 146
    Width = 90
    Height = 10
    TabOrder = 13
  end
end
