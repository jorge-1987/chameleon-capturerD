unit UAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TFrmAbout = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    MmLicencia: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbout: TFrmAbout;

implementation

{$R *.dfm}

end.
