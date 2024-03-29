{Copyright (c) 2006 - 2009,  Jorge Abreu
All rights reserved.

Redistribution and use in source and binary forms, with or without 
modification, are permitted provided that the following conditions are 
met:
Redistributions of source code must retain the above copyright notice, 
this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright 
notice, this list of conditions and the following disclaimer in the 
documentation and/or other materials provided with the distribution.
Neither the name of the Chameleon Capturer Project nor the names of 
its contributors may be used to endorse or promote products derived 
from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS 
AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED 
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A 
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL 
THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR 
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS 
OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY 
OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
POSSIBILITY OF SUCH DAMAGE.

https://sourceforge.net/projects/ccapturer/
}



unit UPrinc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Menus, XPMan, Buttons, OleCtrls, Types, SHDocVw, ShlObj,
  ExtDlgs, ShellApi, StdActns, Clipbrd;

type
  TFrmPrinc = class(TForm)
    PnlSup: TPanel;
    PnlInf: TPanel;
    RgFormato: TRadioGroup;
    RgTipoCaptura: TRadioGroup;
    MMPrinc: TMainMenu;
    Archivo1: TMenuItem;
    Salir1: TMenuItem;
    RgTiempo: TRadioGroup;
    EdtTiempo: TEdit;
    Label1: TLabel;
    XPManifest: TXPManifest;
    BtnCapturar: TButton;
    SbImg: TScrollBox;
    Img: TImage;
    RgVista: TRadioGroup;
    EdtGuardar: TEdit;
    BtnGuardar: TButton;
    Label2: TLabel;
    Windows1: TMenuItem;
    Seleccion1: TMenuItem;
    N1: TMenuItem;
    GuardarComo1: TMenuItem;
    Sp1: TSavePictureDialog;
    Ayuda1: TMenuItem;
    N2: TMenuItem;
    About1: TMenuItem;
    Ayuda2: TMenuItem;
    Opciones1: TMenuItem;
    Capturacontinua1: TMenuItem;
    RgSecu: TRadioGroup;
    CBExiste: TCheckBox;
    Agradecimientos1: TMenuItem;
    T1: TTimer;
    AbrirBMP1: TMenuItem;
    AbrirJPG1: TMenuItem;
    N3: TMenuItem;
    MnuSecundario: TPopupMenu;
    Restaurar1: TMenuItem;
    Cerrar1: TMenuItem;
    CapturaInstantanea1: TMenuItem;
    Capturaportiempo1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    DetenerCapturaSecuencial1: TMenuItem;
    TSeg: TTimer;
    N6: TMenuItem;
    N7: TMenuItem;
    CapturarVideo1: TMenuItem;
    HacerVideodeArchivos1: TMenuItem;
    N8: TMenuItem;
    ConfiguracionesGenerales1: TMenuItem;
    N9: TMenuItem;
    areasProgramadas1: TMenuItem;
    N10: TMenuItem;
    Sector1: TMenuItem;
    Edicion1: TMenuItem;
    CopiaralPortaPapeles1: TMenuItem;
    procedure Salir1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RgVistaClick(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
    procedure BtnCapturarClick(Sender: TObject);
    procedure ImgMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Seleccion1Click(Sender: TObject);
    procedure GuardarComo1Click(Sender: TObject);
    procedure ImgMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EdtTiempoKeyPress(Sender: TObject; var Key: Char);
    procedure About1Click(Sender: TObject);
    procedure Capturacontinua1Click(Sender: TObject);
    procedure RgTipoCapturaClick(Sender: TObject);
    procedure RgSecuClick(Sender: TObject);
    procedure Ayuda2Click(Sender: TObject);
    procedure Agradecimientos1Click(Sender: TObject);
    procedure T1Timer(Sender: TObject);
    procedure AbrirBMP1Click(Sender: TObject);
    procedure AbrirJPG1Click(Sender: TObject);
    procedure Restaurar1Click(Sender: TObject);
    procedure Cerrar1Click(Sender: TObject);
    procedure CapturaInstantanea1Click(Sender: TObject);
    procedure Capturaportiempo1Click(Sender: TObject);
    procedure DetenerCapturaSecuencial1Click(Sender: TObject);
    procedure TSegTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RgTiempoClick(Sender: TObject);
    procedure ConfiguracionesGenerales1Click(Sender: TObject);
    procedure Sector1Click(Sender: TObject);
    procedure CopiaralPortaPapeles1Click(Sender: TObject);
  private
    { Private declarations }
    IconData  : TNotifyIconData;
  public
    { Public declarations }
    Procedure resoluciones;
    Procedure GBmp(Direccion:String;Foto:TBitMap);
    Procedure GJpg(Direccion:String;Foto:TBitMap);
    Procedure GGBmp(Direccion:String;Foto:TBitMap);
    Procedure GGJpg(Direccion:String;Foto:TBitMap);
    procedure CVentana;
    procedure CActiva;
    procedure CSector;
    procedure CTotal;
    procedure CapSecuencial;
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;
    procedure Espabila(var Msg : TMessage); message WM_USER+1;
    procedure MostrarForm;
    procedure Devolver;
    procedure HacerVideo;
    Procedure Lineas(x1:Integer;y1:Integer;x2:Integer;y2:Integer);
 //   Procedure Lineah2(x1:Integer;y1:Integer;x2:Integer;y2:Integer);
 //   Procedure Lineav1(x1:Integer;y1:Integer;x2:Integer;y2:Integer);
 //   Procedure Lineav2(x1:Integer;y1:Integer;x2:Integer;y2:Integer);
    Function DMisDocu():string;
    Function DirectorioTemporal():string;
  end;

var
  FrmPrinc: TFrmPrinc;
  Tamareal   : Boolean;
  DirTmp     : String;
  MisDocu    : String;
  ImgTemp    : TBitMap;
  Corx1      : Integer;
  Corx2      : Integer;
  Cory1      : Integer;
  Cory2      : Integer;
  Cox1      : Integer;
  Cox2      : Integer;
  Coy1      : Integer;
  Coy2      : Integer;
  Last       : TRect;
  Actual     : TRect;
  CaTotal    : Boolean;
  Aux        : Integer;
  I          : Integer;
  Tiempo     : Integer;
//  TAhora     : TTime;
  I2         : Integer;
  Tiempot    : Integer;
  PortaPapeles : TClipboard;



implementation

uses USel, UAbout, UCapCon, UAgrade, UMasivo, UVideoConf, USector,
  UProgramada, UConf;

{$R *.dfm}

Procedure TFrmPrinc.Devolver;
Begin
  If RgVista.ItemIndex = 1 Then
    Begin
      Img.Canvas.CopyMode := cmSrcCopy;
      Img.Canvas.CopyRect(RECT(Cox1,Coy1,Cox2,Coy2), FrmSel.ImgSel.Canvas, RECT(0,0,FrmSel.ImgSel.Width,FrmSel.ImgSel.Height));
      Img.Canvas.CopyMode := cmPatInvert
    End
  Else
    Begin
      Img.Canvas.CopyMode := cmSrcCopy;
      Img.Canvas.CopyRect(RECT(Cox1*2,Coy1*2,Cox2*2,Coy2*2), FrmSel.ImgSel.Canvas, RECT(0,0,FrmSel.ImgSel.Width,FrmSel.ImgSel.Height));
      Img.Canvas.CopyMode := cmPatInvert
    End;
End;

Procedure TFrmPrinc.HacerVideo;
Begin
  //Para hacer el video AVI
  FrmVideoConf.ShowModal;
  //Pedir configuracion
  //Empezar
  //Forma de detener
  //Crear
End;

procedure TFrmPrinc.MostrarForm;
begin
  //Mostrar otra vez la app
  Show;
  Application.MainForm.Show;
    //ShowWindow(Application.Handle, SW_HIDE);
  //Esto esta en comentario temporalmente.
  //Eliminar el icono de la barra tray
  Shell_NotifyIcon(NIM_DELETE, @IconData);
  IconData.Wnd:=0;
end;

procedure TFrmPrinc.WMSysCommand(var Msg: TWMSysCommand);
begin
  if (Msg.CmdType = SC_MINIMIZE) then
  begin
    with IconData do
    begin
      cbSize := sizeof(IconData);
      Wnd := Handle;
      uID := 100;
      uFlags := NIF_MESSAGE + NIF_ICON + NIF_TIP;
      uCallbackMessage := WM_USER + 1;
      {Usamos de icono el mismo de la aplicacion}
      hIcon := Application.Icon.Handle;
      {Como Hint del icono, el nombre de la aplicacion}
      StrPCopy(szTip, Application.Title);
    end;
    {Ponemos el icono al lado del reloj}
    Shell_NotifyIcon(NIM_ADD, @IconData);
    {Ocultamos la Form...}
    Hide;
  end
  else DefaultHandler(Msg);
end;

procedure TFrmPrinc.Espabila(var Msg : TMessage);
{Aqui se recibe la pulsacion sobre el icono}
var
  p : TPoint;
begin
  //Click con el bot�n derecho
  if Msg.lParam = WM_RBUTTONUP then
    begin
      SetForegroundWindow(Handle);
      GetCursorPos(p);
      MnuSecundario.Popup(p.x, p.y);
      PostMessage(Handle, WM_NULL, 0, 0);
    end;

  //Click con el bot�n izquierdo
  if Msg.lParam = WM_LBUTTONUP then
    Begin
      FrmPrinc.WindowState := wsNormal;
      MostrarForm;
    End;
end;


Procedure TFrmPrinc.Resoluciones;
Var
  X,Y : Integer;
Begin
  X := Screen.DesktopWidth;
  Y := Screen.DesktopHeight;
  Img.Width := (X Div 2);
  Img.Height := (Y Div 2);

//Esto anda mal en el XP con el tema raro

//  FrmPrinc.ClientWidth := Img.Width;
//  FrmPrinc.ClientHeight := (PnlInf.Height + PnlSup.Height + SbImg.Height);

//  FrmPrinc.ClientWidth  := Img.Width;
//  FrmPrinc.ClientHeight := Img.Height + Panel1.Height + Panel2.Height;
  FrmPrinc.Width := (12 + (X Div 2));
  FrmPrinc.Height := (205 + (Y Div 2));
End;

Procedure TFrmPrinc.CapSecuencial;
//Var
//  StrAux : String;
Begin
  {
  Es un kilombo, tengo que buscar
  Simplificarlo un poco...
  }
  Cerrar1.Enabled := False;
  CapturaInstantanea1.Enabled := False;
  Capturaportiempo1.Enabled := False;
  I := 0;
  I2 := 100;
  FrmSel.Close;
  If FrmCapCon.RGTipo.ItemIndex = 0 Then
    Begin
      If BtnCapturar.Tag = 0 Then
        Begin
          BtnCapturar.Caption := 'Detener';
          BtnCapturar.Tag := 1;
          DetenerCapturaSecuencial1.Enabled := True
        End
      Else
        Begin
          BtnCapturar.Caption := 'Iniciar';
          BtnCapturar.Tag := 0;
          DetenerCapturaSecuencial1.Enabled := False;
          Cerrar1.Enabled := True
        End;
      T1.Interval := (StrToInt(FrmCapCon.EdtTiempo.Text) * 1000);
      If BtnCapturar.Tag = 1 Then
        Begin
          //Application.Minimize;
          T1.Enabled := True
        End
      Else
        Begin
          T1.Enabled := False;
          Restaurar1.Enabled := True;
          CapturaInstantanea1.Enabled := True;
          Capturaportiempo1.Enabled := True;
        End;

    End
  Else
    Begin
      FrmPrinc.Visible := False;
      //No se me ocurre nada mas por ahora u.u
      Tiempo := (StrToInt(FrmCapCon.EdtSS.Text) + (StrToInt(FrmCapCon.EdtMM.Text) * 60) + (StrToInt(FrmCapCon.EdtHH.Text) * 3600));
      //StrAux := (FrmCapCon.EdtHH.Text+':'+FrmCapCon.EdtMM.Text+':'+FrmCapCon.EdtSS.Text);
      //Tiempo := Time + StrToTime(StrAux);
      //ShowMessage(TimeToStr(Tiempo));
      TiempoT := 0;
      T1.Enabled := True;
      TSeg.Enabled := True;
    End;

 { ShowMessage('Funcion En desarrollo' + #13 +
              'Implementada proximamente en Enero del 2007' + #13 +
              'Gracias por apoyarnos, con el software Freeware');   }
End;

function TFrmPrinc.DirectorioTemporal():string;
var
  s: string;
  i: integer;
begin
  SetLength(s,MAX_PATH); // redimensionamos el string
  i := GetTempPath(MAX_PATH,PChar(s)); //obtenemos algo
  // si i == 0 entonces es un error interno
  if i = 0 then raise Exception.Create('Error: GetTempPath;')
  else if i > MAX_PATH then // Se necesita m�s espacio
    begin
      SetLength(s, i); // se lo damos
      GetTempPath(i,PChar(s)); // al fin obtenemos el path
    end;
  // regresamos solo lo necesario y con el delimitador de path
  result := IncludeTrailingPathDelimiter(Copy(s, 1, i));
end;

Procedure TFrmPrinc.GBmp(Direccion:String;foto:TBitMap);
Var
 Bpm : TbitMap;
Begin
  Try
  Bpm := TBitMap.Create;
  Bpm.Assign(Foto);
  Bpm.SaveToFile(Direccion);
  ShowMessage('Proceso Finalizado.');
  Except
  ShowMessage('A ocurrido un error al intentar guasrdar' + #13 +
              'Revise la direccion en la que intenta guardar la imgen')
  End
End;

Procedure TFrmPrinc.GGBmp(Direccion:String;foto:TBitMap);
Var
 Bpm : TbitMap;
Begin
  Try
  Bpm := TBitMap.Create;
  Bpm.Assign(Foto);
  Bpm.SaveToFile(Direccion);
  Except
  ShowMessage('A ocurrido un error al intentar guasrdar' + #13 +
              'Revise la direccion en la que intenta guardar la imgen')
  End
End;

Procedure TFrmPrinc.GJpg(Direccion:String;foto:TBitMap);
Var
  Jpeg: TJPEGImage;
Begin
  Jpeg := TJPEGImage.Create;
  Jpeg.Assign(Foto);
  Try
  Jpeg.SaveToFile(Direccion);
  ShowMessage('Proceso Finalizado.');
  Except
  ShowMessage('A ocurrido un error al intentar guasrdar' + #13 +
              'Revise la direccion en la que intenta guardar la imgen')
  End;
  Jpeg.Free;
End;

Procedure TFrmPrinc.GGJpg(Direccion:String;foto:TBitMap);
Var
  Jpeg: TJPEGImage;
Begin
  Jpeg := TJPEGImage.Create;
  Jpeg.Assign(Foto);
  Try
  Jpeg.SaveToFile(Direccion);
  Except
  ShowMessage('A ocurrido un error al intentar guasrdar' + #13 +
              'Revise la direccion en la que intenta guardar la imgen')
  End;
  Jpeg.Free;
End;

Procedure TFrmPrinc.Lineas(x1:Integer;y1:Integer;x2:Integer;y2:Integer);
Begin
  If Tamareal = True Then
    Begin
    Img.Canvas.MoveTo(X1,Y1);
    Img.Canvas.LineTo(X2,Y1);
    Img.Canvas.MoveTo(X1,Y2);
    Img.Canvas.LineTo(X2,Y2);
    Img.Canvas.MoveTo(X1,Y1);
    Img.Canvas.LineTo(X1,Y2);
    Img.Canvas.MoveTo(X2,Y1);
    Img.Canvas.LineTo(X2,Y2);
    End
  Else
    Begin
      Img.Canvas.MoveTo((X1 * 2),(Y1 * 2));
      Img.Canvas.LineTo((X2 * 2),(Y1 * 2));
      Img.Canvas.MoveTo((X1 * 2),(Y2 * 2));
      Img.Canvas.LineTo((X2 * 2),(Y2 * 2));
      Img.Canvas.MoveTo((X1 * 2),(Y1 * 2));
      Img.Canvas.LineTo((X1 * 2),(Y2 * 2));
      Img.Canvas.MoveTo((X2 * 2),(Y1 * 2));
      Img.Canvas.LineTo((X2 * 2),(Y2 * 2));
    End;
End;


function TFrmPrinc.DMisDocu():string;
const
  CSIDL_PERSONAL = $5;
var
  s : string;
begin
  SetLength(s, MAX_PATH+1);
  SHGetSpecialFolderPath(Handle, PChar(s), CSIDL_PERSONAL, False);
  Result := s;
end;

procedure TFrmPrinc.CVentana;
Var
  Bitmap: TBitMap;
  Point: Tpoint;
  HWindow: HWND;
  HDevice: HDC;
  Rectangle: TRect;
Begin
  //Obtenemos la posicion absoluta del puntero del mouse
  GetCursorPos(Point);
  // Obtenemos la ventana (o descenciente de ventana)
  // que esta debajo del puntero del mouse
  HWindow := WindowFromPoint(Point);
  // Obtenemos la superficie de dibujo de la ventana
  HDevice := GetWindowDC(HWindow);
  // Obtenemos las dimensiones de la ventana
  GetWindowRect(HWindow, Rectangle);
  // Creamos una superficie de trabajo
  Bitmap := TBitmap.Create;
  // Creamos la superficie de trabajo JPG
  // Calculamos su ancho y largo
  Bitmap.Width := (Rectangle.Right - Rectangle.Left);
  Bitmap.Height := (Rectangle.Bottom - Rectangle.Top);
  // Copiamos el contenido grafico de las superficies
  BitBlt(Bitmap.Canvas.handle, 0, 0, Bitmap.Width, Bitmap.Height, HDevice, 0, 0, SRCCOPY);
  // Convertimos a JPG
  // La guardamos en el siguiente archivo
  Bitmap.SaveToFile (DirTmp+'\ctemp.bmp');
  // Liberamos recursos
  Bitmap.Free;
  Img.Picture.LoadFromFile(DirTmp+'\ctemp.bmp');
  Img.Canvas.Pen.Mode := pmNotXor;
  Img.Canvas.Pen.Style := psDot;
  Img.Canvas.CopyMode := cmSrcInvert;
  last := Rect(0,0,0,0);
  actual := Rect(0,0,0,0);
  RgVista.ItemIndex := 1;
//  RgVista.Enabled := False;
end;


procedure TFrmPrinc.CSector;
Var
  Bitmap: TBitMap;
  HWindow: HWND;
  HDevice: HDC;
  Rectangle: TRect;
Begin
  HWindow := FrmSector.Handle;
  // Obtenemos la superficie de dibujo de la ventana
  HDevice := GetWindowDC(HWindow);
  // Obtenemos las dimensiones de la ventana
  GetWindowRect(HWindow, Rectangle);
  // Creamos una superficie de trabajo
  Bitmap := TBitmap.Create;
  // Creamos la superficie de trabajo JPG
  // Calculamos su ancho y largo
  Bitmap.Width := (Rectangle.Right - Rectangle.Left);
  Bitmap.Height := (Rectangle.Bottom - Rectangle.Top);
  // Copiamos el contenido grafico de las superficies
  BitBlt(Bitmap.Canvas.handle, 0, 0, Bitmap.Width, Bitmap.Height, HDevice, 0, 0, SRCCOPY);
  // Convertimos a JPG
  // La guardamos en el siguiente archivo
  Bitmap.SaveToFile (DirTmp+'\ctemp.bmp');
  // Liberamos recursos
  Bitmap.Free;
  Img.Picture.LoadFromFile(DirTmp+'\ctemp.bmp');
  Img.Canvas.Pen.Mode := pmNotXor;
  Img.Canvas.Pen.Style := psDot;
  Img.Canvas.CopyMode := cmSrcInvert;
  last := Rect(0,0,0,0);
  actual := Rect(0,0,0,0);
  RgVista.ItemIndex := 1;
//  RgVista.Enabled := False;
end;


procedure TFrmPrinc.CActiva;
Var
  Bitmap: TBitMap;
  Rectangle: TRect;
  ActiveWnd: HWnd;
  HDevice: HDC;
Begin
  //Obtenemos la posicion absoluta del puntero del mouse
  ActiveWnd := GetForegroundWindow();

  HDevice := GetWindowDC(ActiveWnd);
  // Obtenemos la ventana (o descenciente de ventana)
  // que esta debajo del puntero del mouse
  // Obtenemos las dimensiones de la ventana
  GetWindowRect(ActiveWnd, Rectangle);
  // Creamos una superficie de trabajo
  Bitmap := TBitmap.Create;
  // Creamos la superficie de trabajo JPG
  // Calculamos su ancho y largo
  Bitmap.Width := (Rectangle.Right - Rectangle.Left);
  Bitmap.Height := (Rectangle.Bottom - Rectangle.Top);
  // Copiamos el contenido grafico de las superficies
  BitBlt(Bitmap.Canvas.handle, 0, 0, Bitmap.Width, Bitmap.Height, HDevice, 0, 0, SRCCOPY);
  // Convertimos a JPG
  // La guardamos en el siguiente archivo
  Bitmap.SaveToFile (DirTmp+'\ctemp.bmp');
  // Liberamos recursos
  Bitmap.Free;
  Img.Picture.LoadFromFile(DirTmp+'\ctemp.bmp');
  Img.Canvas.Pen.Mode := pmNotXor;
  Img.Canvas.Pen.Style := psDot;
  Img.Canvas.CopyMode := cmSrcInvert;
  last := Rect(0,0,0,0);
  actual := Rect(0,0,0,0);
  RgVista.ItemIndex := 1;
//  RgVista.Enabled := False;
end;

procedure TFrmPrinc.CTotal;
Var
  B : TBitmap;
Begin
  B := TBitmap.Create;
  B.Width := GetSystemMetrics(SM_CXSCREEN);    {Screen.Width}
  B.Height := GetSystemMetrics(SM_CYSCREEN);   {Screen.Height}
  BitBlt(B.Canvas.handle, 0, 0, B.Width, B.Height, GetDc(0), 0, 0, SRCCOPY);
  b.SaveToFile (DirTmp+'\ctemp.bmp');
  b.Free;
//tama�o del IMG
  RgVista.ItemIndex := 0;
  Img.AutoSize := False;
  Tamareal := False;
  Img.Width := (GetSystemMetrics(SM_CXSCREEN) Div 2);    {Screen.Width}
  Img.Height := (GetSystemMetrics(SM_CYSCREEN) Div 2);   {Screen.Height}
//Fin del tama�o del IMG
  Img.Picture.LoadFromFile(DirTmp+'\ctemp.bmp');
  Img.Canvas.Pen.Mode := pmNotXor;
  Img.Canvas.Pen.Style := psDot;
  Img.Canvas.CopyMode := cmSrcInvert;
  last := Rect(0,0,0,0);
  actual := Rect(0,0,0,0);
  RgVista.ItemIndex := 0;
//  RgVista.Enabled := True;
//Fin de la captura.
end;

procedure TFrmPrinc.Salir1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrinc.FormCreate(Sender: TObject);
Var
  Sem : THandle;
begin
//Acciones a realizar al crear la aplicaci�n

  //se verifica si se est� ejecutando el programa,
  //para evitar doble ejecuci�n
  Sem := CreateSemaphore(nil,0,1,'PROGRAM_NAME');
  if ((Sem <> 0) and (GetLastError = ERROR_ALREADY_EXISTS))
    then begin
      CloseHandle(Sem);
      //ShowMessage('Este programa ya se est� ejecutando...'+#13+
      //            'No sirve tener dos instancias del mismo programa.');
      //Halt
      If Application.MessageBox('Ya hay una Instancia del Chameleon Capturer Corriendo' + #13 + '�Desea continuar Ejecutando esta nueva instancia?','Chameleon Capturer',MB_YESNO)=ID_NO then Halt;
    End;

  //permitimos a no la ejecuci�n seg�n la resoluci�n de la pantalla
  Resoluciones;
  DirTmp := DirectorioTemporal;
  MisDocu := DMisDocu;
  Tamareal := False;
  EdtGuardar.Text := MisDocu;
  EdtGuardar.Text := (EdtGuardar.Text + '\captura.jpg');
//  Existe := False;
  CbExiste.Checked := False;
  Img.Canvas.Pen.Mode := pmNotXor;
  Img.Canvas.Pen.Style := psDot;
  Img.Canvas.CopyMode := cmPatInvert;
  last := Rect(0,0,0,0);
  actual := Rect(0,0,0,0);
end;

procedure TFrmPrinc.RgVistaClick(Sender: TObject);
begin
  If RGVista.ItemIndex = 1 Then
    Begin
      Img.AutoSize := True;
      Tamareal := True;
    End
  Else
    Begin
      Img.AutoSize := False;
      Img.Width := (Img.Width Div 2);
      Img.Height := (Img.Height Div 2);
      Tamareal := False;
    end;
end;

procedure TFrmPrinc.BtnGuardarClick(Sender: TObject);
begin
  If EdtGuardar.Text = '' Then ShowMessage('El campo de la direccion esta vacio.')
    Else
      If RGFormato.ItemIndex = 0 Then GBmp(EdtGuardar.Text, Img.Picture.Bitmap)
        Else GJpg(EdtGuardar.Text, Img.Picture.Bitmap)
end;

procedure TFrmPrinc.BtnCapturarClick(Sender: TObject);
begin
  FrmSel.Close;
  If RgSecu.ItemIndex = 1 Then CapSecuencial
    Else If RgSecu.ItemIndex = 0 Then
      Begin
        If EdtTiempo.Text = '' Then ShowMessage('El campo de tiempo esta vacio')
          Else
            Begin
              FrmPrinc.Visible := False;
              If RgTiempo.ItemIndex = 0 Then
                If RGTipoCaptura.ItemIndex = 0 Then
                  Begin
                    Sleep(333);
                    CTotal;
                    //RgVista.Enabled := True;
                  End
                Else
                  If RGTipoCaptura.ItemIndex = 1 Then
                    Begin
                      Sleep(333);
                      Cventana;
                      //RgVista.Enabled := False;
                    End
                  Else
                    If RGTipoCaptura.ItemIndex = 2 Then
                      Begin
                        //ShowMessage('A continuacion debe seleccionar el sector');
                        If FrmConf.RgSector.ItemIndex = 0 Then
                          Begin
                            FrmSector.ShowModal;
                          End;
                        Sleep(333);
                        CSector
                      End
                    Else
                      Begin
                        Sleep(333);
                        CActiva;
                        Sleep(333);
                      End

              Else
                If RGTipoCaptura.ItemIndex = 0 Then
                  Begin
                    Sleep(StrToInt(EdtTiempo.Text) * 1000);
                    CTotal;
                    //RgVista.Enabled := True;
                  End
                Else
                  If RGTipoCaptura.ItemIndex = 1 Then
                    Begin
                      Sleep(StrToInt(EdtTiempo.Text) * 1000);
                      CActiva;
                      Sleep(333);
                      //RgVista.Enabled := False;
                    End
                  Else
                    If RGTipoCaptura.ItemIndex = 2 Then
                      Begin
                        //ShowMessage('A continuacion debe seleccionar el sector');
                        If FrmConf.RgSector.ItemIndex = 0 Then
                          Begin
                            FrmSector.ShowModal;
                          End;
                        Sleep(StrToInt(EdtTiempo.Text) * 1000);
                        CSector
                        //RgVista.Enabled := False;
                      End
                    Else
                      Begin
                        Sleep(StrToInt(EdtTiempo.Text) * 1000);
                        CActiva;
                        Sleep(333);
                        //RgVista.Enabled := False;
                      End;

              FrmPrinc.Visible := True;
              Img.Cursor := crCross;
              CbExiste.Checked := True;
              RgVista.Enabled := True;
            End;
      End
    Else HacerVideo;
end;

procedure TFrmPrinc.ImgMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
If Button = mbLeft Then
  Begin
  If CbExiste.Checked = True Then
    Begin
      If TamaReal = True Then
        Begin
          Img.Canvas.Rectangle(actual);
          actual.Left := X;
          actual.Top := Y;
          Img.Canvas.Rectangle(actual);
        End
      Else
        Begin
          Img.Canvas.Rectangle(actual);
          actual.Left := (X*2);
          actual.Top := (Y*2);
          Img.Canvas.Rectangle(actual);
        End;
      If CbExiste.Checked = True Then
        Begin
          If Corx1 = 0 Then
            Begin
              Corx1 := X;
              Cory1 := Y;
              Cox1 := X;
              Coy1 := Y;
            End;
        End;
    End;
  End;
End;

procedure TFrmPrinc.Seleccion1Click(Sender: TObject);
begin
  FrmSel.Show;
end;

procedure TFrmPrinc.GuardarComo1Click(Sender: TObject);
begin
  Sp1.FileName := 'Captura';
  If RgFormato.ItemIndex = 0 Then
    Begin
      Sp1.DefaultExt := GraphicExtension(TBitmap);
      Sp1.Filter := GraphicFilter(TBitmap);
    End
  Else
    Begin
      Sp1.DefaultExt := GraphicExtension(TJPEGImage);
      Sp1.Filter := GraphicFilter(TJPEGImage);
    End;

  If SP1.Execute Then
    If RGFormato.ItemIndex = 0 Then
      GBmp(SP1.FileName, Img.Picture.Bitmap)
    Else
      GJpg(SP1.FileName, Img.Picture.Bitmap);
end;

procedure TFrmPrinc.ImgMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
  r : String;
  xb : TBitMap;
  Fx : Integer;
  Fy : Integer;
begin
If Button = mbLeft Then
  Begin
  If CbExiste.Checked = True Then
    Begin
      Corx2 := X;
      Cory2 := Y;
      Cox2 := X;
      Coy2 := Y;
      If Corx2 < Corx1 Then
        Begin
          Aux := Corx1;
          Corx1 := Corx2;
          Corx2 := Aux;
          Cox1 := Corx2;
          Cox2 := Aux;
        End;
      If Cory2 < Cory1 Then
        Begin
          Aux := Cory1;
          Cory1 := Cory2;
          Cory2 := Aux;
          Coy1 := Cory2;
          Coy2 := Aux;
        End;
      If TamaReal = True Then
        Begin
          Fx := (Corx2 - Corx1);
          Fy := (Cory2 - Cory1);
        End
      Else
        Begin
          Fx := ((Corx2*2) - (Corx1*2));
          Fy := ((Cory2*2) - (Cory1*2));
        End;
    ImgTemp := TBitmap.Create;
    ImgTemp.Width := Fx;
    ImgTemp.Height := Fy;
    xb := TBitmap.Create;
    xb.Width := Screen.DesktopWidth;
    xb.Height := Screen.DesktopHeight;
 //       Img.Picture.LoadFromFile(DirTemp + '\');
    xb.LoadFromFile(DirTmp + '\ctemp.bmp');
 //       Lineas(Corx1,cory1,corx2,cory2);
    If Tamareal = False Then ImgTemp.Canvas.CopyRect(RECT(0,0,Fx,Fy), Xb.Canvas, RECT((Corx1*2),(Cory1*2),(Corx2*2),(Cory2*2)))
      Else ImgTemp.Canvas.CopyRect(RECT(0,0,Fx,Fy), Xb.Canvas, RECT(Corx1,Cory1,Corx2,Cory2));
    r := (DirTmp + '\cseltemp.bmp');
    ImgTemp.SaveToFile (r);
    ImgTemp.Free;
     //   Img.Picture.LoadFromFile(r);
     //   If Existe = True Then EdtEx.Text := 'true' Else EdtEx.Text := 'false';
    FrmSel.ImgSel.AutoSize := True;
    FrmSel.ImgSel.Picture.LoadFromFile(r);
    FrmSel.Show;
    Corx1:= 0;
    Corx2:= 0;
    Cory1:= 0;
    Cory2:= 0;
   //   End;
    End;
  //caption := Format('Rect(%d, %d, %d, %d)',[actual.Left, actual.Top, X, Y]);
  End
  Else
    Begin
      //Actual.Right := 1;
      //Actual.Bottom := 1;
      //Img.Canvas.Rectangle(actual);
    End;
end;

procedure TFrmPrinc.ImgMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
If CBExiste.Checked = True Then
  Begin
    if ssLeft in Shift then
    Begin
      If TamaReal = True Then
        Begin
          Img.Canvas.Rectangle(actual);
          actual.Right := X;
          actual.Bottom := Y;
          Img.Canvas.Rectangle(actual);
        End
    Else
      Begin
        Img.Canvas.Rectangle(actual);
        actual.Right := (X*2);
        actual.Bottom := (Y*2);
        Img.Canvas.Rectangle(actual);
      End;
    End;
  End;
end;

procedure TFrmPrinc.EdtTiempoKeyPress(Sender: TObject; var Key: Char);
begin
  If Not(Key In['0'..'9',#81])  // Si no es un caracter entre el 0 y el 9
     Then Key :=#0;
end;

procedure TFrmPrinc.About1Click(Sender: TObject);
begin
  FrmAbout.ShowModal;
end;

procedure TFrmPrinc.Capturacontinua1Click(Sender: TObject);
begin
  FrmCapCon.ShowModal;
end;

procedure TFrmPrinc.RgTipoCapturaClick(Sender: TObject);
begin
//  If RgTipoCaptura.ItemIndex = 2 Then FrmSector.ShowModal;
end;

procedure TFrmPrinc.RgSecuClick(Sender: TObject);
begin
  {
  Nose que poner xD
  }
  If RGSecu.ItemIndex = 1 Then
    Begin
      EdtTiempo.Enabled := False;
      RgTiempo.Enabled := False;
      RGTipoCaptura.Enabled := False;
      RgVista.Enabled := False;
    End
  Else
    Begin
      EdtTiempo.Enabled := True;
      RgTiempo.Enabled := True;
      RGTipoCaptura.Enabled := True;
      RgVista.Enabled := True;
    End;
end;

procedure TFrmPrinc.Ayuda2Click(Sender: TObject);
begin
  ShowMessage('El sistema de ayuda todabia no fue implementado');
end;

procedure TFrmPrinc.Agradecimientos1Click(Sender: TObject);
begin
  FrmAgrade.ShowModal;
end;

procedure TFrmPrinc.T1Timer(Sender: TObject);
Var
  B : TBitmap;
  AuxStr : String;
begin
  //ShowMessage('Hola');
  If FrmCapCon.RGTipo.ItemIndex = 0 Then
    Begin
      //Capturar
      //Guardar
      B := TBitmap.Create;
      B.Width := GetSystemMetrics(SM_CXSCREEN);    {Screen.Width}
      B.Height := GetSystemMetrics(SM_CYSCREEN);   {Screen.Height}
      BitBlt(B.Canvas.handle, 0, 0, B.Width, B.Height, GetDc(0), 0, 0, SRCCOPY);
      //b.SaveToFile (DirTmp+'\ctemp.bmp');
      //AuxStr := (FrmCapCon.EdtNombre.Text+I+'.bmp');
      If RGFormato.ItemIndex = 0 Then
        Begin
          AuxStr := (FrmCapCon.EdtCarpeta.Text+FrmCapCon.EdtNombre.Text+IntToStr(I2)+'.bmp');
          GGBmp(AuxStr, B)
        End
      Else
        Begin
          AuxStr := (FrmCapCon.EdtCarpeta.Text+FrmCapCon.EdtNombre.Text+IntToStr(I2)+'.jpg');
          GGJpg(AuxStr, B)
        End;
      b.Free;
      I2 := I2 + 1
      //ShowMessage('Hola');
    End
  Else If FrmCapCon.RGTipo.ItemIndex = 1 Then
    Begin
      //Tiempo original
      //Transucrran tantos segundos, minutos, etc...
      B := TBitmap.Create;
      B.Width := GetSystemMetrics(SM_CXSCREEN);    {Screen.Width}
      B.Height := GetSystemMetrics(SM_CYSCREEN);   {Screen.Height}
      BitBlt(B.Canvas.handle, 0, 0, B.Width, B.Height, GetDc(0), 0, 0, SRCCOPY);
      //b.SaveToFile (DirTmp+'\ctemp.bmp');
      //AuxStr := (FrmCapCon.EdtNombre.Text+I+'.bmp');
      If RGFormato.ItemIndex = 0 Then
        Begin
          AuxStr := (FrmCapCon.EdtCarpeta.Text+FrmCapCon.EdtNombre.Text+IntToStr(I2)+'.bmp');
          GGBmp(AuxStr, B)
        End
      Else
        Begin
          AuxStr := (FrmCapCon.EdtCarpeta.Text+FrmCapCon.EdtNombre.Text+IntToStr(I2)+'.jpg');
          GGJpg(AuxStr, B)
        End;
      b.Free;
      I2 := I2 + 1;
      //ShowMessage('Hola');
      //TAhora := Time;
      If TiempoT = Tiempo Then T1.Enabled := False
        Else If TiempoT > Tiempo Then
        Begin
          T1.Enabled := False;
          Restaurar1.Enabled := True;
          CapturaInstantanea1.Enabled := True;
          Capturaportiempo1.Enabled := True;
          FrmPrinc.Visible := True
        End
    End
  Else
    Begin
      //Capturar
      //Guardar
      B := TBitmap.Create;
      B.Width := GetSystemMetrics(SM_CXSCREEN);    {Screen.Width}
      B.Height := GetSystemMetrics(SM_CYSCREEN);   {Screen.Height}
      BitBlt(B.Canvas.handle, 0, 0, B.Width, B.Height, GetDc(0), 0, 0, SRCCOPY);
      //b.SaveToFile (DirTmp+'\ctemp.bmp');
      //AuxStr := (FrmCapCon.EdtNombre.Text+I+'.bmp');
      If RGFormato.ItemIndex = 0 Then
        Begin
          AuxStr := (FrmCapCon.EdtCarpeta.Text+FrmCapCon.EdtNombre.Text+IntToStr(I2)+'.bmp');
          GGBmp(AuxStr, B)
        End
      Else
        Begin
          AuxStr := (FrmCapCon.EdtCarpeta.Text+FrmCapCon.EdtNombre.Text+IntToStr(I2)+'.jpg');
          GGJpg(AuxStr, B);
        End;
      b.Free;
      I2 := I2 + 1;
      //ShowMessage('Hola');
      I := I + 1;
      If I = StrToInt(FrmCapCon.EdtImg.Text) Then
        Begin
          T1.Enabled := False;
          Restaurar1.Enabled := True;
          CapturaInstantanea1.Enabled := True;
          Capturaportiempo1.Enabled := True;
          FrmPrinc.Visible := True
        End
    End

end;

procedure TFrmPrinc.AbrirBMP1Click(Sender: TObject);
begin
  FrmSel.Opd.Filter := GraphicFilter(TBitMap);
  //ImgSel.AutoSize := True;
  If FrmSel.OPD.Execute Then Img.Picture.LoadFromFile(FrmSel.OPD.FileName);
  Img.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\ctemp.bmp');
  Img.Cursor := crCross;
  CbExiste.Checked := True;
  RgVista.Enabled := True;
  Img.Canvas.Pen.Mode := pmNotXor;
  Img.Canvas.Pen.Style := psDot;
  Img.Canvas.CopyMode := cmSrcInvert;
  last := Rect(0,0,0,0);
  actual := Rect(0,0,0,0);
  RgVista.ItemIndex := 1;
  RgVista.Enabled := True;
end;

procedure TFrmPrinc.AbrirJPG1Click(Sender: TObject);
Var
  Btm : TBitMap;
  Jtp : TJPEGImage;
Begin
  Btm := TBitMap.Create;
  Jtp := TJPEGImage.Create;
  //ImgSel.AutoSize := True;
  FrmSel.Opd.Filter := GraphicFilter(TJPEGImage);
  If FrmSel.OPD.Execute Then Jtp.LoadFromFile(FrmSel.OPD.FileName);
  Btm.Assign(Jtp);
  Btm.SaveToFile(FrmPrinc.DirectorioTemporal + '\ctemp.bmp');
  Img.Picture.LoadFromFile(FrmPrinc.DirectorioTemporal + '\ctemp.bmp');
  Img.Cursor := crCross;
  CbExiste.Checked := True;
  RgVista.Enabled := True;
  Img.Canvas.Pen.Mode := pmNotXor;
  Img.Canvas.Pen.Style := psDot;
  Img.Canvas.CopyMode := cmSrcInvert;
  last := Rect(0,0,0,0);
  actual := Rect(0,0,0,0);
  RgVista.ItemIndex := 1;
  RgVista.Enabled := True;
end;

procedure TFrmPrinc.Restaurar1Click(Sender: TObject);
begin
  FrmPrinc.WindowState := wsNormal;
  MostrarForm;
end;

procedure TFrmPrinc.Cerrar1Click(Sender: TObject);
begin
  Shell_NotifyIcon(NIM_DELETE, @IconData);
  IconData.Wnd:=0;
  Application.Terminate;
end;

procedure TFrmPrinc.CapturaInstantanea1Click(Sender: TObject);
begin
  //Captura Instantania
  Sleep(333);
  //Capturar y mostrar
  CTotal;
  //Existe
  Img.Cursor := crCross;
  CbExiste.Checked := True;
  RgVista.Enabled := True;
end;

procedure TFrmPrinc.Capturaportiempo1Click(Sender: TObject);
begin
  //Captura por tiempo. :P
  Sleep(StrToInt(EdtTiempo.Text) * 1000);
  //Capturar y mostrar
  CTotal;
  //Existe
  Img.Cursor := crCross;
  CbExiste.Checked := True;
  RgVista.Enabled := True;
end;

procedure TFrmPrinc.DetenerCapturaSecuencial1Click(Sender: TObject);
begin
  BtnCapturar.Click;
end;

procedure TFrmPrinc.TSegTimer(Sender: TObject);
begin
  TiempoT := TiempoT + 1;
end;

procedure TFrmPrinc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FrmPrinc.WindowState := wsNormal;
//  MostrarForm;
  //Eliminar el icono de al lado del  reloj, si es que existe...
  Shell_NotifyIcon(NIM_DELETE, @IconData);
  IconData.Wnd:=0;
end;



procedure TFrmPrinc.N6Click(Sender: TObject);
begin
  FrmMasivo.ShowModal;
end;

procedure TFrmPrinc.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//
end;

procedure TFrmPrinc.RgTiempoClick(Sender: TObject);
begin
  If RgTiempo.ItemIndex = 2 Then FrmProgramada.ShowModal;
end;

procedure TFrmPrinc.ConfiguracionesGenerales1Click(Sender: TObject);
begin
  //Configuraciones Generales
  FrmConf.ShowModal;
end;

procedure TFrmPrinc.Sector1Click(Sender: TObject);
begin
  FrmSector.Show;
end;

procedure TFrmPrinc.CopiaralPortaPapeles1Click(Sender: TObject);
begin
  Portapapeles.Create;
  Portapapeles.Clear;
  PortaPapeles.Assign(Img.Picture.Bitmap.Canvas);
end;

End.
