unit UDlgDifu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, Buttons;

type
  TFrmDlgDifu = class(TForm)
    BtnAplicar: TButton;
    Button2: TButton;
    Button3: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SB: TScrollBox;
    Image1: TImage;
    procedure BtnAplicarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function DifusionPer(PosX,PosY : Cardinal; Por,Pixs : Byte; HDer,HIzq,HArr,HAba : Boolean) : TColor;
  end;

var
  FrmDlgDifu: TFrmDlgDifu;

implementation

uses UPrinc, USel;

{$R *.dfm}

Function TFrmDlgDifu.DifusionPer(PosX,PosY : Cardinal; Por,Pixs : Byte; HDer,HIzq,HArr,HAba : Boolean) : TColor;
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
  OriR := GetRValue(Image1.Canvas.Pixels[PosX,PosY]);
  OriG := GetGValue(Image1.Canvas.Pixels[PosX,PosY]);
  OriB := GetBValue(Image1.Canvas.Pixels[PosX,PosY]);
  // Recolectar Derecha
  If HIzq Then
    For Aux := 1 To Pixs Do
      If Aux + PosX < Image1.Width Then Begin
        AgrPix := AgrPix + 1;
        AgrR := AgrR + GetRValue(Image1.Canvas.Pixels[PosX + Aux,PosY]);
        AgrG := AgrG + GetGValue(Image1.Canvas.Pixels[PosX + Aux,PosY]);
        AgrB := AgrB + GetBValue(Image1.Canvas.Pixels[PosX + Aux,PosY])
      End;
  // Recolectar Izquierda
  If HDer Then
    For Aux := 1 To Pixs Do Begin
      AuxIf := PosX - Aux;
      If AuxIf >= 0 Then Begin
        AgrPix := AgrPix + 1;
        AgrR := AgrR + GetRValue(Image1.Canvas.Pixels[PosX - Aux,PosY]);
        AgrG := AgrG + GetGValue(Image1.Canvas.Pixels[PosX - Aux,PosY]);
        AgrB := AgrB + GetBValue(Image1.Canvas.Pixels[PosX - Aux,PosY])
      End
    End;
  // Recolectar Abajo
  If HArr Then
    For Aux := 1 To Pixs Do
      If Aux + PosY < Image1.Height Then Begin
        AgrPix := AgrPix + 1;
        AgrR := AgrR + GetRValue(Image1.Canvas.Pixels[PosX,PosY + Aux]);
        AgrG := AgrG + GetGValue(Image1.Canvas.Pixels[PosX,PosY + Aux]);
        AgrB := AgrB + GetBValue(Image1.Canvas.Pixels[PosX,PosY + Aux])
      End;
  // Recolectar Izquierda
  If HAba Then
    For Aux := 1 To Pixs Do Begin
      AuxIf := PosY - Aux;
      If AuxIf >= 0 Then Begin
        AgrPix := AgrPix + 1;
        AgrR := AgrR + GetRValue(Image1.Canvas.Pixels[PosX,PosY - Aux]);
        AgrG := AgrG + GetGValue(Image1.Canvas.Pixels[PosX,PosY - Aux]);
        AgrB := AgrB + GetBValue(Image1.Canvas.Pixels[PosX,PosY - Aux])
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

procedure TFrmDlgDifu.BtnAplicarClick(Sender: TObject);
begin
  FrmSel.SpeedButton16.Tag := 1;
  FrmDlgDifu.Close;
end;

procedure TFrmDlgDifu.Button2Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
end;

procedure TFrmDlgDifu.Button3Click(Sender: TObject);
Var
  X,Y : Cardinal;
begin
  Button2.Enabled := False;
  Button3.Enabled := False;
  BtnAplicar.Enabled := False;
  SpinEdit1.Enabled := False;
  SpinEdit1.Enabled := False;
  SpeedButton1.Enabled := False;
  SpeedButton2.Enabled := False;
  SpeedButton3.Enabled := False;
  SpeedButton4.Enabled := False;
  For X := 0 To Image1.Width - 1 Do
    For Y := 0 To Image1.Height - 1 Do
      Image1.Picture.Bitmap.Canvas.Pixels[X,Y] := DifusionPer(X,Y,SpinEdit2.Value,SpinEdit1.Value,SpeedButton4.Down,SpeedButton3.Down,SpeedButton1.Down,SpeedButton2.Down);
  Button2.Enabled := True;
  Button3.Enabled := True;
  BtnAplicar.Enabled := True;
  SpinEdit1.Enabled := True;
  SpinEdit1.Enabled := True;
  SpeedButton1.Enabled := True;
  SpeedButton2.Enabled := True;
  SpeedButton3.Enabled := True;
  SpeedButton4.Enabled := True;
end;

end.
