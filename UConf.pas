unit UConf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons;

type
  TFrmConf = class(TForm)
    PC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    RgSector: TRadioGroup;
    Label7: TLabel;
    RadioGroup3: TRadioGroup;
    Label8: TLabel;
    RadioGroup4: TRadioGroup;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    RadioGroup5: TRadioGroup;
    Label9: TLabel;
    TabSheet4: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    ListBox1: TListBox;
    Label12: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    RadioGroup6: TRadioGroup;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button2: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConf: TFrmConf;

implementation

{$R *.dfm}

procedure TFrmConf.BitBtn1Click(Sender: TObject);
begin
  //Guardar las configuraciones
  //Aplicar efectos
  //Cerrar
end;

procedure TFrmConf.BitBtn2Click(Sender: TObject);
begin
  FrmConf.Close;
end;

end.
