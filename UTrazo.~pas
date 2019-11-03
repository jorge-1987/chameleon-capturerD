unit UTrazo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFrmTrazo = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTrazo: TFrmTrazo;

implementation

Uses USel;

{$R *.dfm}

procedure TFrmTrazo.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  If Not(Key In['0'..'9',#81])  // Si no es un caracter entre el 0 y el 9
     Then Key :=#0;
end;

procedure TFrmTrazo.Button1Click(Sender: TObject);
begin
  FrmSel.ImgSel.Canvas.Pen.Width := StrToInt(Edit1.Text);
  FrmTrazo.Close;
end;

end.
