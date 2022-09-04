unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,comobj,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls,
  Datasnap.Provider;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    Panel3: TPanel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Edit2: TEdit;
    Button3: TButton;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    ADOTable1: TADOTable;
    Button1: TButton;
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

    procedure N2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm1.Button1Click(Sender: TObject);
var par:boolean;
i : integer;

begin

 i:= integer(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
 ADOQuery1.Close;

ADOQuery1.SQL.Text := 'INSERT INTO keyss (dat_str,dat_end,id_org,indik) VALUES (:F , :D,:T,:K)';
ADOQuery1.Parameters.ParamByName('F').DataType := ftDate;
ADOQuery1.Parameters.ParamByName('F').Value := DateTimePicker1.Date;
 ADOQuery1.Parameters.ParamByName('D').DataType := ftDate;
ADOQuery1.Parameters.ParamByName('D').Value := DateTimePicker2.Date;
  ADOQuery1.Parameters.ParamByName('T').DataType := ftinteger;
ADOQuery1.Parameters.ParamByName('T').Value := i;
ADOQuery1.Parameters.ParamByName('K').DataType :=ftboolean;
ADOQuery1.Parameters.ParamByName('K').Value := par;
ADOQuery1.ExecSQL;
 ADOQuery1.SQL.Text := 'select keyss.id_org, organz.naim, keyss.id_key,keyss.keys, keyss.dat_str, keyss.dat_end, keyss.indik from keyss LEFT JOIN organz on keyss.id_org=organz.id_org';
ADOQuery1.ExecSQL;
ADOquery1.active:=true;
dbgrid1.Columns[0].Visible:=false;
dbgrid1.Columns[1].title.caption:='название организации';
dbgrid1.Columns[2].title.caption:='№ Ключа';
dbgrid1.Columns[3].title.caption:='Ключ';
dbgrid1.Columns[4].title.caption:='Дата начала действия';
dbgrid1.Columns[5].title.caption:='Дата конца действия';
dbgrid1.Columns[6].title.caption:='Статус блокировки';

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ADOQuery1.Active := false; // отключаем запрос, если он был включен
ADOQuery1.SQL.Clear; // удаление предыдущего текста запроса
if radiobutton1.Checked then
     Begin ADOQuery1.SQL.Text := 'select keyss.id_org, organz.naim, keyss.id_key,keyss.keys, keyss.dat_str, keyss.dat_end, keyss.indik from keyss LEFT JOIN organz ON keyss.id_org=organz.id_org and organz.naim like '+QuotedStr('%'+Edit3.Text+'%');

ADOQuery1.ExecSQL;
ADOQuery1.active:=true;
  end;
  if radiobutton3.Checked then
 Begin ADOQuery1.SQL.Text := 'select keyss.id_org, organz.naim, keyss.id_key,keyss.keys, keyss.dat_str, keyss.dat_end, keyss.indik from keyss LEFT JOIN organz on keyss.id_org=organz.id_org and keyss.keys like '+QuotedStr('%'+Edit2.Text+'%');
ADOQuery1.ExecSQL;
ADOQuery1.active:=true;
end;
  if radiobutton4.Checked then
     Begin  ADOQuery1.Active := false; // отключаем запрос, если он был включен
ADOQuery1.SQL.Clear; // удаление предыдущего текста запроса
 ADOQuery1.SQL.Text := 'select keyss.id_org, organz.naim, keyss.id_key,keyss.keys, keyss.dat_str, keyss.dat_end, keyss.indik from keyss LEFT JOIN organz on keyss.id_org=organz.id_org  ';
ADOQuery1.ExecSQL;
ADOquery1.active:=true;
end;
dbgrid1.Columns[0].Visible:=false;
dbgrid1.Columns[1].title.caption:='название организации';
dbgrid1.Columns[2].title.caption:='№ Ключа';
dbgrid1.Columns[3].title.caption:='Ключ';
dbgrid1.Columns[4].title.caption:='Дата начала действия';
dbgrid1.Columns[5].title.caption:='Дата конца действия';
dbgrid1.Columns[6].title.caption:='Статус блокировки';
end;
procedure TForm1.Button3Click(Sender: TObject);
begin
ADOQuery1.Close;
if edit1.Text='' then showmessage('Введите номер ключа')
 else
try
    ADOQuery1.SQL.Text := 'delete from keyss where id_key=:F';
ADOQuery1.Parameters.ParamByName('F').DataType := ftinteger;
 ADOQuery1.Parameters.ParamByName('F').Value :=strtoint(edit1.text);
ADOQuery1.ExecSQL;
except
    ShowMessage('Неизвестная ошибка');
end;
 ADOQuery1.SQL.Text := 'select keyss.id_org, organz.naim, keyss.id_key,keyss.keys, keyss.dat_str, keyss.dat_end, keyss.indik from keyss LEFT JOIN organz on keyss.id_org=organz.id_org';
ADOQuery1.ExecSQL;
ADOquery1.active:=true;
dbgrid1.Columns[0].Visible:=false;
dbgrid1.Columns[1].title.caption:='название организации';
dbgrid1.Columns[2].title.caption:='№ Ключа';
dbgrid1.Columns[3].title.caption:='Ключ';
dbgrid1.Columns[4].title.caption:='Дата начала действия';
dbgrid1.Columns[5].title.caption:='Дата конца действия';
dbgrid1.Columns[6].title.caption:='Статус блокировки';
end;

procedure TForm1.Button4Click(Sender: TObject);
var s :string;
begin
ADOQuery1.Close;
if edit1.Text='' then showmessage('Введите номер ключа')
 else
try
    ADOQuery1.SQL.Text := 'update keyss set indik=1 where id_key=:F';
ADOQuery1.Parameters.ParamByName('F').DataType := ftinteger;
 ADOQuery1.Parameters.ParamByName('F').Value :=strtoint(edit1.text);
ADOQuery1.ExecSQL;
except
    ShowMessage('Неизвестная ошибка');
end;
 ADOQuery1.SQL.Text := 'select keyss.id_org, organz.naim, keyss.id_key,keyss.keys, keyss.dat_str, keyss.dat_end, keyss.indik from keyss LEFT JOIN organz on keyss.id_org=organz.id_org';
ADOQuery1.ExecSQL;
ADOquery1.active:=true;
dbgrid1.Columns[0].Visible:=false;
dbgrid1.Columns[1].title.caption:='название организации';
dbgrid1.Columns[2].title.caption:='№ Ключа';
dbgrid1.Columns[3].title.caption:='Ключ';
dbgrid1.Columns[4].title.caption:='Дата начала действия';
dbgrid1.Columns[5].title.caption:='Дата конца действия';
dbgrid1.Columns[6].title.caption:='Статус блокировки';

end;





procedure TForm1.Button5Click(Sender: TObject);
begin
  ADOQuery1.SQL.Text := 'update keyss set indik=0 where id_key=:F';
ADOQuery1.Parameters.ParamByName('F').DataType := ftinteger;
 ADOQuery1.Parameters.ParamByName('F').Value :=strtoint(edit1.text);
ADOQuery1.ExecSQL;
 ADOQuery1.SQL.Text := 'select keyss.id_org, organz.naim, keyss.id_key,keyss.keys, keyss.dat_str, keyss.dat_end, keyss.indik from keyss LEFT JOIN organz on keyss.id_org=organz.id_org';
ADOQuery1.ExecSQL;
ADOquery1.active:=true;
dbgrid1.Columns[0].Visible:=false;
dbgrid1.Columns[1].title.caption:='название организации';
dbgrid1.Columns[2].title.caption:='№ Ключа';
dbgrid1.Columns[3].title.caption:='Ключ';
dbgrid1.Columns[4].title.caption:='Дата начала действия';
dbgrid1.Columns[5].title.caption:='Дата конца действия';
dbgrid1.Columns[6].title.caption:='Статус блокировки';

end;




procedure TForm1.FormActivate(Sender: TObject);
begin
ComboBox1.Items.Clear; // очищаем комбобокс
ComboBox1.Items.BeginUpdate; // запрещаем перерисовку пока добавляем элементы
     adotable1.Active := false;
adotable1.Active := TRUE;
  while not  adotable1.Eof do begin
   ComboBox1.Items.AddObject ( adotable1.Fieldbyname('naim').AsString,pointer( adotable1.Fieldbyname('id_org').AsInteger));
     adotable1.Next;
  end;

ComboBox1.Items.EndUpdate; // включаем перирисовку, иначе просто ничего не увидим в комбобоксе

ComboBox1.DroppedDown:=True; combobox1.Refresh;
    ADOQuery2.Active := false; // отключаем запрос, если он был включен
ADOQuery2.SQL.Clear; // удаление предыдущего текста запроса
  ADOQuery2.SQL.Text := 'select * from  organz ';
ADOQuery2.ExecSQL;
ADOquery2.active:=true;
   ADOQuery1.Active := false; // отключаем запрос, если он был включен
ADOQuery1.SQL.Clear; // удаление предыдущего текста запроса
  ADOQuery1.SQL.Text := 'select keyss.id_org, organz.naim, keyss.id_key,keyss.keys, keyss.dat_str, keyss.dat_end, keyss.indik from keyss LEFT JOIN organz on keyss.id_org=organz.id_org ';
ADOQuery1.ExecSQL;
ADOquery1.active:=true;
dbgrid1.Columns[0].Visible:=false;
dbgrid1.Columns[1].title.caption:='название организации';
dbgrid1.Columns[2].title.caption:='№ Ключа';
dbgrid1.Columns[3].title.caption:='Ключ';
dbgrid1.Columns[4].title.caption:='Дата начала действия';
dbgrid1.Columns[5].title.caption:='Дата конца действия';
dbgrid1.Columns[6].title.caption:='Статус блокировки';
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form3.Close;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
 form2.Show;
 form1.hide;
end;

procedure TForm1.N2Click(Sender: TObject);
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
