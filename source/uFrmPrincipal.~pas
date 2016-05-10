unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ImgList, ExtCtrls, AppEvnts;

type
  TfrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Cobrana1: TMenuItem;
    mnuLancamentoItem: TMenuItem;
    N1: TMenuItem;
    mnuSairItem: TMenuItem;
    ToolBar1: TToolBar;
    Ajuda1: TMenuItem;
    mnuSobreItem: TMenuItem;
    tbtImportar: TToolButton;
    ToolButton2: TToolButton;
    btSair: TToolButton;
    ImageList1: TImageList;
    ToolButton3: TToolButton;
    mnuConsultaItem: TMenuItem;
    btConsulta: TToolButton;
    mnuRelatorioItem: TMenuItem;
    btRelatorio: TToolButton;
    Image1: TImage;
    procedure mnuLancamentoItemClick(Sender: TObject);
    procedure mnuSobreItemClick(Sender: TObject);
    procedure mnuSairItemClick(Sender: TObject);
    procedure mnuConsultaItemClick(Sender: TObject);
    procedure mnuRelatorioItemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

Uses uSobre, uSplash, uCadLancamentos, uFrmConsulta, uFrmRelatorio;

{$R *.dfm}

procedure TfrmPrincipal.mnuLancamentoItemClick(Sender: TObject);
begin
    with TfrmLancamentos.create(self) do
      try
        uCadLancamentos.M_NRFORM := 1;
        showmodal;
      finally
        free;
      end;
end;

procedure TfrmPrincipal.mnuSobreItemClick(Sender: TObject);
begin
    with TfrmSobre.create(self) do
      try
        showmodal;
      finally
        free;
      end;
end;

procedure TfrmPrincipal.mnuSairItemClick(Sender: TObject);
begin
  If Application.MessageBox('Sair do Sistema?',
     'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
          application.Terminate;
end;

procedure TfrmPrincipal.mnuConsultaItemClick(Sender: TObject);
begin
    with TfrmConsulta.create(self) do
      try
        showmodal;
      finally
        free;
      end;
end;

procedure TfrmPrincipal.mnuRelatorioItemClick(Sender: TObject);
begin
    with TfrmRelatorio.create(self) do
      try
        showmodal;
      finally
        free;
      end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
     Image1.Left := (FrmPrincipal.Width Div 2) - (Image1.Width Div 2);
     Image1.Top := (FrmPrincipal.Height Div 2) - (Image1.Height Div 2 + StatusBar1.Height);
end;

procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
     Image1.Left := (FrmPrincipal.Width Div 2) - (Image1.Width Div 2);
     Image1.Top := (FrmPrincipal.Height Div 2) - (Image1.Height Div 2 + StatusBar1.Height);
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     CanClose := False;
     If Application.MessageBox('Sair do Programa?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
     begin
          CanClose := True;
          Application.Terminate;
     End;
end;

procedure TfrmPrincipal.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
var
  NomeDoLog: string;
  Arquivo: TextFile;
begin
  NomeDoLog := ChangeFileExt(Application.Exename, '.log');
  AssignFile(Arquivo, NomeDoLog);
  if FileExists(NomeDoLog) then
    Append(arquivo) { se existir, apenas adiciona linhas }
  else
    ReWrite(arquivo); { cria um novo se não existir }
  try
    WriteLn(arquivo, DateTimeToStr(Now) + ':' + E.Message);
    WriteLn(arquivo, '----------------------------------------------------------------------');
    Application.ShowException(E);
  finally
    CloseFile(arquivo)
  end;
end;

end.
