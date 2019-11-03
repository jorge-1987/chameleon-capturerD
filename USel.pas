unit USel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, Buttons, Math, jpeg, ExtDlgs, Spin;

const
  MaxPixelCount   =  32768;

type
  TFrmSel = class(TForm)
    PnlHerramientas: TPanel;
    SbSel: TScrollBox;
    ImgSel: TImage;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    EdtGuardar: TEdit;
    BtnGuardar: TButton;
    Label1: TLabel;
    PnlTools: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    PnlEfects: TPanel;
    GuardarComo1: TMenuItem;
    Ventanas1: TMenuItem;
    Principal1: TMenuItem;
    SpeedButton1: TSpeedButton;
    ColorD: TColorDialog;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Edicion1: TMenuItem;
    Deshacer1: TMenuItem;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton10: TPanel;
    Image1: TImage;
    N1: TMenuItem;
    Abrir1: TMenuItem;
    OPD: TOpenPictureDialog;
    SpeedButton13: TSpeedButton;
    AbrirJPG1: TMenuItem;
    N2: TMenuItem;
    CerrarSeleccion1: TMenuItem;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton21: TSpeedButton;
    Panel1: TPanel;
    LblTexto: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure GuardarComo1Click(Sender: TObject);
    procedure Principal1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BtnGuardarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Deshacer1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ImgSelMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgSelMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImgSelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Abrir1Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure AbrirJPG1Click(Sender: TObject);
    procedure CerrarSeleccion1Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Saturar(Var OriR,OriG,OriB : Byte; Cantidad : Smallint);
    Procedure DesSaturar(Var OriR,OriG,OriB : Byte; Cantidad : Smallint);
    procedure NegativeBitmap(OrigBmp, DestBmp: TBitmap);
    procedure EspejoHrz(BMPOrigen, BMPDestino:TBitmap);
    procedure EspejoVrt(BMPOrigen, BMPDestino:TBitmap);
    procedure RotarAntiH(BMPOrigen, BMPDestino:TBitmap);
    procedure RotarH(BMPOrigen, BMPDestino:TBitmap);
    procedure RotateBitmap(OrigBmp: TBitmap; Angle: real; Var DestBmp: TBitmap);
//    Procedure JuntarColorEco(Var OriRf,OriGf,OriBf,AgrRf,AgrGf,AgrBf,Cantidad : Byte);
//    Procedure UnirPixel(Var OriRf,OriGf,OriBf,Cantidad : Byte; Var PixX,PixY : Integer);
    Function DifusionPer(PosX,PosY : Cardinal; Por,Pixs : Byte; HDer,HIzq,HArr,HAba : Boolean) : TColor;
    Procedure OffTodo;
    Procedure OnTodo;
//    Procedure DejarDibujar;
  end;

var
  FrmSel: TFrmSel;
  Dibujar   : Boolean;
  Dibujando : Boolean;
  Multi     : Integer;
  Multim     : Integer;

Type
  pRGBArray  =  ^TRGBArray;
  TRGBArray  =  ARRAY[0..MaxPixelCount-1] of TRGBTriple;

implementation

Uses UPrinc, UTrazo, UDlgTamanio, UDlgGrados, URota, UDlgDifu, UDlgSatu;

{$R *.dfm}

  {
Procedure TFrmSel.Dibujar;
Begin
 //Todabia nada u.u
End;        }

Procedure TFrmSel.OffTodo;
Begin
  FrmPrinc.CBExiste.Checked := False;
  FrmPrinc.Img.Cursor := crNo;
  SpeedButton1.Enabled := False;
  SpeedButton2.Enabled := False;
  SpeedButton3.Enabled := False;
  SpeedButton4.Enabled := False;
  SpeedButton5.Enabled := False;
  SpeedButton6.Enabled := False;
  SpeedButton7.Enabled := False;
  SpeedButton8.Enabled := False;
  SpeedButton9.Enabled := False;
  SpeedButton14.Enabled := False;
  SpeedButton15.Enabled := False;
  SpeedButton10.Enabled := False;
  SpeedButton16.Enabled := False;
  Image1.Visible := False;

{  If SpeedButton10.BorderStyle = bsSingle Then
    Begin
//      SpeedButton14.Enabled := False;
//      SpeedButton15.Enabled := False;
    End
  Else
    Begin
//      SpeedButton10.Enabled := False;
//      Image1.Visible := False;

    End;    }
  SpeedButton11.Enabled := False;
  SpeedButton12.Enabled := False;
  SpeedButton13.Enabled := False;
End;

Procedure TFrmSel.OnTodo;
Begin

  FrmPrinc.CBExiste.Checked := True;
  FrmPrinc.Img.Cursor := crCross;
  SpeedButton1.Enabled := True;
  SpeedButton2.Enabled := True;
  SpeedButton3.Enabled := True;
  SpeedButton4.Enabled := True;
  SpeedButton5.Enabled := True;
  SpeedButton6.Enabled := True;
  SpeedButton7.Enabled := True;
  SpeedButton8.Enabled := True;
  SpeedButton9.Enabled := True;
  SpeedButton10.Enabled := True;
  Image1.Visible := True;
  SpeedButton11.Enabled := True;
  SpeedButton12.Enabled := True;
  SpeedButton13.Enabled := True;
  SpeedButton14.Enabled := True;
  SpeedButton15.Enabled := True;
  SpeedButton16.Enabled := True;
End;
     {
Procedure TFrmSel.JuntarColorEco(Var OriRf,OriGf,OriBf,AgrRf,AgrGf,AgrBf,Cantidad : Byte);
Begin
 OriRf := (Cantidad*AgrRf + (255-Cantidad)*OriRf) div 255;
 OriGf := (Cantidad*AgrGf + (255-Cantidad)*OriGf) div 255;
 OriBf := (Cantidad*AgrBf + (255-Cantidad)*OriBf) div 255
End;

Procedure TFrmSel.UnirPixel(Var OriRf,OriGf,OriBf,Cantidad : Byte; Var PixX,PixY : Integer);
Var
  AgrRf,AgrGf,AgrBf : Byte;
Begin
  AgrRf := GetRValue(ImgSel.Canvas.Pixels[Pixx,Pixy]);
  AgrGf := GetGValue(ImgSel.Canvas.Pixels[Pixx,Pixy]);
  AgrBf := GetBValue(ImgSel.Canvas.Pixels[Pixx,Pixy]);
  JuntarColorEco(OriRf,OriGf,OriBf,AgrRf,AgrGf,AgrBf,Cantidad)
end;  }

Procedure TFrmSel.Saturar(Var OriR,OriG,OriB : Byte; Cantidad : Smallint);
Var
 Min,Max : byte;
 AgrR,AgrG,AgrB : Real;
Begin
 //Sacar el minimo y el maximo
 If OriR < OriB Then Begin
  Min := OriR;
  Max := OriB
 End else Begin
  Min := OriB;
  Max := OriR
 end;
 If OriG < Min Then Min := OriG else
  If OriG > Max Then Max := OriG;

 //Saturar Color
 If Min <> Max Then
  Begin
   AgrR := 255 * ((OriR - Min) / (Max - Min));
   AgrG := 255 * ((OriG - Min) / (Max - Min));
   AgrB := 255 * ((OriB - Min) / (Max - Min))
  end Else Begin
   AgrR := OriR;
   AgrG := OriG;
   AgrB := OriB
  End;

 //Mezclar Colores
 OriR := Trunc((Cantidad*AgrR + (255-Cantidad)*OriR) / 255);
 OriG := Trunc((Cantidad*AgrG + (255-Cantidad)*OriG) / 255);
 OriB := Trunc((Cantidad*AgrB + (255-Cantidad)*OriB) / 255)
end;

Procedure TFrmSel.DesSaturar(Var OriR,OriG,OriB : Byte; Cantidad : Smallint);
Var
 TonGris : Real;
Begin
 //Sacar Gris
 TonGris := (OriR + OriG + OriB) / 3;
 //Mezclar Colores
 OriR := Trunc((Cantidad*TonGris + (255-Cantidad)*OriR) / 255);
 OriG := Trunc((Cantidad*TonGris + (255-Cantidad)*OriG) / 255);
 OriB := Trunc((Cantidad*TonGris + (255-Cantidad)*OriB) / 255)
end;

Function TFrmSel.DifusionPer(PosX,PosY : Cardinal; Por,Pixs : Byte; HDer,HIzq,HArr,HAba : Boolean) : TColor;
Var
  OriR,OriG,OriB : Byte;        //Color del byte original
  AgrR,AgrG,AgrB : Cardinal;    //Color a agregar
  AgrPix : Word;                //Cantidad de Pixeles agregados
  Aux : Word;
  AuxIf : Integer;
Begin
  // Valores iniciales
  AgrR := 0;
  AgrG := 0;
  AgrB := 0;
  AgrPix := 0;
  // Obtener el color original
  OriR := GetRValue(ImgSel.Canvas.Pixels[PosX,PosY]);
  OriG := GetGValue(ImgSel.Canvas.Pixels[PosX,PosY]);
  OriB := GetBValue(ImgSel.Canvas.Pixels[PosX,PosY]);
  // Recolectar Derecha
  If HIzq Then
    For Aux := 1 To Pixs Do
      If (Aux + PosX) < ImgSel.Width Then
       Begin
        AgrPix := AgrPix + 1;
        AgrR := (AgrR + GetRValue(ImgSel.Canvas.Pixels[PosX + Aux,PosY]));
        AgrG := (AgrG + GetGValue(ImgSel.Canvas.Pixels[PosX + Aux,PosY]));
        AgrB := (AgrB + GetBValue(ImgSel.Canvas.Pixels[PosX + Aux,PosY]))
      End;
  // Recolectar Izquierda
  If HDer Then
    For Aux := 1 To Pixs Do Begin
      AuxIf := PosX - Aux;
      If AuxIf >= 0 Then Begin
        AgrPix := AgrPix + 1;
        AgrR := AgrR + GetRValue(ImgSel.Canvas.Pixels[PosX - Aux,PosY]);
        AgrG := AgrG + GetGValue(ImgSel.Canvas.Pixels[PosX - Aux,PosY]);
        AgrB := AgrB + GetBValue(ImgSel.Canvas.Pixels[PosX - Aux,PosY])
      End
    End;
  // Recolectar Abajo
  If HArr Then
    For Aux := 1 To Pixs Do
      If Aux + PosY < Image1.Height Then Begin
        AgrPix := AgrPix + 1;
        AgrR := AgrR + GetRValue(ImgSel.Canvas.Pixels[PosX,PosY + Aux]);
        AgrG := AgrG + GetGValue(ImgSel.Canvas.Pixels[PosX,PosY + Aux]);
        AgrB := AgrB + GetBValue(ImgSel.Canvas.Pixels[PosX,PosY + Aux])
      End;
  // Recolectar Izquierda
  If HAba Then
    For Aux := 1 To Pixs Do Begin
      AuxIf := PosY - Aux;
      If AuxIf >= 0 Then Begin
        AgrPix := AgrPix + 1;
        AgrR := AgrR + GetRValue(ImgSel.Canvas.Pixels[PosX,PosY - Aux]);
        AgrG := AgrG + GetGValue(ImgSel.Canvas.Pixels[PosX,PosY - Aux]);
        AgrB := AgrB + GetBValue(ImgSel.Canvas.Pixels[PosX,PosY - Aux])
      End
    End;
  //Asignar color Final
  If AgrPix > 0 then Begin
    AgrR := AgrR Div AgrPix;
    AgrG := AgrG Div AgrPix;
    AgrB := AgrB Div AgrPix;
    OriR := (Por*AgrR + (255-Por)*OriR) div 255;
    OriG := (Por*AgrG + (255-Por)*OriG) div 255;
    OriB := (Por*AgrB + (255-Por)*OriB) div 255
  End;
  DifusionPer := RGB(OriR,OriG,OriB)
End;


procedure TFrmSel.RotateBitmap(OrigBmp: TBitmap; Angle: real; Var DestBmp: TBitmap);
  var
    ang,
    sinang, cosang,
    xori, yori,
    xrot, yrot,
    dx, dy           : extended;
    i, j             : integer;
    tmpbmp           : TBitmap;
  begin
      {
      Creamos un bitmap temporal. Esto nos permite usar el mismo bitmap para
      entrada y salida
      Create a temporal bitmap. This allows to use the same bitmap
      as input or outpuy
      }
    tmpbmp := TBitmap.Create;
 
    try
      {Asignamos al bitmap temporal las características del original
      Assign the temporal bitmap the same characteristics as the original}
      tmpbmp.Width := OrigBmp.Width;
      tmpbmp.Height := OrigBmp.Height;
//      tmpbmp.Width := DestBmp.Width;
//      tmpbmp.Height := DestBmp.Height;
      tmpbmp.PixelFormat := OrigBmp.PixelFormat;
 
      {Convertimos grados a radianes.
       Convert degrees to radians. DegToRad() is defined in math.pas}
      ang := DegToRad(Angle);
 
      {Calculamos valores para la traslación
      Calculate translation values}
      dx := (OrigBmp.Width-1) / 2;
      dy := (OrigBmp.Height-1) / 2;
 
      {Calculamos seno y coseno
       SinCos (math.pas) es más rápida que usar sin() y cos() por separado
       Compute sine and cosine
       SinCos (math.pas) is faster than calling sin() and cos() separately
      }
      SinCos(ang, sinang, cosang);
 
      {Rotación de coordenadas
       Para cada pixel del bitmap de destino, hallamos el correspondiente el el
       bitmap de origen
       Rotate coordinates
       For each pixel in the destination bitmap, we find the corresponding
       pixel in the original bitmap}
 
      {Para cada fila / for each row}
      for i := 0 to tmpbmp.Height -1 do 
      begin 
          {Para cada columna / for each column}
        for j := 0 to tmpbmp.Width - 1 do 
        begin 
            {Trasladamos la coordenada con relación al centro del bitmap
             Translate coordinate relative to the centre of the bitmap}
          xori := j - dx;
          yori := i - dy;
 
            {Calculamos las coordenadas rotadas
             Calculate rotated coordinates}
          xrot := (xori * cosang) - (yori * sinang);
          yrot := (xori * sinang) + (yori * cosang);
 
            {Deshacemos la traslación
             Undo translation}
          xrot := xrot + dx;
          yrot := yrot + dy;
 
            {Copiamos el pixel del bitmap de origen al bitmap temporal
             Copy pixel from origin bitmap to temporal bitmap}
          tmpbmp.Canvas.Pixels[j, i] :=
            OrigBmp.Canvas.Pixels[Round(xrot), Round(yrot)];
        end; 
      end; 
 
        {Asignamos el bitmap rotado al bitmap de destino
         Assign the rotated bitmap to the destination bitmap}
      DestBmp.Assign(tmpbmp);
    finally
        {Destruimos bitmap temporal / Destroy temp bitmap}
      tmpbmp.Free;
    end; 
end;

procedure TFrmSel.RotarH(BMPOrigen, BMPDestino:TBitmap);
var
   f,c:integer;
   Ancho,Alto:integer;
   tmpBMP: TBitmap;
begin
  {Bitmap temporal}
  tmpBMP:=TBitmap.create;
  with tmpBMP do 
  begin 
    Width:=BMPOrigen.height;
    Height :=BMPOrigen.width;
  end; 
 
  {Inicializamos los límites de los bucles}
  {Initialize loop's limits}
  Ancho:=BMPOrigen.Width-1;
  Alto :=BMPOrigen.Height-1;
 
  {Copiamos los pixels}
  {Copy the pìxels}
  for f:=0 to Alto do 
  begin 
    for c:=0 to Ancho do 
    begin 
      tmpBMP.Canvas.Pixels[Alto-f,c]:=BMPOrigen.Canvas.Pixels[c,f];
      Application.processmessages;
    end; 
 
  end; 
 
  BMPDestino.Assign(tmpBMP);
  tmpBMP.Free;
end; 



procedure TFrmSel.RotarAntiH(BMPOrigen, BMPDestino:TBitmap);
var
   f,c:integer;
   Ancho,Alto:integer;
   tmpBMP: TBitmap;
begin 
  {Bitmap temporal}
  tmpBMP:=TBitmap.create;
  with tmpBMP do 
  begin 
    Width:=BMPOrigen.height;
    Height :=BMPOrigen.width;
  end; 
 
  {Inicializamos los límites de los bucles}
  {Initialize loop's limits}
  Ancho:=BMPOrigen.Width-1;
  Alto :=BMPOrigen.Height-1;
 
  {Copiamos los pixels}
  {Copy the pìxels}
  for f:=0 to Alto do 
  begin 
    for c:=0 to Ancho do 
    begin 
      tmpBMP.Canvas.Pixels[f,Ancho-c]:=BMPOrigen.Canvas.Pixels[c,f];
      Application.processmessages;
    end; 
 
  end; 
 
  BMPDestino.Assign(tmpBMP);
  tmpBMP.Free;
end; 



procedure TFrmSel.EspejoVrt(BMPOrigen, BMPDestino:TBitmap);
var 
   f,c:integer;
   Ancho,Alto:integer;
   tmpBMP: TBitmap;
begin 
  {Bitmap temporal}
  tmpBMP:=TBitmap.create;
  with tmpBMP do 
  begin 
    Height:=BMPOrigen.height;
    Width :=BMPOrigen.width;
  end; 
 
  {Inicializamos los límites de los bucles}
  {Initialize loop's limits}
  Ancho:=BMPOrigen.Width-1;
  Alto :=BMPOrigen.Height-1;
 
  {Copiamos los pixels}
  {Copy the pìxels}
  for f:=0 to Alto do 
  begin 
    for c:=0 to Ancho do 
      tmpBMP.Canvas.Pixels[c,f]:=BMPOrigen.Canvas.Pixels[c,Alto-f];
  end; 
 
  BMPDestino.Assign(tmpBMP);
  tmpBMP.Free;
end;


procedure TFrmSel.EspejoHrz(BMPOrigen, BMPDestino:TBitmap);
var
   f,c:integer;
   Ancho,Alto:integer;
   tmpBMP: TBitmap;
begin 
  {Bitmap temporal}
  tmpBMP:=TBitmap.create;
  with tmpBMP do 
  begin 
    Height:=BMPOrigen.height;
    Width :=BMPOrigen.width;
  end; 
 
  {Inicializamos los límites de los bucles}
  {Initialize loop's limits}
  Ancho:=BMPOrigen.Width-1;
  Alto :=BMPOrigen.Height-1;
 
  {Copiamos los pixels}
  {Copy the pìxels}
  for f:=0 to Alto do 
  begin 
    for c:=0 to Ancho do 
      tmpBMP.Canvas.Pixels[Ancho-c,f]:=BMPOrigen.Canvas.Pixels[c,f];
  end; 
 
  BMPDestino.Assign(tmpBMP);
  tmpBMP.Free;
end; 



procedure TFrmSel.NegativeBitmap(OrigBmp, DestBmp: TBitmap);
   var
    i, j: integer;
       tmpbmp: TBitmap;
       OrigRow, DestRow: pRGBArray;
   begin
       { Creamos un bitmap temporal. Esto nos permite usar el mismo bitmap para
         entrada y salida
         Create a temporal bitmap. This allows to use the same bitmap
         as input or output }
     tmpbmp := TBitmap.Create;

     try
         { Asignamos al bitmap temporal las características del original
           Assign the temporal bitmap the same characteristics as the
original }
       tmpbmp.Width := OrigBmp.Width;
       tmpbmp.Height := OrigBmp.Height;
       OrigBmp.PixelFormat := pf24bit;
       tmpbmp.PixelFormat := OrigBmp.PixelFormat;

         { Para cada fila / for each row  }
       for i := 0 to tmpbmp.Height -1 do
       begin
           { Asignamos Scanline actual / assign current ScanLine }
         OrigRow := OrigBmp.ScanLine[i];
         DestRow := tmpbmp.ScanLine[i];

           { Para cada columna / for each column }
         for j := 0 to tmpbmp.Width - 1 do
         begin
           { Cambiamos los valores de rojo, verde y azul
             Change red, green, blue values }
           DestRow[j].rgbtRed := 255 - OrigRow[j].rgbtRed;
           DestRow[j].rgbtGreen := 255 - OrigRow[j].rgbtGreen;
           DestRow[j].rgbtBlue := 255 - OrigRow[j].rgbtBlue;  
         end;
       end;

       { Asignamos el bitmap en negativo al bitmap de destino
         Assign the negative bitmap to the destination bitmap }
     DestBmp.Assign(tmpbmp);
   finally
       { Destruimos bitmap temporal / Destroy temp bitmap }
     tmpbmp.Free;
   end;
end;

procedure TFrmSel.FormCreate(Sender: TObject);
begin
  EdtGuardar.Text := FrmPrinc.EdtGuardar.Text;
  Multi := 0;
  MultiM := 0;
end;

procedure TFrmSel.GuardarComo1Click(Sender: TObject);
begin
  FrmPrinc.Sp1.FileName := 'Captura';
  If FrmPrinc.RgFormato.ItemIndex = 0 Then
    Begin
      FrmPrinc.Sp1.DefaultExt := GraphicExtension(TBitmap);
      FrmPrinc.Sp1.Filter := GraphicFilter(TBitmap);
    End
  Else
    Begin
      FrmPrinc.Sp1.DefaultExt := GraphicExtension(TJPEGImage);
      FrmPrinc.Sp1.Filter := GraphicFilter(TJPEGImage);
    End;

  If FrmPrinc.SP1.Execute Then
    If FrmPrinc.RGFormato.ItemIndex = 0 Then FrmPrinc.GBmp(FrmPrinc.SP1.FileName, ImgSel.Picture.Bitmap)
        Else FrmPrinc.GJpg(FrmPrinc.SP1.FileName, ImgSel.Picture.Bitmap);
end;

procedure TFrmSel.Principal1Click(Sender: TObject);
begin
  FrmPrinc.Show;
  FrmSel.Close;
end;

procedure TFrmSel.SpeedButton1Click(Sender: TObject);
Var
  X1,X2,Y1,Y2 : Integer;
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  FrmTamanio.ShowModal;
  ImgSel.Canvas.Pen.Width := StrToInt(FrmTamanio.EdtTamanio.Text);
  X2 := (ImgSel.Width - (StrToInt(FrmTamanio.EdtTamanio.Text) Div 2));
  Y2 := (ImgSel.Height - (StrToInt(FrmTamanio.EdtTamanio.Text) Div 2));
  X1 := (StrToInt(FrmTamanio.EdtTamanio.Text) Div 2);
  Y1 := (StrToInt(FrmTamanio.EdtTamanio.Text) Div 2);
  If ColorD.Execute Then ImgSel.Canvas.Pen.Color := ColorD.Color;
  If Multim > 0 Then
    Begin
      ImgSel.Canvas.MoveTo((X1*(2*Multim)),(Y1*(2*Multim)));
      ImgSel.Canvas.LineTo((X2*(2*Multim)),(Y1*(2*Multim)));
      ImgSel.Canvas.MoveTo((X1*(2*Multim)),(Y2*(2*Multim)));
      ImgSel.Canvas.LineTo((X2*(2*Multim)),(Y2*(2*Multim)));
      ImgSel.Canvas.MoveTo((X1*(2*Multim)),(Y1*(2*Multim)));
      ImgSel.Canvas.LineTo((X1*(2*Multim)),(Y2*(2*Multim)));
      ImgSel.Canvas.MoveTo((X2*(2*Multim)),(Y1*(2*Multim)));
      ImgSel.Canvas.LineTo((X2*(2*Multim)),(Y2*(2*Multim)))
    End
  Else
    If Multi = 0 Then
      Begin
        ImgSel.Canvas.MoveTo(X1,Y1);
        ImgSel.Canvas.LineTo(X2,Y1);
        ImgSel.Canvas.MoveTo(X1,Y2);
        ImgSel.Canvas.LineTo(X2,Y2);
        ImgSel.Canvas.MoveTo(X1,Y1);
        ImgSel.Canvas.LineTo(X1,Y2);
        ImgSel.Canvas.MoveTo(X2,Y1);
        ImgSel.Canvas.LineTo(X2,Y2)
      End
    Else
      If Multi > 0 Then
        Begin
          ImgSel.Canvas.MoveTo((X1 Div (2*Multi)),(Y1 Div (2*Multi)));
          ImgSel.Canvas.LineTo((X2 Div (2*Multi)),(Y1 Div (2*Multi)));
          ImgSel.Canvas.MoveTo((X1 Div (2*Multi)),(Y2 Div (2*Multi)));
          ImgSel.Canvas.LineTo((X2 Div (2*Multi)),(Y2 Div (2*Multi)));
          ImgSel.Canvas.MoveTo((X1 Div (2*Multi)),(Y1 Div (2*Multi)));
          ImgSel.Canvas.LineTo((X1 Div (2*Multi)),(Y2 Div (2*Multi)));
          ImgSel.Canvas.MoveTo((X2 Div (2*Multi)),(Y1 Div (2*Multi)));
          ImgSel.Canvas.LineTo((X2 Div (2*Multi)),(Y2 Div (2*Multi)))
        End;


 { ImgSel.Canvas.MoveTo(X1,Y1);
  ImgSel.Canvas.LineTo(X2,Y1);
  ImgSel.Canvas.MoveTo(X1,Y2);
  ImgSel.Canvas.LineTo(X2,Y2);
  ImgSel.Canvas.MoveTo(X1,Y1);
  ImgSel.Canvas.LineTo(X1,Y2);
  ImgSel.Canvas.MoveTo(X2,Y1);
  ImgSel.Canvas.LineTo(X2,Y2); }
  OnTodo;
end;

procedure TFrmSel.BtnGuardarClick(Sender: TObject);
begin
  If EdtGuardar.Text = '' Then ShowMessage('El campo de la direccion esta vacio.')
    Else
      If FrmPrinc.RGFormato.ItemIndex = 0 Then FrmPrinc.GBmp(EdtGuardar.Text, ImgSel.Picture.Bitmap)
        Else FrmPrinc.GJpg(EdtGuardar.Text, ImgSel.Picture.Bitmap);
end;

procedure TFrmSel.SpeedButton2Click(Sender: TObject);
Var
    BMP1, BMP2: TBitmap;
    X, Y : Integer;
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  BMP1 := TBitmap.Create;
//  BMP1.LoadFromFile('C:\bitmap.bmp'); //Imagen de 8 bits
  BMP1.Assign(ImgSel.Picture.Bitmap);
  BMP2 := TBitmap.Create;
  BMP2.PixelFormat := pf1bit;
//  BMP2.PixelFormat := pf8bit;
  BMP2.Height := BMP1.Height;
  BMP2.Width := BMP1.Width;
  for X := 0 to BMP1.Width - 1 do
    for Y := 0 to BMP1.Height - 1 do
      BMP2.Canvas.Pixels[X, Y] := BMP1.Canvas.Pixels[X, Y];
  BMP1.Free;
  ImgSel.Picture.Bitmap.Assign(BMP2);
  OnTodo;
end;

procedure TFrmSel.SpeedButton3Click(Sender: TObject);
Var
    BMP1, BMP2: TBitmap;
    X, Y : Integer;
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  BMP1 := TBitmap.Create;
//  BMP1.LoadFromFile('C:\bitmap.bmp'); //Imagen de 8 bits
  BMP1.Assign(ImgSel.Picture.Bitmap);
  BMP2 := TBitmap.Create;
//  BMP2.PixelFormat := pf1bit;
  BMP2.PixelFormat := pf8bit;
  BMP2.Height := BMP1.Height;
  BMP2.Width := BMP1.Width;
  for X := 0 to BMP1.Width - 1 do
    for Y := 0 to BMP1.Height - 1 do
      BMP2.Canvas.Pixels[X, Y] := BMP1.Canvas.Pixels[X, Y];
  BMP1.Free;
  ImgSel.Picture.Bitmap.Assign(BMP2);
  OnTodo;
end;

procedure TFrmSel.Deshacer1Click(Sender: TObject);
begin
  ImgSel.Picture.LoadFromFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
end;

procedure TFrmSel.SpeedButton4Click(Sender: TObject);
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  NegativeBitmap(ImgSel.Picture.Bitmap, ImgSel.Picture.Bitmap);
  OnTodo;
end;


procedure TFrmSel.SpeedButton5Click(Sender: TObject);
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  EspejoHrz(ImgSel.Picture.Bitmap,ImgSel.Picture.Bitmap);
  OnTodo;
end;

procedure TFrmSel.SpeedButton6Click(Sender: TObject);
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  EspejoVrt(ImgSel.Picture.Bitmap,ImgSel.Picture.Bitmap);
  OnTodo;
end;

procedure TFrmSel.SpeedButton7Click(Sender: TObject);
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  RotarAntiH(ImgSel.Picture.Bitmap,ImgSel.Picture.Bitmap);
  OnTodo;
end;

procedure TFrmSel.SpeedButton8Click(Sender: TObject);
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  RotarH(ImgSel.Picture.Bitmap,ImgSel.Picture.Bitmap);
  OnTodo;
end;

procedure TFrmSel.SpeedButton9Click(Sender: TObject);
Var
  BitImg : TBitMap;
begin
  OffTodo;
  BitImg := TBitMap.Create;
//  BitImg.Create;
//Le tengo que sumar el espacio que se corta
//Si es que eligio con sumatoria
//  FrmRota.ShowModal;
  If FrmRota.RadioGroup1.ItemIndex = 0 Then
    Begin
      BitImg.Height := ImgSel.Height;
      BitImg.Width := ImgSel.Width;
    End
  Else
    Begin
      If ImgSel.Height < ImgSel.Width Then BitImg.Height := ImgSel.Width
        Else BitImg.Width := ImgSel.Height;
   //   BitImg.Height := ImgSel.Height;
   //   BitImg.Width := ImgSel.Width;
    End;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  FrmGrados.ShowModal;
//  FrmSel.Caption := floatToStr(rotate(ImgSel.Picture.Bitmap,BitImg,(ImgSel.Width Div 2),(ImgSel.Height Div 2),30, 1)) + 'ms';
//  ImgSel.Picture.Bitmap.Assign(BitImg);
  RotateBitmap(ImgSel.Picture.Bitmap,StrToInt(FrmGrados.EdtGrados.Text),BitImg);
  ImgSel.Picture.Bitmap.Assign(BitImg);
//  BitImg.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
//  ImgSel.Picture.LoadFromFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
//  FastRotateBitmap(ImgSel.Picture.Bitmap,-10,ImgSel.Picture.Bitmap);
//  ShowMessage('Esta funcion, esta teniedo problemas de desarrollo' + #13 +
//              'Por el momento, no es utilizable. Disculpe las molestias.');
  OnTodo;
end;

procedure TFrmSel.SpeedButton10Click(Sender: TObject);
begin
  If SpeedButton10.BorderStyle = bsNone Then
    Begin
      OffTodo;
      SpeedButton10.BorderStyle := bsSingle;
   //   Dibujar;
    End
  Else
    Begin
   //   DejarDibujar;
      SpeedButton10.BorderStyle := bsNone;
      OnTodo;
    End;
//  ShowMessage('Esta herramienta, aun esta en desarrollo.');
end;

procedure TFrmSel.SpeedButton11Click(Sender: TObject);
begin
  OffTodo;
  ImgSel.AutoSize := False;
  ImgSel.Stretch := True;
  ImgSel.Height := (ImgSel.Height * 2);
  ImgSel.Width := (ImgSel.Width * 2);
//  ShowMessage('Esta herramienta, aun esta en desarrollo.');
  Multi := Multi + 1;
  Multim := MultiM - 1;
  OnTodo;
end;

procedure TFrmSel.SpeedButton12Click(Sender: TObject);
begin
  OffTodo;
  ImgSel.AutoSize := False;
  ImgSel.Stretch := True;
  ImgSel.Height := (ImgSel.Height Div 2);
  ImgSel.Width := (ImgSel.Width Div 2);
//  ShowMessage('Esta herramienta, aun esta en desarrollo.');
  Multim := Multim + 1;
  Multi := Multi - 1;
  OnTodo;
end;

procedure TFrmSel.Image1Click(Sender: TObject);
begin
  If SpeedButton10.BorderStyle = bsNone Then
    Begin
      OffTodo;
      SpeedButton10.BorderStyle := bsSingle;
      SpeedButton14.Enabled := True;
      SpeedButton15.Enabled := True;
      SpeedButton10.Enabled := True;
      Image1.Visible := True;
      Dibujar := True;
   //   Dibujar;
    End
  Else
    Begin
   //   DejarDibujar;
      Dibujar := False;
      SpeedButton10.BorderStyle := bsNone;
      OnTodo;
    End;
end;

procedure TFrmSel.ImgSelMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
If Dibujar Then 
  If Button = mbLeft Then Dibujando :=False;
end;

procedure TFrmSel.ImgSelMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
If Dibujar Then
  If Button = mbLeft Then
    Begin
     Dibujando := True;
     //Si esta con Zoom multiplicar o dividir
     If Multim > 0 Then ImgSel.Canvas.MoveTo((X * (2*Multim)),(Y * (2*Multim)))
       Else
         If Multi = 0 Then ImgSel.Canvas.MoveTo(X,Y)
           Else If Multi > 0 Then ImgSel.Canvas.MoveTo((X Div (2*Multi)),(Y Div (2*Multi)));
    end;
end;

procedure TFrmSel.ImgSelMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  //Si esta con Zoom multiplicar o dividir
  If Dibujar Then If Dibujando Then
    Begin
      If Multim > 0 Then ImgSel.Canvas.LineTo((X * (2*Multim)),(Y * (2*Multim)))
        Else
          If Multi = 0 Then ImgSel.Canvas.LineTo(X,Y)
            Else
              If Multi > 0 Then ImgSel.Canvas.LineTo((X Div (2*Multi)),(Y Div (2*Multi)));
    End;
end;

procedure TFrmSel.Abrir1Click(Sender: TObject);
begin
  Opd.Filter := GraphicFilter(TBitMap);
  ImgSel.AutoSize := True;
  If OPD.Execute Then ImgSel.Picture.LoadFromFile(OPD.FileName);
end;

procedure TFrmSel.SpeedButton13Click(Sender: TObject);
Var
 X,Y : Word;
 Tonalidad : Byte;
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
// BMPOrigen.Height := Image4.Height;
// Image1.Width := Image4.Width;
 For X := 0 To ImgSel.Width -1 Do
  For Y := 0 To ImgSel.Height -1 Do
   Begin
    Tonalidad := Trunc( (GetRValue(ImgSel.Canvas.Pixels[X,Y]) + GetGValue(ImgSel.Canvas.Pixels[X,Y]) + GetBValue(ImgSel.Canvas.Pixels[X,Y])) / 3 );
    ImgSel.Canvas.Pixels[X,Y] := RGB(Tonalidad,Tonalidad,Tonalidad)
   End;
  OnTodo;
end;

procedure TFrmSel.AbrirJPG1Click(Sender: TObject);
Var
  Btm : TBitMap;
  Jtp : TJPEGImage;
Begin
  Btm := TBitMap.Create;
  Jtp := TJPEGImage.Create;
  ImgSel.AutoSize := True;
  Opd.Filter := GraphicFilter(TJPEGImage);
  If OPD.Execute Then Jtp.LoadFromFile(OPD.FileName);
  Btm.Assign(Jtp);
  Btm.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  ImgSel.Picture.LoadFromFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
end;

procedure TFrmSel.CerrarSeleccion1Click(Sender: TObject);
begin
  FrmSel.Close;
end;

procedure TFrmSel.SpeedButton14Click(Sender: TObject);
begin
  FrmTrazo.ShowModal;
end;

procedure TFrmSel.SpeedButton15Click(Sender: TObject);
begin
  If ColorD.Execute Then ImgSel.Canvas.Pen.Color := (ColorD.Color);
end;

procedure TFrmSel.FormShow(Sender: TObject);
begin
  Multi := 0;
  MultiM := 0;
end;

procedure TFrmSel.SpeedButton16Click(Sender: TObject);
Var
  X,Y : Cardinal;
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  FrmDlgDifu.Image1.Picture.LoadFromFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  FrmDlgDifu.ShowModal;
  //Difuso
  If SpeedButton16.Tag = 1 Then
    Begin
      For X := 0 To ImgSel.Width - 1 Do
        For Y := 0 To ImgSel.Height - 1 Do
          ImgSel.Picture.Bitmap.Canvas.Pixels[X,Y] := DifusionPer(X,Y,FrmDlgDifu.SpinEdit2.Value,FrmDlgDifu.SpinEdit1.Value,FrmDlgDifu.SpeedButton4.Down,FrmDlgDifu.SpeedButton3.Down,FrmDlgDifu.SpeedButton1.Down,FrmDlgDifu.SpeedButton2.Down);
    End;
  SpeedButton16.Tag := 0;
  OnTodo;
end;

procedure TFrmSel.SpeedButton17Click(Sender: TObject);
begin
  OffTodo;
  ImgSel.Picture.SaveToFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  FrmDlgSatu.Image1.Picture.LoadFromFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
  FrmDlgSatu.ShowModal;
  //Difuso
  If SpeedButton16.Tag = 1 Then
    Begin
    //
    End;
  SpeedButton17.Tag := 0;
  OnTodo;
end;

procedure TFrmSel.SpeedButton18Click(Sender: TObject);
begin
  FrmPrinc.Devolver;
  FrmSel.Close;
end;

procedure TFrmSel.Panel1Click(Sender: TObject);
begin
  LblTexto.Visible := True;
  ImgSel.Canvas.CopyMode := cmSrcCopy;
  ImgSel.Canvas.CopyRect(RECT(LblTexto.Left,LblTexto.Top,(LblTexto.Left+LblTexto.Width),(LblTexto.Top+LblTexto.Height)), LblTexto.Canvas, RECT(LblTexto.Left,LblTexto.Top,(LblTexto.Left+LblTexto.Width),(LblTexto.Top+LblTexto.Height)));
  ImgSel.Canvas.CopyMode := cmPatInvert;
  LblTexto.Visible := False;
end;

end.
