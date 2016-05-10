unit uFrmConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, Grids, DBGrids, DB,
  DBTables;

type
  TfrmConsulta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    pnlBotoes: TPanel;
    btEditar: TBitBtn;
    btExcluir: TBitBtn;
    edtDTINIC: TDateEdit;
    edtDTFINA: TDateEdit;
    edtDTSAID: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtNRNOTA: TEdit;
    Label3: TLabel;
    edtNRUNID: TEdit;
    Label4: TLabel;
    grConsulta: TDBGrid;
    dsConsulta: TDataSource;
    btConsulta: TBitBtn;
    btFechar: TBitBtn;
    qryExcluir: TQuery;
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure edtDTSAIDExit(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNRNOTAEnter(Sender: TObject);
    procedure edtNRUNIDEnter(Sender: TObject);
    procedure edtDTSAIDEnter(Sender: TObject);
    procedure edtDTINICEnter(Sender: TObject);
    procedure edtDTFINAEnter(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
     procedure CONSULTA;
     procedure FECHAR;
     Procedure EXCLUIR(M_NRNOTA : String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;
  M_NRREGI : String;

implementation

uses uDM, uFuncoes, uCadLancamentos;

{$R *.dfm}

{ TfrmConsulta }

procedure TfrmConsulta.CONSULTA;
begin
     dm.qryConsulta.DisableControls;
     With dm.qryConsulta do
     Begin
           SQL.Clear;
           Close;
           SQL.Add('Select * from "SRTNO2.DBF" ');
           If (edtDTINIC.Text <>  '  /  /    ') and (edtDTFINA.Text <>  '  /  /    ') Then
           Begin
                SQL.Add('Where (NO2_DTLANC >='+QuotedStr(uFuncoes.Data(edtDTINIC.Text,'1'))+')');
                SQL.Add('And   (NO2_DTLANC <='+QuotedStr(uFuncoes.Data(edtDTFINA.Text,'1'))+')');
           End;
           //
           If (edtDTINIC.Text <>  '  /  /    ') and (edtDTFINA.Text =  '  /  /    ') Then
                SQL.Add('Where (NO2_DTLANC >='+QuotedStr(uFuncoes.Data(edtDTINIC.Text,'1'))+')');
           //
           If (edtDTINIC.Text =  '  /  /    ') and (edtDTFINA.Text <>  '  /  /    ') Then
                SQL.Add('Where (NO2_DTLANC <='+QuotedStr(uFuncoes.Data(edtDTFINA.Text,'1'))+')');
           //
           If (edtDTINIC.Text =  '  /  /    ') and (edtDTFINA.Text =  '  /  /    ')
             And not uFuncoes.Empty(edtNRNOTA.Text) Then
                SQL.Add('Where (NO2_NRNOTA ='+QuotedStr(edtNRNOTA.Text)+')');
           //
           If (edtDTINIC.Text =  '  /  /    ') and (edtDTFINA.Text =  '  /  /    ')
             And uFuncoes.Empty(edtNRNOTA.Text) and not uFuncoes.Empty(edtNRUNID.Text) Then
                SQL.Add('Where (NO2_NRUNID ='+QuotedStr(edtNRUNID.Text)+')');
           //
           If (edtDTINIC.Text =  '  /  /    ') and (edtDTFINA.Text =  '  /  /    ')
             And uFuncoes.Empty(edtNRNOTA.Text) and uFuncoes.Empty(edtNRUNID.Text)
             and (edtDTSAID.Text <>  '  /  /    ') Then
                SQL.Add('Where (NO2_DTSAID ='+QuotedStr(uFuncoes.Data(edtDTSAID.Text,'1'))+')');
           Prepare;
           Open;
     End;
     dm.qryConsulta.EnableControls; 
     //
     If (dm.qryConsulta.RecordCount = 0) Then
     begin
         Application.MessageBox(PChar('Registros não encontrados no criterio de busca!!!'),
              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         FECHAR;
     End
     Else
     begin
          btEditar.Enabled  := True;
          btExcluir.Enabled := True;
     end;
end;

procedure TfrmConsulta.edtDTINICExit(Sender: TObject);
begin
     If (edtDTINIC.Text <>  '  /  /    ') Then
        try
          StrToDate(edtDTINIC.Text);
        except
          on EConvertError do
          Begin
                ShowMessage ('Data Inválida!');
                edtDTINIC.SetFocus;
                Exit;
          End;
        end;
end;

procedure TfrmConsulta.edtDTFINAExit(Sender: TObject);
begin
     If (edtDTFINA.Text <>  '  /  /    ') Then
        try
          StrToDate(edtDTFINA.Text);
          If (edtDTFINA.Date < edtDTINIC.Date) Then
          begin
               edtDTFINA.SetFocus;
               Exit;
          End;
        except
          on EConvertError do
          Begin
                ShowMessage ('Data Inválida!');
                edtDTFINA.SetFocus;
                Exit;
          End;
        end;
end;

procedure TfrmConsulta.edtDTSAIDExit(Sender: TObject);
begin
     If (edtDTSAID.Text <>  '  /  /    ') Then
        try
          StrToDate(edtDTSAID.Text);
        except
          on EConvertError do
          Begin
                ShowMessage ('Data Inválida!');
                edtDTSAID.SetFocus;
                Exit;
          End;
        end;
end;

procedure TfrmConsulta.btConsultaClick(Sender: TObject);
begin
     CONSULTA;
end;

procedure TfrmConsulta.FormShow(Sender: TObject);
begin
     FECHAR;
     //
     edtDTINIC.SetFocus;  
end;

procedure TfrmConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dm.qryConsulta.Close;
     //
     Action := caFree;
end;

procedure TfrmConsulta.edtNRNOTAEnter(Sender: TObject);
begin
     edtDTINIC.Clear;
     edtDTFINA.Clear;
     edtNRUNID.Clear;
     edtDTSAID.Clear;
     //
     FECHAR;
end;

procedure TfrmConsulta.edtNRUNIDEnter(Sender: TObject);
begin
     edtDTINIC.Clear;
     edtDTFINA.Clear;
     edtNRNOTA.Clear;
     edtDTSAID.Clear;
     //
     FECHAR;
end;

procedure TfrmConsulta.edtDTSAIDEnter(Sender: TObject);
begin
     edtDTINIC.Clear;
     edtDTFINA.Clear;
     edtNRNOTA.Clear;
     edtNRUNID.Clear;
     //
     FECHAR;
end;

procedure TfrmConsulta.edtDTINICEnter(Sender: TObject);
begin
     edtDTSAID.Clear;
     edtDTFINA.Clear;
     edtNRNOTA.Clear;
     edtNRUNID.Clear;
     //
     FECHAR;
end;

procedure TfrmConsulta.edtDTFINAEnter(Sender: TObject);
begin
     edtDTSAID.Clear;
     edtNRNOTA.Clear;
     edtNRUNID.Clear;
     //
     FECHAR;
end;

procedure TfrmConsulta.FECHAR;
begin
    dm.qryConsulta.Close;
    btEditar.Enabled  := False;
    btExcluir.Enabled := False;
end;

procedure TfrmConsulta.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmConsulta.btEditarClick(Sender: TObject);
begin
  If (dm.qryConsulta.Active = True) and
     (dm.qryConsulta.RecordCount > 0) Then
  begin
    M_NRREGI := dm.qryConsultaNO2_NRNOTA.AsString;
    with TfrmLancamentos.create(self) do
      try
        uCadLancamentos.M_NRFORM := 2;
        dm.tbNotas.Filtered  := False;
        dm.tbNotas.Filter    := 'NO2_NRNOTA = '+QuotedStr(dm.qryConsultaNO2_NRNOTA.AsString)
                                +' and NO2_DTSAID = '+ QuotedStr(dm.qryConsultaNO2_DTSAID.AsString);
        dm.tbNotas.Filtered  := True;
        dm.tbNotas.Open;
        dm.tbNotas.Edit;
        Caption := 'Lançamentos : Alteração';
        showmodal;
      finally
        free;
        dm.tbNotas.Filtered  := False;
        dm.tbNotas.Close;
        CONSULTA;
        dm.qryConsulta.Locate('NO2_NRNOTA',M_NRREGI,[]);
      end;
   End;
end;

procedure TfrmConsulta.btExcluirClick(Sender: TObject);
begin
     If Application.MessageBox('Deseja eliminar este registro?', 'Exclusão de registro',
           MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
     Begin
          EXCLUIR(dm.qryConsultaNO2_NRNOTA.AsString);
          CONSULTA;
     End;
end;

procedure TfrmConsulta.EXCLUIR(M_NRNOTA: String);
begin
     With qryExcluir do
     Begin
          Close;
          ParamByName('pNRNOTA').AsString := M_NRNOTA;
          ExecSQL;
     End;
end;

end.
