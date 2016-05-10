unit uCadLancamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Mask, DBCtrls, Buttons, ToolEdit;

type
  TfrmLancamentos = class(TForm)
    pnlDados: TPanel;
    pnlBotoes: TPanel;
    dsNotas: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    dbeNMPASS: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    dbeNRNOTA: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    dbeHOSAID: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    dbeHOCHEG: TDBEdit;
    Label15: TLabel;
    dbeKMINIC: TDBEdit;
    Label16: TLabel;
    dbeKMFINA: TDBEdit;
    Label17: TLabel;
    dbeUNIDADE: TDBEdit;
    Label18: TLabel;
    dbeBANDEIRA: TDBEdit;
    Label19: TLabel;
    dbeValor: TDBEdit;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    edtDTFATU: TDateEdit;
    dbeDTSAID: TDateEdit;
    edtDTCHEG: TDateEdit;
    txtTotalKM: TDBText;
    lbl_KMrodado: TLabel;
    procedure btFecharClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dbeOrgaoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeBANDEIRAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeUNIDADEKeyPress(Sender: TObject; var Key: Char);
    procedure dbeNRNOTAKeyPress(Sender: TObject; var Key: Char);
    procedure dbeKMFINAExit(Sender: TObject);
    procedure dbeKMFINAChange(Sender: TObject);
    procedure edtDTFATUExit(Sender: TObject);
    procedure dbeDTSAIDExit(Sender: TObject);
    procedure edtDTCHEGExit(Sender: TObject);
    procedure dbeHOSAIDExit(Sender: TObject);
    procedure dbeBANDEIRAExit(Sender: TObject);
    procedure dbeHOCHEGExit(Sender: TObject);
    procedure dbeNRNOTAExit(Sender: TObject);
  private
    procedure NOVO;
    Function VALIDAR_NOTA(W_NRNOTA : String) : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancamentos: TfrmLancamentos;
  M_NRFORM : Integer;

implementation

uses uDM, uFuncoes;

{$R *.dfm}

procedure TfrmLancamentos.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmLancamentos.btCancelarClick(Sender: TObject);
begin
     dm.tbNotas.Cancel; 
     dm.tbNotas.Close;
     // 
     Close;
end;

procedure TfrmLancamentos.FormShow(Sender: TObject);
begin
    If (M_NRFORM = 1) Then
    begin
         If (dm.tbNotas.Active = False) Then
            dm.tbNotas.Open;
         //
         NOVO;
    End
    Else
    Begin
         edtDTFATU.Text := uFuncoes.Data(dm.tbNotas.FieldByName('NO2_DTLANC').AsString,'2');
         dbeDTSAID.Text := uFuncoes.Data(dm.tbNotas.FieldByName('NO2_DTSAID').AsString,'2');
         edtDTCHEG.Text := uFuncoes.Data(dm.tbNotas.FieldByName('NO2_DTCHEG').AsString,'2');
         //
         dbeNMPASS.SetFocus; 
    End;
end;

procedure TfrmLancamentos.btGravarClick(Sender: TObject);
begin
      //
      If (edtDTFATU.Text = '  /  /    ') Then
      begin
          Application.MessageBox(PChar('Digite a data da fatura!!!'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtDTFATU.SetFocus;
           Exit;
      End;
      //
      If (dbeDTSAID.Text = '  /  /    ') Then
      begin
          Application.MessageBox(PChar('Digite a data de saída!!!'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeDTSAID.SetFocus;
           Exit;
      End;
      //
      If (edtDTCHEG.Text = '  /  /    ') Then
      begin
          Application.MessageBox(PChar('Digite a data de chegada!!!'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtDTCHEG.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(dbeNRNOTA.text) Then
      begin
           Application.MessageBox(PChar('Digite o número da nota!!!'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeNRNOTA.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(dbeUNIDADE.text) Then
      begin
           Application.MessageBox(PChar('Digite a unidade!!!'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeUNIDADE.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(dbeBANDEIRA.text) Then
      begin
           Application.MessageBox(PChar('Digite a bandeira!!!'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeBANDEIRA.SetFocus;
           Exit;
      End;
      //
      If uFuncoes.Empty(dbeValor.text) Then
      begin
           Application.MessageBox(PChar('Digite o valor!!!'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeValor.SetFocus;
           Exit;
      End;
      //
      If (dsNotas.State in [dsInsert]) and
       not uFuncoes.Empty (dbeNRNOTA.Text) Then
         begin
             If not (VALIDAR_NOTA(dbeNRNOTA.Text)) Then
              begin
                   Application.MessageBox(PChar('Nº. de nota já cadastrado!!!'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeNRNOTA.SetFocus;
                   Exit;
              End;
         End;
      //
   If (dsNotas.State in [dsInsert, dsEdit]) Then
   begin
      try
           // Datas
           dm.tbNotas.FieldByName('NO2_DTLANC').AsString := uFuncoes.Data(edtDTFATU.Text, '1');
           dm.tbNotas.FieldByName('NO2_DTSAID').AsString := uFuncoes.Data(dbeDTSAID.Text, '1');
           dm.tbNotas.FieldByName('NO2_DTCHEG').AsString := uFuncoes.Data(edtDTCHEG.Text, '1');
           //
           dm.tbNotas.Post;
           //
           Application.MessageBox(PChar('Registro gravado com sucesso!!!'),
                      'CONCLUÍDO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           //
           If (M_NRFORM = 1)  Then
           Begin
               If Application.MessageBox('Incluir nova nota?',
                  'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                       NOVO
               Else
                   close;
           End
           Else
              Close;     
      Except
          on Exc:Exception do
          begin
             Application.MessageBox(PChar('Error ao tentar gravar registro.'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             dm.tbNotas.Cancel;
             Close;
          End;
      End;
   End;   
end;

procedure TfrmLancamentos.NOVO;
begin
     dm.tbNotas.Append;
     //
     edtDTFATU.Date := Date();
     dbeDTSAID.Date := Date();
     edtDTCHEG.Date := Date();
     //
     dm.tbNotas.FieldByName('NO2_NRCONV').AsString := '001'+Copy(DatetoStr(Date),7,4);
     dm.tbNotas.FieldByName('NO2_FLBAND').AsString := '1';
     //
     dbeNMPASS.SetFocus;
end;

procedure TfrmLancamentos.dbeOrgaoKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmLancamentos.dbeBANDEIRAKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['1'..'2',#8, #13] ) then
        key:=#0;
end;

procedure TfrmLancamentos.dbeUNIDADEKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmLancamentos.dbeNRNOTAKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
end;

procedure TfrmLancamentos.dbeKMFINAExit(Sender: TObject);
begin
     If (dsNotas.State in [dsInsert, dsEdit]) Then
     Begin
          If not uFuncoes.Empty(dbeKMINIC.Text)
            and not uFuncoes.Empty(dbeKMFINA.Text) Then
          begin
               If (dm.tbNotasNO2_KMFINA.AsFloat <=
                  dm.tbNotasNO2_KMINIC.AsFloat) Then
               Begin
                    dbeKMFINA.SetFocus;
                    Exit;
               End
               Else
               begin
                   If (dbeDTSAID.Text <> '  /  /    ')
                    and (dbeHOSAID.Text <> '  :  ') Then
                       dm.tbNotas.FieldByName('NO2_FLBAND').AsString :=
                         uFuncoes.Bandeira(dbeDTSAID.Date, dbeHOSAID.Text);
                   //
                   dm.tbNotas.FieldByName('NO2_VLNOTA').AsCurrency :=
                      uFuncoes.ValorChamada();
               End;
          End;
     end;
end;

procedure TfrmLancamentos.dbeKMFINAChange(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeKMFINA.Text) Then
     begin
          lbl_KMrodado.Visible := True;
          txtTotalKM.Visible   := True;
     End
     Else
     Begin
          lbl_KMrodado.Visible := False;
          txtTotalKM.Visible   := False;
     End;
end;

procedure TfrmLancamentos.edtDTFATUExit(Sender: TObject);
begin
     If (edtDTFATU.Text <>  '  /  /    ') Then
        try
          StrToDate(edtDTFATU.Text);
        except
          on EConvertError do
          Begin
                ShowMessage ('Data Inválida!');
                edtDTFATU.SetFocus;
                Exit;
          End;
        end;
end;

procedure TfrmLancamentos.dbeDTSAIDExit(Sender: TObject);
begin
     If (dbeDTSAID.Text <> '  /  /    ') Then
        try
           StrToDate(dbeDTSAID.Text);
           edtDTCHEG.Text := dbeDTSAID.Text;
           //
           If (dbeHOSAID.Text <> '  :  ') Then
               dm.tbNotas.FieldByName('NO2_FLBAND').AsString :=
                  uFuncoes.Bandeira(dbeDTSAID.Date, dbeHOSAID.Text);
           // Valor da nota
           dm.tbNotas.FieldByName('NO2_VLNOTA').AsCurrency :=
              uFuncoes.ValorChamada();
        except
          on EConvertError do
          Begin
                ShowMessage ('Data Inválida!');
                dbeDTSAID.SetFocus;
                Exit;
          End;
        end;
end;

procedure TfrmLancamentos.edtDTCHEGExit(Sender: TObject);
begin
     If (edtDTCHEG.Text <> '  /  /    ') Then
        try
          StrToDate(edtDTCHEG.Text);
        except
          on EConvertError do
          Begin
                ShowMessage ('Data Inválida!');
                edtDTCHEG.SetFocus;
                Exit;
          End;
        end;
end;

procedure TfrmLancamentos.dbeHOSAIDExit(Sender: TObject);
begin
   If (dsNotas.State in [dsInsert, dsEdit]) Then
   Begin
     If (dbeHOSAID.Text <> '  :  ') Then
     begin
        try
           StrToTime(Copy(dbeHOSAID.Text,1,2)+':'+Copy(dbeHOSAID.Text,3,2));
           //
           If (dbeDTSAID.Text <> '  /  /    ') Then
               dm.tbNotas.FieldByName('NO2_FLBAND').AsString :=
                  uFuncoes.Bandeira(dbeDTSAID.Date, dbeHOSAID.Text);
           // Valor da nota
           dm.tbNotas.FieldByName('NO2_VLNOTA').AsCurrency :=
              uFuncoes.ValorChamada();
        except
          on EConvertError do
          Begin
                ShowMessage ('Hora Inválida!');
                dbeHOSAID.SetFocus;
                Exit;
          End;
        end;
     End;   
   End;
end;

procedure TfrmLancamentos.dbeBANDEIRAExit(Sender: TObject);
begin
    If not uFuncoes.Empty(dbeBANDEIRA.Text) Then
      dm.tbNotas.FieldByName('NO2_VLNOTA').AsCurrency :=
              uFuncoes.ValorChamada();
end;

procedure TfrmLancamentos.dbeHOCHEGExit(Sender: TObject);
begin
   If (dsNotas.State in [dsInsert, dsEdit]) Then
   Begin
     If (dbeHOCHEG.Text <> '  :  ') Then
     Begin
        try
           StrToTime(Copy(dbeHOCHEG.Text,1,2)+':'+Copy(dbeHOCHEG.Text,3,2));
           //
        except
          on EConvertError do
          Begin
                ShowMessage ('Hora Inválida!');
                dbeHOCHEG.SetFocus;
                Exit;
          End;
        end;
     End;   
   End;
end;

procedure TfrmLancamentos.dbeNRNOTAExit(Sender: TObject);
begin
     If (dsNotas.State in [dsInsert]) and
       not uFuncoes.Empty (dbeNRNOTA.Text) Then
        begin
             If not (VALIDAR_NOTA(dbeNRNOTA.Text)) Then
              begin
                   Application.MessageBox(PChar('Nº. de nota já cadastrado!!!'),
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   dbeNRNOTA.SetFocus;
                   Exit; 
              End;
        End;
end;

function TfrmLancamentos.VALIDAR_NOTA(W_NRNOTA: String): Boolean;
begin
     With dm.qryNota do
         begin
              Close;
              ParamByName('pNRNOTA').AsString := W_NRNOTA;
              Prepare;
              Open;
         end;
     //
     If (dm.qryNota.RecordCount > 0) Then
        result := False
     Else
        result := True;
end;

end.
