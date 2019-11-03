unit UMasivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FileCtrl, JPEG, Gauges;

type
  TFrmMasivo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DcO: TDriveComboBox;
    DlO: TDirectoryListBox;
    Flb: TFileListBox;
    DcD: TDriveComboBox;
    DlD: TDirectoryListBox;
    EdtN: TEdit;
    Label3: TLabel;
    RgName: TRadioGroup;
    RgO: TRadioGroup;
    RgD: TRadioGroup;
    Label4: TLabel;
    EdtW: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    Label7: TLabel;
    EdtH: TEdit;
    Label8: TLabel;
    Bar: TGauge;
    Panel2: TPanel;
    ImgC: TImage;
    ImgD: TImage;
    procedure RgOClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure CargarJpg(P:Integer);
    Procedure CargarBmp(P:Integer);
    Procedure GuardarJpg(P:Integer);
    Procedure GuardarBmp(P:Integer);
    Function DTemp():string;
  end;

var
  FrmMasivo: TFrmMasivo;

implementation

{$R *.dfm}

function TFrmMasivo.DTemp():string;
var
  s: string;
  i: integer;
begin
  SetLength(s,MAX_PATH); // redimensionamos el string
  i := GetTempPath(MAX_PATH,PChar(s)); //obtenemos algo
  // si i == 0 entonces es un error interno
  if i = 0 then raise Exception.Create('Error: GetTempPath;')
  else if i > MAX_PATH then // Se necesita más espacio
    begin
      SetLength(s, i); // se lo damos
      GetTempPath(i,PChar(s)); // al fin obtenemos el path
    end;
  // regresamos solo lo necesario y con el delimitador de path
  result := IncludeTrailingPathDelimiter(Copy(s, 1, i));
end;

procedure TFrmMasivo.CargarJpg(P:Integer);
Var
  Jpeg: TJPEGImage;
  Bmp : TBitMap;
  Dire: String;
Begin
//Convertir a BMP
  Jpeg := TJPEGImage.Create;
  Dire := (DlO.Directory + '\' + Flb.Items.Strings[P]);
  Jpeg.LoadFromFile(Dire);
  Bmp := TBitMap.Create;
  Bmp.Assign(Jpeg);

//Guardar BMP Temporal

  Bmp.SaveToFile(Dtemp+'\tmp.bmp');
  Jpeg.Free;
  Bmp.Free;

//Cargar Bmp
  ImgC.Picture.LoadFromFile(Dtemp+'\tmp.bmp');
End;

procedure TFrmMasivo.CargarBmp(P:Integer);
Begin
//Cargar Bmp
  ImgC.Picture.LoadFromFile(DlO.Directory + '\' + Flb.Items.Strings[P]);

End;

procedure TFrmMasivo.GuardarJpg(P:Integer);
Var
  Jpeg: TJPEGImage;
  Dir : String;
Begin
  Jpeg := TJPEGImage.Create;
//Convertir a Jpg
  Jpeg.Assign(ImgD.Picture.Bitmap);
//Guardar Jpg
  Dir := (DlD.Directory+'\');
  If RgName.ItemIndex = 0 Then Dir := (Dir + EdtN.Text + IntToStr(P) + '.jpg')
    Else If RgName.ItemIndex = 1 Then Dir := (DlO.Directory + '\' + Flb.Items.Strings[P])
      Else Dir := (Dir + Flb.Items.Strings[P] + EdtN.Text + IntToStr(P) + '.jpg');
  Jpeg.SaveToFile(Dir);
  Jpeg.Free;
End;

procedure TFrmMasivo.GuardarBmp(P:Integer);
Var
  Dir : String;
Begin
//Lugar a Guardar
  Dir := (DlD.Directory+'\');
  If RgName.ItemIndex = 0 Then Dir := (Dir + EdtN.Text + IntToStr(P) + '.bmp')
    Else If RgName.ItemIndex = 1 Then Dir := (DlO.Directory + '\' + Flb.Items.Strings[P])
      Else Dir := (Dir + Flb.Items.Strings[P] + EdtN.Text + IntToStr(P) + '.bmp');
//Guardar BMP
  ImgD.Picture.SaveToFile(Dir);

End;

procedure TFrmMasivo.RgOClick(Sender: TObject);
begin
  If RgO.ItemIndex = 0 Then Flb.Mask := '*.jpg'
    Else Flb.Mask := '*.bmp'
end;

procedure TFrmMasivo.Button1Click(Sender: TObject);
Var
  I : Integer;
  F : Integer;
  Recta: TRect;
  X : Integer;
  Y : Integer;
begin
//Validar todos los componentes

//Obtener la cantidad de Imagenes
  F := Flb.Count;
//ShowMessage(IntToStr(F));
  Bar.MinValue := 0;
  Bar.MaxValue := F;
  Bar.Progress := 0;
  I := 0;
  X := StrToInt(EdtW.Text);
  Y := StrToInt(EdtH.Text);
//For hasta el final
  While I <> F Do
    Begin
      //Inicializar TImage en Autozise
      ImgC.Stretch := False;
      ImgC.AutoSize := True;
      //Enviar al TImage
      If RgO.ItemIndex = 0 Then CargarJpg(I)
        Else CargarBmp(I);
      //Poner el TImage en Strech
      ImgC.AutoSize := False;
      ImgC.Stretch := True;
      //Modificar al tamaño deseado
      ImgC.Height := Y;
      ImgC.Width := X;
      ImgD.Height := Y;
      ImgD.Width := X;
      Recta := Rect(0,0,X,Y);
      ImgD.Canvas.StretchDraw(Recta, ImgC.Picture.Bitmap);
      //ImgD.Canvas.Draw(0,0, ImgC.Picture.Bitmap);
      //Guardar
      If RgD.ItemIndex = 0 Then GuardarJpg(I)
        Else GuardarBmp(I);
      Bar.Progress := Bar.Progress + 1;
      I := I+1;
    End;
//Cerrar For
//Eliminar Residuos
end;

procedure TFrmMasivo.FormCreate(Sender: TObject);
begin
  DTemp;
end;

end.
