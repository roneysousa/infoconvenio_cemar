program InfoConvenio;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFuncoes in 'uFuncoes.pas',
  uSobre in 'uSobre.pas' {frmSobre},
  uSplash in 'uSplash.pas' {frmSplash},
  uDM in 'uDM.pas' {DM: TDataModule},
  uCadLancamentos in 'uCadLancamentos.pas' {frmLancamentos},
  uFrmConsulta in 'uFrmConsulta.pas' {frmConsulta},
  uFrmRelatorio in 'uFrmRelatorio.pas' {frmRelatorio},
  untFrmPrint in 'untFrmPrint.pas' {FrmPrint},
  untFrmPreview in 'untFrmPreview.pas' {FrmPreview};

{$R *.res}

begin
  //Application.Initialize;
  frmSplash := TfrmSplash.create(application);
  frmSplash.show;
  frmSplash.update;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  frmSplash.Hide;
  frmSplash.Free;
  Application.Run;
end.
