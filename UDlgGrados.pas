unit UDlgGrados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmGrados = class(TForm)
    Label1: TLabel;
    EdtGrados: TEdit;
    BtnAceptar: TButton;
    procedure BtnAceptarClick(Sender: TObject);
    procedure EdtGradosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGrados: TFrmGrados;

implementation

{$R *.dfm}

procedure TFrmGrados.BtnAceptarClick(Sender: TObject);
begin
  FrmGrados.Close;
end;

procedure TFrmGrados.EdtGradosKeyPress(Sender: TObject; var Key: Char);
begin
  If Not(Key In['0'..'9','-',#81])  // Si no es un caracter entre el 0 y el 9
     Then Key :=#0;
end;

end.
