unit URota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmRota = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRota: TFrmRota;

implementation

{$R *.dfm}

procedure TFrmRota.Button1Click(Sender: TObject);
begin
  FrmRota.Close;
end;

end.
