unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    Label2: TLabel;
    Edit2: TEdit;

    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1;


procedure TForm3.Button1Click(Sender: TObject);
begin
  Form1.Show;
form3.Hide;
end;

procedure TForm3.Button2Click(Sender: TObject);
var st: widestring;
begin
ADOConnection1.LoginPrompt:=False;
ADOConnection1.Connected := False;
  st:='Provider=SQLOLEDB.1;Integrated Security=SSPI;'+'Persist Security Info=False;'+'Initial Catalog=keys;'+'Data Source='+edit1.text+';'+'Use Procedure for Prepare=1;'+'Auto Translate=True;'+'Packet Size=4096;'+'Workstation ID='+edit1.Text+';'+'Use Encryption for Data=False;'+'Tag with column collation when possible=False';
ADOConnection1.ConnectionString :=(st);
ADOConnection1.Connected := True;
if ADOConnection1.Connected then
begin
Form1.Show;
form3.Hide;
end
 else ShowMessage('Не подлючено');

end;

end.
