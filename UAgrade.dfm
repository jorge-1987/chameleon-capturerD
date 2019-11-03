object FrmAgrade: TFrmAgrade
  Left = 185
  Top = 102
  BorderStyle = bsDialog
  Caption = 'Agradecimientos'
  ClientHeight = 345
  ClientWidth = 376
  Color = 16776176
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 376
    Height = 345
    Align = alClient
    Color = 16776176
    TabOrder = 0
    object Memo1: TMemo
      Left = 9
      Top = 22
      Width = 359
      Height = 315
      Alignment = taCenter
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16776176
      Ctl3D = False
      Lines.Strings = (
        'A ClubDesarrolladores:'
        
          'Por haber apoyado al desarrollo de este software, y contribuido ' +
          'al'
        'mismo, sobre todo a "CID", quien ayudo mucho en las'
        'implementaciones de nuevas funcionalidades. A toda la'
        'comunidad, por haber aportado ideas nuevas.'
        'foros.clubdesarrolladores.com.ar'
        ''
        'A ClubDelphi:'
        
          'Por haber sido los primeros en ver el proyecto, y por sobre todo' +
          ' a '
        'Roman, quien ayudo en el primer codigo usado para la funcion de '
        'captura de pantalla.'
        'www.clubdelphi.com'
        ''
        'A los usuarios de internet:'
        'Por haberse molestado en bajar las primeras versiones,'
        'para comunicar como funcionaba, que les gustaba, o que les'
        'gustaria que tenga.'
        ''
        'A Trucomania, por ser una base fuerte de Codigos de Fuente, los'
        'cuales se usaron en este programa.'
        'http://www.q3.nu/trucomania/'
        ''
        
          'A Pehuen Pernigotti, quien fue el desarrollador de muchos de los' +
          ' '
        'efectos de este programa...'
        ''
        'S SourceForge.Net por darnos el espacio para crecer...')
      ParentCtl3D = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
