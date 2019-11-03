unit UCar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TFrmCarpeta = class(TForm)
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCarpeta: TFrmCarpeta;

implementation

{$R *.dfm}

procedure TFrmCarpeta.Button1Click(Sender: TObject);
begin
  FrmCarpeta.Close;
end;

end.
