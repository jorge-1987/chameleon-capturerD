unit UCapCon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, UCar, ExtCtrls, UPrinc, Menus;

type
  TFrmCapCon = class(TForm)
    Label1: TLabel;
    EdtCarpeta: TEdit;
    Label2: TLabel;
    RGTipo: TRadioGroup;
    Label3: TLabel;
    EdtTiempo: TEdit;
    Label4: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LblEsp: TLabel;
    MainMenu1: TMainMenu;
    BuscarCarpeta1: TMenuItem;
    Ayuda1: TMenuItem;
    EdtHH: TEdit;
    EdtMM: TEdit;
    EdtSS: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label10: TLabel;
    EdtImg: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label11: TLabel;
    EdtNombre: TEdit;
    Label12: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BuscarCarpeta1Click(Sender: TObject);
    procedure EdtTiempoKeyPress(Sender: TObject; var Key: Char);
    procedure EdtImgKeyPress(Sender: TObject; var Key: Char);
    procedure EdtHHKeyPress(Sender: TObject; var Key: Char);
    procedure EdtMMKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSSKeyPress(Sender: TObject; var Key: Char);
    procedure RGTipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCapCon: TFrmCapCon;

implementation

{$R *.dfm}

procedure TFrmCapCon.BitBtn2Click(Sender: TObject);
begin
  FrmCapCon.Close;
end;

procedure TFrmCapCon.BitBtn1Click(Sender: TObject);
Var
  Validado : Boolean;
begin
  //Validacion:
  Validado := True;
  If EdtHH.Text = '' Then
    Begin
      Validado := False;
      ShowMessage('El Espacio de Horas' +#13+ 'No puede estar en blanco');
    End;
  If EdtMM.Text = '' Then
    Begin
      Validado := False;
      ShowMessage('El Espacio de Minutos' +#13+ 'No puede estar en blanco');
    End;
  If EdtSS.Text = '' Then
    Begin
      Validado := False;
      ShowMessage('El Espacio de Segundos' +#13+ 'No puede estar en blanco');
    End;
  If EdtNombre.Text = '' Then
    Begin
      Validado := False;
      ShowMessage('El Espacio de Nombre' +#13+ 'No puede estar en blanco');
    End;
  If EdtTiempo.Text = '' Then
    Begin
      Validado := False;
      ShowMessage('El Espacio de Intervalo' +#13+ 'No puede estar en blanco');
    End;
  If EdtImg.Text = '' Then
    Begin
      Validado := False;
      ShowMessage('El Espacio de Cantidad de Imagenes' +#13+ 'No puede estar en blanco');
    End;
  If StrToInt(EdtMM.Text) > 59 Then
    Begin
      Validado := False;
      ShowMessage('Los Minutos' +#13+ 'No pueden ser mas de 59');
    End;
  If StrToInt(EdtSS.Text) > 59 Then
    Begin
      Validado := False;
      ShowMessage('Los Segundos' +#13+ 'No pueden ser mas de 59');
    End;

  //Guardar todos los Datos
  If Validado = True Then
    Begin
      //FrmPrinc.RgSecu.Enabled := True;
      FrmCapCon.Close;
    End;
end;

procedure TFrmCapCon.BuscarCarpeta1Click(Sender: TObject);
begin
  FrmCarpeta.ShowModal;
  EdtCarpeta.Text := FrmCarpeta.DirectoryListBox1.Directory;
  EdtCarpeta.Text := (EdtCarpeta.Text + '\')
end;

procedure TFrmCapCon.EdtTiempoKeyPress(Sender: TObject; var Key: Char);
begin
  If Not(Key In['0'..'9',#81])  // Si no es un caracter entre el 0 y el 9
     Then Key :=#0;
end;

procedure TFrmCapCon.EdtImgKeyPress(Sender: TObject; var Key: Char);
begin
  If Not(Key In['0'..'9',#81])  // Si no es un caracter entre el 0 y el 9
     Then Key :=#0;
end;

procedure TFrmCapCon.EdtHHKeyPress(Sender: TObject; var Key: Char);
begin
  If Not(Key In['0'..'9',#81])  // Si no es un caracter entre el 0 y el 9
     Then Key :=#0;
end;

procedure TFrmCapCon.EdtMMKeyPress(Sender: TObject; var Key: Char);
begin
  If Not(Key In['0'..'9',#81])  // Si no es un caracter entre el 0 y el 9
     Then Key :=#0;
end;


procedure TFrmCapCon.EdtSSKeyPress(Sender: TObject; var Key: Char);
begin
  If Not(Key In['0'..'9',#81])  // Si no es un caracter entre el 0 y el 9
     Then Key :=#0;
end;

procedure TFrmCapCon.RGTipoClick(Sender: TObject);
begin
  If RgTipo.ItemIndex = 0 Then
    Begin
      EdtHH.Enabled := False;
      EdtMM.Enabled := False;
      EdtSS.Enabled := False;
      EdtImg.Enabled := False;
    End
  Else If RgTipo.ItemIndex = 1 Then
    Begin
      EdtHH.Enabled := True;
      EdtMM.Enabled := True;
      EdtSS.Enabled := True;
      EdtImg.Enabled := False;
    end
  Else
    Begin
      EdtHH.Enabled := False;
      EdtMM.Enabled := False;
      EdtSS.Enabled := False;
      EdtImg.Enabled := True;
    end;
end;

end.
