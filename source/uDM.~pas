
unit uDM;

interface

uses
  SysUtils, Classes, DB, DBTables, DBIProcs, Forms, DBClient, Windows, Messages,
  AppEvnts;

type
  TDM = class(TDataModule)
    tbSRTBA2: TTable;
    tbNotas: TTable;
    tbNotasNO2_NRCONV: TStringField;
    tbNotasNO2_DTLANC: TStringField;
    tbNotasNO2_NRMATR: TStringField;
    tbNotasNO2_NMPASS: TStringField;
    tbNotasNO2_CDORGA: TStringField;
    tbNotasNO2_NMORGA: TStringField;
    tbNotasNO2_UA: TStringField;
    tbNotasNO2_NMSAID: TStringField;
    tbNotasNO2_DTSAID: TStringField;
    tbNotasNO2_HOSAID: TStringField;
    tbNotasNO2_NMCHEG: TStringField;
    tbNotasNO2_DTCHEG: TStringField;
    tbNotasNO2_HOCHEG: TStringField;
    tbNotasNO2_KMINIC: TFloatField;
    tbNotasNO2_KMFINA: TFloatField;
    tbNotasNO2_NRUNID: TStringField;
    tbNotasNO2_VLNOTA: TFloatField;
    tbNotasNO2_FLBAND: TSmallintField;
    tbNotasNO2_VLDESC: TFloatField;
    tbNotasNO2_NRNOTA: TStringField;
    tbNotasNO2_TOTKM: TFloatField;
    tbFeriados: TTable;
    tbFeriadosFER_DTFERI: TStringField;
    tbFeriadosFER_NMFERI: TStringField;
    tbSRTBA2BA2_SEGSEX: TStringField;
    tbSRTBA2BA2_SABADO: TStringField;
    tbSRTBA2BA2_DOMFER: TStringField;
    tbSRTBA2BA2_VLBAND: TFloatField;
    tbSRTBA2BA2_BANDE1: TFloatField;
    tbSRTBA2BA2_BANDE2: TFloatField;
    tbSRTBA2BA2_VLINIC: TFloatField;
    qryConsulta: TQuery;
    qryConsultaNO2_NRCONV: TStringField;
    qryConsultaNO2_DTLANC: TStringField;
    qryConsultaNO2_NRMATR: TStringField;
    qryConsultaNO2_NMPASS: TStringField;
    qryConsultaNO2_CDORGA: TStringField;
    qryConsultaNO2_NMORGA: TStringField;
    qryConsultaNO2_UA: TStringField;
    qryConsultaNO2_NMSAID: TStringField;
    qryConsultaNO2_DTSAID: TStringField;
    qryConsultaNO2_HOSAID: TStringField;
    qryConsultaNO2_NMCHEG: TStringField;
    qryConsultaNO2_DTCHEG: TStringField;
    qryConsultaNO2_HOCHEG: TStringField;
    qryConsultaNO2_KMINIC: TFloatField;
    qryConsultaNO2_KMFINA: TFloatField;
    qryConsultaNO2_NRUNID: TStringField;
    qryConsultaNO2_VLNOTA: TFloatField;
    qryConsultaNO2_FLBAND: TSmallintField;
    qryConsultaNO2_NRNOTA: TStringField;
    qryConsultaNO2_DTLANCAMENTO: TStringField;
    qryConsultaNO2_DTSAIDA: TStringField;
    qryConsultaNO2_DTCHEGADA: TStringField;
    qryConsultaNO2_TORODA: TFloatField;
    qryConsultaNO2_HORASAIDA: TStringField;
    qryConsultaNO2_HOCHEGADA: TStringField;
    cdsDados: TClientDataSet;
    cdsDadosVOUCHER: TStringField;
    cdsDadosPASSAGEIRO: TStringField;
    cdsDadosMATR: TStringField;
    cdsDadosORGAO: TStringField;
    cdsDadosUA: TStringField;
    cdsDadosLOCAL_SAIDA: TStringField;
    cdsDadosDATA_SAIDA: TStringField;
    cdsDadosHORA_SAIDA: TStringField;
    cdsDadosLOCAL_CHEG: TStringField;
    cdsDadosDATA_CHEG: TStringField;
    cdsDadosHORA_CHEG: TStringField;
    cdsDadosKM_INICIAL: TFloatField;
    cdsDadosKM_FINAL: TFloatField;
    cdsDadosPREFIXO: TStringField;
    cdsDadosKM_RODADOS: TFloatField;
    cdsDadosVALOR: TCurrencyField;
    qryNota: TQuery;
    ApplicationEvents1: TApplicationEvents;
    qryConsultaDESCONTO: TCurrencyField;
    qryConsultaLIQUIDO: TCurrencyField;
    procedure tbSRTBA2AfterPost(DataSet: TDataSet);
    procedure tbNotasAfterPost(DataSet: TDataSet);
    procedure tbNotasCalcFields(DataSet: TDataSet);
    procedure qryConsultaCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TDM.tbSRTBA2AfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbSRTBA2.Handle);     //Evitando Perdas de Dados.
     tbSRTBA2.FlushBuffers;
     tbSRTBA2.Refresh;
end;

procedure TDM.tbNotasAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbNotas.Handle);     //Evitando Perdas de Dados.
     tbNotas.FlushBuffers;
     tbNotas.Refresh;
end;

procedure TDM.tbNotasCalcFields(DataSet: TDataSet);
begin
     tbNotas.FieldByName('NO2_TOTKM').AsFloat :=
       tbNotas.FieldByName('NO2_KMFINA').AsFloat -
       tbNotas.FieldByName('NO2_KMINIC').AsFloat;
end;

procedure TDM.qryConsultaCalcFields(DataSet: TDataSet);
begin
    If not uFuncoes.Empty(qryConsultaNO2_DTLANC.AsString) Then
      qryConsultaNO2_DTLANCAMENTO.AsString :=
          Copy(qryConsultaNO2_DTLANC.AsString,7,2)+'/'+
          Copy(qryConsultaNO2_DTLANC.AsString,5,2)+'/'+
          Copy(qryConsultaNO2_DTLANC.AsString,1,4);
    //
    If not uFuncoes.Empty(qryConsultaNO2_DTSAID.AsString) Then
      qryConsultaNO2_DTSAIDA.AsString  :=
          Copy(qryConsultaNO2_DTSAID.AsString,7,2)+'/'+
          Copy(qryConsultaNO2_DTSAID.AsString,5,2)+'/'+
          Copy(qryConsultaNO2_DTSAID.AsString,1,4);
    //
    If not uFuncoes.Empty(qryConsultaNO2_DTCHEG.AsString) Then
      qryConsultaNO2_DTCHEGADA.AsString  :=
          Copy(qryConsultaNO2_DTCHEG.AsString,7,2)+'/'+
          Copy(qryConsultaNO2_DTCHEG.AsString,5,2)+'/'+
          Copy(qryConsultaNO2_DTCHEG.AsString,1,4);
    //
    If not uFuncoes.Empty(qryConsultaNO2_HOSAID.AsString) Then
          qryConsultaNO2_HORASAIDA.AsString :=
              Copy(qryConsultaNO2_HOSAID.AsString,1,2)+':'+
              Copy(qryConsultaNO2_HOSAID.AsString,3,2);
    //
    If not uFuncoes.Empty(qryConsultaNO2_HOCHEG.AsString) Then
       qryConsultaNO2_HOCHEGADA.AsString :=
              Copy(qryConsultaNO2_HOCHEG.AsString,1,2)+':'+
              Copy(qryConsultaNO2_HOCHEG.AsString,3,2);  
      //
     qryConsulta.FieldByName('NO2_TORODA').AsFloat :=
       qryConsulta.FieldByName('NO2_KMFINA').AsFloat -
       qryConsulta.FieldByName('NO2_KMINIC').AsFloat;
     //
     qryConsulta.FieldByName('DESCONTO').AsCurrency :=
         dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency*0.15;
     qryConsulta.FieldByName('LIQUIDO').AsCurrency  :=
        dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency-
        (dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency*0.15);
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
    Try
      // se o alias não existir...
      if not Session.IsAlias('InfoConvenio') then
      begin
            // Adiciona o alias
            Session.AddStandardAlias('InfoConvenio', ExtractFilePath( Application.ExeName ), 'DBASE');
            //Salva o arquivo de configuração do BDE
            Session.SaveConfigFile;
      end;
    Except
        on Exc:Exception do
        begin
           Application.MessageBox(PChar('Error ao tentar conectar banco de dados!!!'+#13
                      + Exc.Message),
                      'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
           Application.Terminate;
        End;
    End;  
end;

procedure TDM.ApplicationEvents1Exception(Sender: TObject; E: Exception);
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
