unit UProgramada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmProgramada = class(TForm)
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    HH: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    MM: TEdit;
    Label4: TLabel;
    SS: TEdit;
    Label5: TLabel;
    Label6: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProgramada: TFrmProgramada;

implementation

{$R *.dfm}

end.
