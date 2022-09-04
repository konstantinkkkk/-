unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Menus, Vcl.StdCtrls,
  Data.DBXMSSQL, Data.SqlExpr, Datasnap.DBClient, SimpleDS, Data.FMTBcd,comobj,
  Data.DBXMySQL;

type
  TForm2 = class(TForm)
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    DBGrid1: TDBGrid;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOTable1: TADOTable;
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3;

procedure TForm2.Button1Click(Sender: TObject);
begin
 ADOQuery1.Close;
ADOQuery1.SQL.Text := 'INSERT INTO organz (naim) VALUES (:F)';
ADOQuery1.Parameters.ParamByName('F').DataType := ftstring;
ADOQuery1.Parameters.ParamByName('F').Value := edit1.Text;
ADOQuery1.ExecSQL;
 ADOQuery1.SQL.Text := 'select * from organz ';
ADOQuery1.ExecSQL;
ADOquery1.active:=true;

end;

procedure TForm2.Button2Click(Sender: TObject);

begin
 DBgrid1.DataSource.DataSet.Delete;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
ADOQuery1.Active := false; // отключаем запрос, если он был включен
ADOQuery1.SQL.Clear; // удаление предыдущего текста запроса
  ADOQuery1.SQL.Text := 'select * from organz ';
ADOQuery1.ExecSQL;
ADOquery1.active:=true;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   ADOQuery1.Active := false; // отключаем запрос, если он был включен
ADOQuery1.SQL.Clear; // удаление предыдущего текста запроса
  ADOQuery1.SQL.Text := 'select * from organz';
ADOQuery1.ExecSQL;
ADOquery1.active:=true;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
 form1.Show;
 form2.hide;
end;

procedure TForm2.N2Click(Sender: TObject);
  var  wd:variant;
    rang:variant;
   table:variant;
    num_rows, num_columns:integer;
    i,j:integer;
begin
 if not(dbgrid1.DataSource.DataSet.IsEmpty)
  then
   begin
    num_rows:=dbgrid1.DataSource.DataSet.RecordCount;
    num_columns:=dbgrid1.DataSource.DataSet.FieldCount;
    wd:=CreateOleObject('Word.application');
    wd.visible:=false;
    wd.documents.add;
    rang:=Wd.ActiveDocument.Range(Wd.ActiveDocument.Range.End-1,
                                Wd.ActiveDocument.Range.End-1);
    Wd.ActiveDocument.Tables.Add(Range:=Rang, NumRows:=num_rows, NumColumns:=num_columns);
    i:=1;
    table:=wd.activedocument.tables.item(1);
    while not (dbgrid1.DataSource.DataSet.eof) do
     begin
      for j:=0 to num_columns-1 do
       begin
        table.cell(i, j+1).range.text:=dbgrid1.DataSource.DataSet.Fields[j].asstring;
       end;
       dbgrid1.DataSource.DataSet.next;
       inc(i);
     end;
   end;

  wd.ActiveDocument.SaveAs(extractfilepath(application.ExeName)+'test1.doc');
  wd.Application.Documents.Close;
  wd.Quit;
  wd:=UnAssigned;
end;

end.
