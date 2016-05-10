unit uFrmRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Buttons, DB, ppDB, ppDBPipe,
  ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache,
  ppCtrls, ppPrnabl, ppStrtch, ppMemo, ppVar, ppModule, daDataModule,
  OleServer, ExcelXP, DBClient, ComObj, RpConBDE, RpCon, RpConDS, RpBase,
  RpFiler, RpDefine, RpRave, ActiveX;

type
  TfrmRelatorio = class(TForm)
    Panel1: TPanel;
    pnlBotoes: TPanel;
    edtDTINIC: TDateEdit;
    Label2: TLabel;
    btImprimir: TBitBtn;
    btFechar: TBitBtn;
    ppReport1: TppReport;
    dsRelatorio: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppBDEPipeline1: TppBDEPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine2: TppLine;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLine3: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel1: TppLabel;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppShape1: TppShape;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine7: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    lbl_DataEmissao: TppLabel;
    lbl_Band1: TppLabel;
    lbl_Band2: TppLabel;
    lbl_bandeira: TppLabel;
    ppTitleBand1: TppTitleBand;
    ppMemo1: TppMemo;
    edtDTFINA: TDateEdit;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel25: TppLabel;
    ppDBText15: TppDBText;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel26: TppLabel;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLabel27: TppLabel;
    ppDBText16: TppDBText;
    Excel1: TExcelApplication;
    RvProject1: TRvProject;
    RvNDRWriter1: TRvNDRWriter;
    rvDataSetPeriodo: TRvDataSetConnection;
    rvqConsulta: TRvQueryConnection;
    rvtBandeiras: TRvTableConnection;
    cdsPeriodo: TClientDataSet;
    cdsPeriodoDATA_INICIAL: TStringField;
    cdsPeriodoDATA_FINAL: TStringField;
    cdsPeriodoDESCONTO: TCurrencyField;
    cdsPeriodoVALOR_LIQUIDO: TCurrencyField;
    btExcel: TBitBtn;
    SaveDialog2: TSaveDialog;
    procedure btFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure edtDTFINAExit(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure ExpExcel(Dataset : TDataSet; ArqNome : OleVariant);
    Function PegaLetraColuna(IntNumber : Integer) : String;
    Procedure PERIODO;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorio: TfrmRelatorio;
  M_VLTOTAL : real;

implementation

uses uDM, uFuncoes, untFrmPreview;

{$R *.dfm}

procedure TfrmRelatorio.btFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmRelatorio.FormShow(Sender: TObject);
begin
     edtDTINIC.Date := Date();
     edtDTFINA.Date := Date();
end;

procedure TfrmRelatorio.btImprimirClick(Sender: TObject);
var
  stream : TMemoryStream;
begin
     If (edtDTFINA.Date < edtDTINIC.Date) Then
     begin
          Application.MessageBox(PChar('Digite a data final maior que a inicial!!!'),
              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          edtDTFINA.SetFocus;
          Exit;
     End;
     //
     If (edtDTINIC.Text <>  '  /  /    ')
       AND  (edtDTFINA.Text <>  '  /  /    ') Then
     Begin
          //
          With dm.qryConsulta do
          begin
               SQL.Clear;
               Close;
               SQL.Add('Select * from SRTNO2');
               SQL.Add('Where (NO2_DTLANC >= :pDTINIC) and (NO2_DTLANC <= :pDTFINA)');
               SQL.Add('order by NO2_DTSAID');
               ParamByname('pDTINIC').AsString := uFuncoes.Data(edtDTINIC.Text,'1');
               ParamByname('pDTFINA').AsString := uFuncoes.Data(edtDTFINA.Text,'1');
               Prepare;
               Open;
               First;
          End;
          //
          M_VLTOTAL := 0;
          While not (dm.qryConsulta.eof) do
            begin
                 M_VLTOTAL := M_VLTOTAL + dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency;
                 //
                 dm.qryConsulta.next;
            End;
          //
          If (dm.tbSRTBA2.Active = False ) Then
              dm.tbSRTBA2.Open;
          //
          PERIODO;
          //
          stream := TMemoryStream.Create;
          RvNDRWriter1.StreamMode := smUser;
          RvNDRWriter1.Stream := Stream;
          { Executa o relatório rvTabela }
          RvProject1.ExecuteReport('rvTabela');
          //RvProject1.SetParam(Param.dtINICIAL, edtDTINIC.Text);
          FrmPreview := TFrmPreview.Create(Self, Stream,
            'Visualizar impressão');
          try
            FrmPreview.ShowModal;
          finally
            FrmPreview.Release;
            FrmPreview := nil;
          end;
     End;
end;

procedure TfrmRelatorio.edtDTFINAExit(Sender: TObject);
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

procedure TfrmRelatorio.edtDTINICExit(Sender: TObject);
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

procedure TfrmRelatorio.ExpExcel(Dataset: TDataSet; ArqNome: OleVariant);
var
  NumLinha, NumColuna, LCID  : Integer;
  StrCell                    : String;
  AdtoMru, CreateBck, ROREcommended : OleVariant;
begin
  LCID := GetUserDefaultLCID;
 Try
  with Excel1 do
  begin
    Connect;
    try
      //Visible[LCID] := True;
      Workbooks.Add(EmptyParam, LCID);
      NumLinha := 1;
      // :=  [fsBold];

    (* Aqui pega o nome dos CAMPOS do Dataset *)
      with Dataset do
      begin
        for NumColuna := 1 to Fields.Count do
        begin
          StrCell := PegaLetraColuna(NumColuna) + IntToStr(NumLinha);

          (* Usa "DisplayLabel" das colunas para preencher as células ou "FieldName" *)
          // Alterado Parametro do Range .. by Gustavo
          if Fields[NumColuna - 1].DisplayLabel <> '' then
            Range[StrCell,StrCell].Value2 := Fields[NumColuna - 1].DisplayLabel
          else
            Range[StrCell,StrCell].Value2 := Fields[NumColuna - 1].FieldName;

        end;
      end;

      NumLinha := 2;

      with Dataset do
      begin
        First;
        while not Eof do
        begin
          for NumColuna := 1 to Fields.Count do
          begin
            StrCell := PegaLetraColuna(NumColuna) + IntToStr(NumLinha);
            // Alterado Parametro do Range .. by Gustavo
            if (Fields.Fields[NumColuna - 1].DataType = ftDate) or

               (Fields.Fields[NumColuna - 1].DataType = ftDateTime) then
               // Tratamento de Datas .. by Gustavo
               if (not Fields.Fields[NumColuna - 1].IsNull) then
                  Range[StrCell, StrCell].Value2 := DateToStr(Fields.Fields[NumColuna - 1].AsDateTime)
               else
                   Range[StrCell, StrCell].Value2 := ''
            else
                Range[StrCell, StrCell].Value2 := Fields.Fields[NumColuna - 1].Value;
          end;
          Next;
          Inc(NumLinha);
        end;
      end;
      Range['A1', StrCell].EntireColumn.Autofit;
      // Atribuido Valor as variaveis
      AdtoMru       := False;
      CreateBck     := False;
      ROREcommended := False;
      // Alterado Parametros ..
      ActiveWorkbook.SaveAs(ArqNome, xlnormal, EmptyParam, EmptyParam, ROREcommended, CreateBck,
      xlNoChange, xlUserResolution, AdtoMru, Emptyparam, emptyparam,emptyparam, lcid);
      Quit;
    finally
      Disconnect;
    end;
  end;
 Except
       on Exc:Exception do
       begin
            Application.MessageBox(PChar('Error ao tentar gerar arquivo.'+#13
                + Exc.Message),
                'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
       End;
 End;
end;

function TfrmRelatorio.PegaLetraColuna(IntNumber: Integer): String;
begin
 if IntNumber < 1 then
    Result:='A'
  else
  begin
    if IntNumber > 256 then
      Result:='IV'
    else
    begin
      if IntNumber > 26 then
      begin
        Result:=Chr(64 + (IntNumber div 26));
        Result:=Result+Chr(64 + (IntNumber mod 26));
      end
      else
        Result:=Chr(64 + IntNumber);
    end;
  end;
end;

procedure TfrmRelatorio.PERIODO;
begin
     If (cdsPeriodo.Active = False) Then
          cdsPeriodo.Open;
     cdsPeriodo.EmptyDataSet;
     //
     With cdsPeriodo do
      begin
           Append;
           FieldByName('DATA_INICIAL').AsString := edtDTINIC.Text;
           FieldByName('DATA_FINAL').AsString   := edtDTFINA.Text;
           FieldByName('DESCONTO').AsFloat      := 15;
           FieldByName('VALOR_LIQUIDO').AsCurrency := M_VLTOTAL - (M_VLTOTAL * 0.15);
           Post;
      End;
end;

procedure TfrmRelatorio.btExcelClick(Sender: TObject);
Var
     Excel : Variant;
     Linha:Integer;
     M_ARQEXC: String;
     M_VLDESC, M_VLLIQU : Real;
begin
     If (edtDTFINA.Date < edtDTINIC.Date) Then
     begin
          Application.MessageBox(PChar('Digite a data final maior que a inicial!!!'),
              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          edtDTFINA.SetFocus;
          Exit;
     End;
     //
     If (edtDTINIC.Text <>  '  /  /    ')
       AND  (edtDTFINA.Text <>  '  /  /    ') Then
     Begin
         if SaveDialog2.Execute then
             M_ARQEXC := SaveDialog2.FileName
         Else
             Exit;
         //
         If uFuncoes.Empty(M_ARQEXC) Then
           Begin
              Application.MessageBox('Nome de arquivo em branco!!!',
                     'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              Exit;
           End;
       //    
       Try
          //
          With dm.qryConsulta do
          begin
               SQL.Clear;
               Close;
               SQL.Add('Select * from SRTNO2');
               SQL.Add('Where (NO2_DTLANC >= :pDTINIC) and (NO2_DTLANC <= :pDTFINA)');
               SQL.Add('order by NO2_DTSAID');
               ParamByname('pDTINIC').AsString := uFuncoes.Data(edtDTINIC.Text,'1');
               ParamByname('pDTFINA').AsString := uFuncoes.Data(edtDTFINA.Text,'1');
               Prepare;
               Open;
               First;
          End;
          //
          M_VLDESC := 0;
          M_VLLIQU := 0;
          //
          Excel := CreateOleObject('Excel.Application');
          {Excel.Workbooks.Add;}
          Excel.WorkBooks.Open(ExtractFilePath( Application.ExeName )+'temp.xls');
          {Excel.WorkBooks[1].Sheets[1].Cells[1,2]:= 'COMPANHIA ENERGÉTICA DO MARANHÃO - CEMAR';
          Excel.WorkBooks[1].Sheets[1].Cells[2,2]:= 'COODERNAÇÃO DE SERVIÇOS ADMINSTRATIVOS - CSA';
          Excel.WorkBooks[1].Sheets[1].Cells[3,2]:= 'CONTROLE MENSAL DE UTILIZAÇÃO DO SERVIÇO DE RÁDIO TÁXI';}
          //
          Excel.WorkBooks[1].Sheets[1].Cells[5,1]:= 'PERÍODO : '+edtDTINIC.Text + ' À '+edtDTFINA.Text;
          Excel.WorkBooks[1].Sheets[1].Cells[5,6]:= 'EMISSÃO : '+DatetoStr(Date());
          //
          If (dm.tbSRTBA2.Active = False ) Then
              dm.tbSRTBA2.Open;
          //
          Excel.WorkBooks[1].Sheets[1].Cells[4,14]:= FormatFloat('###,##0.00',dm.tbSRTBA2.FieldByName('BA2_VLBAND').AsFloat)  + ' Bandeirada';
          Excel.WorkBooks[1].Sheets[1].Cells[5,14]:= FormatFloat('###,##0.00',dm.tbSRTBA2.FieldByName('BA2_BANDE1').AsFloat)  + ' Bandeira 1';
          Excel.WorkBooks[1].Sheets[1].Cells[6,14]:= FormatFloat('###,##0.00',dm.tbSRTBA2.FieldByName('BA2_BANDE2').AsFloat)  + ' Bandeira 2';
          //
          Linha := 7;
          //
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:= 'DADOS DO USUÁRIO';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:= 'DADOS DA UNIDADE';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:= 'LOCAL DE SAÍDA';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,9]:= 'LOCAL DE CHEGADA';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,12]:= 'DADOS DO VEÍCULO';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,15]:= 'DADOS UTILIZAÇÃO';
          //
          Linha := 8;
          //
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:= 'VOUCHER';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:= 'PASSAGEIRO';
          //
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:= 'MATR';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:= 'ÓRGÃO';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:= 'UA';
          //
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:= 'LOCAL';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:= 'DATA';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,8]:= 'HORA';
          //
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,9]:= 'LOCAL';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,10]:= 'DATA';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,11]:= 'HORA';
          //
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,12]:= 'KM INICIAL';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,13]:= 'KM FINAL';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,14]:= 'PRÉFIXO';
          //
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,15]:= 'KM ROD.';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,16]:= 'VL.BRU.';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,17]:= 'DESC.';
          Excel.WorkBooks[1].Sheets[1].Cells[Linha,18]:= 'VL.LIQUI.';
          //
          M_VLTOTAL := 0;
          Linha     := 9;
          While not (dm.qryConsulta.eof) do
            begin
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,1]:= dm.qryConsulta.FieldByName('NO2_NRNOTA').AsString;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:= dm.qryConsulta.FieldByName('NO2_NMPASS').AsString;
                 //
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:= dm.qryConsulta.FieldByName('NO2_NRMATR').AsString;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:= dm.qryConsulta.FieldByName('NO2_NMORGA').AsString;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:= dm.qryConsulta.FieldByName('NO2_UA').AsString;
                 //
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:= dm.qryConsulta.FieldByName('NO2_NMSAID').AsString;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,7]:= dm.qryConsulta.FieldByName('NO2_DTSAIDA').AsString;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,8]:= dm.qryConsulta.FieldByName('NO2_HORASAIDA').AsString;
                 //
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,9] := dm.qryConsulta.FieldByName('NO2_NMCHEG').AsString;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,10]:= dm.qryConsulta.FieldByName('NO2_DTCHEGADA').AsString;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,11]:= dm.qryConsulta.FieldByName('NO2_HOCHEGADA').AsString;
                 //
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,12]:= dm.qryConsulta.FieldByName('NO2_KMINIC').AsString;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,13]:= dm.qryConsulta.FieldByName('NO2_KMFINA').AsString;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,14]:= dm.qryConsulta.FieldByName('NO2_NRUNID').AsString;
                 //
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,15]:= dm.qryConsulta.FieldByName('NO2_TORODA').AsString;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,16]:= dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,17]:= dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency*0.15;
                 Excel.WorkBooks[1].Sheets[1].Cells[Linha,18]:= dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency-(dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency*0.15);
                 //
                 M_VLTOTAL := M_VLTOTAL + dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency;
                 M_VLDESC  := M_VLDESC  + dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency*0.15;
                 M_VLLIQU  := M_VLLIQU  + dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency-(dm.qryConsulta.FieldByName('NO2_VLNOTA').AsCurrency*0.15);
                 Linha     := Linha + 1;
                 //
                 dm.qryConsulta.Next;
            End;
            //
            Linha     := Linha + 1;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,14]:= 'TOTAL BRUTO :';
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,18]:= M_VLTOTAL;
            Linha     := Linha + 1;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,14]:= 'DESCONTO : 15%';
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,18]:= M_VLDESC;
            Linha     := Linha + 1;
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,14]:= 'TOTAL LIQUIDO :';
            Excel.WorkBooks[1].Sheets[1].Cells[Linha,18]:= M_VLLIQU;
            //
          //
          Excel.WorkBooks[1].SaveAs(M_ARQEXC);
          Excel.WorkBooks[1].Close;
          //
          Application.MessageBox('Arquivo gerado com sucesso!!!',
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
       Except
           on Exc:Exception do
           begin
                Application.MessageBox(PChar('Error ao tentar gerar arquivo.'+#13
                    + Exc.Message),
                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           End;
       End;
    End;
end;

procedure TfrmRelatorio.FormCreate(Sender: TObject);
begin
     CoInitialize(nil);
     //
     RvProject1.ProjectFile :=
        ExtractFilePath( Application.ExeName )+'\Relatorio\rvTabela.rav';
end;

procedure TfrmRelatorio.FormDestroy(Sender: TObject);
begin
      CoUnInitialize;
end;

end.



