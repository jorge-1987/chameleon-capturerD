program cpa;

uses
  Forms,
  UPrinc in 'UPrinc.pas' {FrmPrinc},
  USel in 'USel.pas' {FrmSel},
  UDlgTamanio in 'UDlgTamanio.pas' {FrmTamanio},
  UAbout in 'UAbout.pas' {FrmAbout},
  UCapCon in 'UCapCon.pas' {FrmCapCon},
  UDlgGrados in 'UDlgGrados.pas' {FrmGrados},
  UCar in 'UCar.pas' {FrmCarpeta},
  URota in 'URota.pas' {FrmRota},
  UTrazo in 'UTrazo.pas' {FrmTrazo},
  UAgrade in 'UAgrade.pas' {FrmAgrade},
  UMasivo in 'UMasivo.pas' {FrmMasivo},
  UDlgDifu in 'UDlgDifu.pas' {FrmDlgDifu},
  UDlgSatu in 'UDlgSatu.pas' {FrmDlgSatu},
  UVideoConf in 'UVideoConf.pas' {FrmVideoConf},
  USector in 'USector.pas' {FrmSector},
  UProgramada in 'UProgramada.pas' {FrmProgramada},
  UConf in 'UConf.pas' {FrmConf};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Chameleon Capturer';
  Application.CreateForm(TFrmPrinc, FrmPrinc);
  Application.CreateForm(TFrmSel, FrmSel);
  Application.CreateForm(TFrmTamanio, FrmTamanio);
  Application.CreateForm(TFrmAbout, FrmAbout);
  Application.CreateForm(TFrmCapCon, FrmCapCon);
  Application.CreateForm(TFrmGrados, FrmGrados);
  Application.CreateForm(TFrmCarpeta, FrmCarpeta);
  Application.CreateForm(TFrmRota, FrmRota);
  Application.CreateForm(TFrmTrazo, FrmTrazo);
  Application.CreateForm(TFrmAgrade, FrmAgrade);
  Application.CreateForm(TFrmMasivo, FrmMasivo);
  Application.CreateForm(TFrmDlgDifu, FrmDlgDifu);
  Application.CreateForm(TFrmDlgSatu, FrmDlgSatu);
  Application.CreateForm(TFrmVideoConf, FrmVideoConf);
  Application.CreateForm(TFrmSector, FrmSector);
  Application.CreateForm(TFrmProgramada, FrmProgramada);
  Application.CreateForm(TFrmConf, FrmConf);
  Application.Run;
end.
