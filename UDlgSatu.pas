unit UDlgSatu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls, Usel;

type
  TFrmDlgSatu = class(TForm)
    ScrollBox1: TScrollBox;
    Image1: TImage;
    Button1: TButton;
    SpinEdit1: TSpinEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure Saturar(Var OriR,OriG,OriB : Byte; Cantidad : Smallint);
    Procedure DesSaturar(Var OriR,OriG,OriB : Byte; Cantidad : Smallint);
  public
    { Public declarations }
  end;

var
  FrmDlgSatu: TFrmDlgSatu;

implementation

uses UPrinc;

{$R *.dfm}

Procedure TFrmDlgSatu.Saturar(Var OriR,OriG,OriB : Byte; Cantidad : Smallint);
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

Procedure TFrmDlgSatu.DesSaturar(Var OriR,OriG,OriB : Byte; Cantidad : Smallint);
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

procedure TFrmDlgSatu.Button2Click(Sender: TObject);
Var
 X,Y : Word;
 ColR,ColG,ColB : Byte;
 Can : Smallint;
begin
// Image1.Height := Image3.Height;
// Image1.Width := Image3.Width;
 Can := SpinEdit1.Value;
 For X := 0 To Image1.Width Do
  For Y := 0 To Image1.Height Do
   Begin
    ColR := GetRValue(Image1.Canvas.Pixels[X,Y]);
    ColG := GetGValue(Image1.Canvas.Pixels[X,Y]);
    ColB := GetBValue(Image1.Canvas.Pixels[X,Y]);
    If Can > 0 Then
      Saturar(ColR,ColG,ColB,Can)
    Else
      DesSaturar(ColR,ColG,ColB,- Can);
    Image1.Canvas.Pixels[X,Y] := RGB(ColR,ColG,ColB)
   End;
end;

procedure TFrmDlgSatu.Button3Click(Sender: TObject);
Var
 X,Y : Word;
 ColR,ColG,ColB : Byte;
 Can : Smallint;
begin
// Image1.Height := Image3.Height;
// Image1.Width := Image3.Width;
 Can := SpinEdit1.Value;
 For X := 0 To Frmsel.ImgSel.Width Do
  For Y := 0 To Frmsel.ImgSel.Height Do
   Begin
    ColR := GetRValue(Frmsel.ImgSel.Canvas.Pixels[X,Y]);
    ColG := GetGValue(Frmsel.ImgSel.Canvas.Pixels[X,Y]);
    ColB := GetBValue(Frmsel.ImgSel.Canvas.Pixels[X,Y]);
    If Can > 0 Then
      Saturar(ColR,ColG,ColB,Can)
    Else
      DesSaturar(ColR,ColG,ColB,- Can);
    Frmsel.ImgSel.Canvas.Pixels[X,Y] := RGB(ColR,ColG,ColB)
   End;
   FrmDlgSatu.Close;
end;

procedure TFrmDlgSatu.Button1Click(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(FrmPrinc.DirectorioTemporal + '\cseltemp.bmp');
end;

end.
