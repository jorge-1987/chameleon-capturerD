object FrmConf: TFrmConf
  Left = 207
  Top = 135
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configuraciones Generales'
  ClientHeight = 345
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PC: TPageControl
    Left = 0
    Top = 0
    Width = 356
    Height = 304
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'IconTray'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 130
        Height = 13
        Caption = 'Al minimizar en la barra tray:'
      end
      object Label2: TLabel
        Left = 0
        Top = 16
        Width = 156
        Height = 13
        Caption = 'Al hacer un ckick sobre el Icono:'
      end
      object Label7: TLabel
        Left = 168
        Top = 16
        Width = 96
        Height = 13
        Caption = 'Al hacer doble click:'
      end
      object Label8: TLabel
        Left = 96
        Top = 136
        Width = 112
        Height = 13
        Caption = 'Al hacer Click Derecho:'
      end
      object RadioGroup1: TRadioGroup
        Left = 0
        Top = 32
        Width = 161
        Height = 97
        ItemIndex = 4
        Items.Strings = (
          'Restaurar'
          'Capturar'
          'Capturar + Restaurar'
          'Menu'
          'Nada')
        TabOrder = 0
      end
      object RadioGroup3: TRadioGroup
        Left = 168
        Top = 32
        Width = 169
        Height = 97
        ItemIndex = 0
        Items.Strings = (
          'Restaurar'
          'Capturar'
          'Capturar + Restaurar'
          'Menu'
          'Nada')
        TabOrder = 1
      end
      object RadioGroup4: TRadioGroup
        Left = 64
        Top = 152
        Width = 185
        Height = 97
        ItemIndex = 3
        Items.Strings = (
          'Restaurar'
          'Capturar'
          'Capturar + Restaurar'
          'Menu'
          'Nada')
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Capturas'
      ImageIndex = 1
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 99
        Height = 13
        Caption = 'Captura Instantanea:'
      end
      object Label4: TLabel
        Left = 0
        Top = 16
        Width = 153
        Height = 13
        Caption = 'Delay de la captura instantanea:'
      end
      object Label5: TLabel
        Left = 80
        Top = 38
        Width = 89
        Height = 26
        Caption = 'En Milisegundos, '#13#10'333 recomendada.'
      end
      object Label6: TLabel
        Left = 0
        Top = 104
        Width = 90
        Height = 13
        Caption = 'Sector Predefinido:'
      end
      object Edit1: TEdit
        Left = 0
        Top = 40
        Width = 73
        Height = 21
        MaxLength = 5
        TabOrder = 0
        Text = '333'
      end
      object RgSector: TRadioGroup
        Left = 0
        Top = 120
        Width = 345
        Height = 73
        ItemIndex = 0
        Items.Strings = (
          'Seleccionar Cada Vez'
          'Seleccionar Manualmente')
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Generales'
      ImageIndex = 2
      object Label9: TLabel
        Left = 0
        Top = 120
        Width = 340
        Height = 65
        Caption = 
          'Para usar en "una" Computadora, es ideal dejar que el programa g' +
          'uarde'#13#10' las configuraciones en el Directorio de Windows, caso co' +
          'ntrario,'#13#10' si el programa sera utilizado en un Pendrive, es reco' +
          'mendable'#13#10' que las configuraciones se guarden en la misma carpet' +
          'a que'#13#10' en la que recide el ejecutable.'
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 345
        Height = 33
        TabOrder = 0
        object CheckBox1: TCheckBox
          Left = 8
          Top = 8
          Width = 329
          Height = 17
          Caption = 'Iniciar Chameleon Capturer con el Sistema Operativo'
          TabOrder = 0
        end
      end
      object RadioGroup5: TRadioGroup
        Left = 0
        Top = 40
        Width = 345
        Height = 73
        Caption = 'Archivo de Configuracion'
        Items.Strings = (
          'Almacenar las Configuraciones en el directorio de Windows'
          'Almacenar las configuraciones en el Directorio Actual')
        TabOrder = 1
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Lenguaje'
      ImageIndex = 3
      object Label10: TLabel
        Left = 0
        Top = 0
        Width = 164
        Height = 13
        Caption = 'Lenguajes basicos seleccionables:'
      end
      object Label11: TLabel
        Left = 0
        Top = 112
        Width = 163
        Height = 13
        Caption = 'Lenguajes Agregados Disponibles:'
      end
      object Label12: TLabel
        Left = 0
        Top = 208
        Width = 141
        Height = 13
        Caption = 'Agregar Archivo de Lenguaje:'
      end
      object ListBox1: TListBox
        Left = 72
        Top = 128
        Width = 177
        Height = 73
        ItemHeight = 13
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 0
        Top = 224
        Width = 257
        Height = 21
        TabOrder = 1
        Text = 'C:\english.lng'
      end
      object Button1: TButton
        Left = 104
        Top = 248
        Width = 121
        Height = 25
        Caption = 'Agregar'
        TabOrder = 2
      end
      object RadioGroup6: TRadioGroup
        Left = 64
        Top = 16
        Width = 185
        Height = 89
        Caption = 'Lenguajes:'
        ItemIndex = 0
        Items.Strings = (
          'Castellano'
          'Portugues'
          'Ingles'
          'Lenguaje Agregado')
        TabOrder = 3
      end
      object Button2: TButton
        Left = 264
        Top = 224
        Width = 75
        Height = 25
        Caption = 'Buscar'
        TabOrder = 4
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 304
    Width = 356
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BorderWidth = 5
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 272
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Aplicar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
