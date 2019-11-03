unit UDlgTamanio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmTamanio = class(TForm)
    Label1: TLabel;
    EdtTamanio: TEdit;
    BtnAceptar: TButton;
    procedure BtnAceptarClick(Sender: TObject);
    procedure EdtTamanioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTamanio: TFrmTamanio;

implementation

{$R *.dfm}

procedure TFrmTamanio.BtnAceptarClick(Sender: TObject);
begin
  FrmTamanio.Close;
end;

procedure TFrmTamanio.EdtTamanioKeyPress(Sender: TObject; var Key: Char);
begin
  If Not(Key In['0'..'9',#81])  // Si no es un caracter entre el 0 y el 9
     Then Key :=#0;
end;

end.
