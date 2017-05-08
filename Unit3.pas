unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, DBCtrls,
  ADODB,comobj;

type
  TForm3 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Button3: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Panel4: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Button4: TButton;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    procedure N5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit5, Unit6;

{$R *.dfm}

procedure TForm3.N5Click(Sender: TObject);
begin
close;
end;
procedure TForm3.Button3Click(Sender: TObject);
begin
if adoconnection1.Connected then
form5.show;
end;
procedure TForm3.Button2Click(Sender: TObject);
begin
if adoconnection1.Connected then
form6.show;
end;
procedure TForm3.Button1Click(Sender: TObject);
var
i,wi:integer;
s,result:string;
begin
if OpenDialog1.Execute then begin
result:=StringReplace(ExtractFileName(opendialog1.filename),ExtractFileExt(opendialog1.filename),'',[]);
ADOConnection1.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="DBQ='+opendialog1.filename+';DefaultDir='+ExtractFileDir(opendialog1.filename)+';Driver={Microsoft Access Driver (*.mdb, *.accdb)};DriverId=25;FIL=MS Access;FILEDSN=WTBDDSN.dsn;MaxBufferSize=2048;MaxScanRows=8;PageTimeout=5;SafeTransactions=0;Threads=3;UID=admin;UserCommitSync=Yes;"';
Adoconnection1.Connected:=True;
Adoconnection1.LoginPrompt:=False;
AdoQuery1.Connection:=Adoconnection1;
AdoQuery1.SQL.add('select * from '+ result);
AdoQuery1.Active:=True;
DataSource1.DataSet:=AdoQuery1;
DBGrid1.DataSource:=DataSource1;
form5.DBGrid1.DataSource:=form3.DataSource1;
form6.DBGrid1.DataSource:=form3.DataSource1;
if adoconnection1.Connected then
  showmessage('DB is connect');

dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
form5.dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
form6.dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
for i:=1 to DBGrid1.Columns.count-1 do begin
dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
form5.dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
form6.dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
end;

end;
end;
procedure TForm3.RadioButton1Click(Sender: TObject);
var
i,wi:integer;
begin
Adoconnection1.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="DBQ='+'E:\Cursova Skakun\autopark.accdb'+';DefaultDir=E:\Cursova Skakun;Driver={Microsoft Access Driver (*.mdb, *.accdb)};DriverId=25;FIL=MS Access;FILEDSN=testDNS.dsn;MaxBufferSize=2048;MaxScanRows=8;PageTimeout=5;SafeTransactions=0;Threads=3;UID=admin;UserCommitSync=Yes;"';
Adoconnection1.Connected:=True;
Adoconnection1.LoginPrompt:=False;
//AdoTable1.Connection:=Adoconnection1;
//AdoTable1.TableName:='AutoPark';
//AdoTable1.Active:=True;
AdoQuery1.Connection:=Adoconnection1;
AdoQuery1.SQL.add('select * from AutoPark');
AdoQuery1.Active:=True;
DataSource1.DataSet:=AdoQuery1;
//DataSource1.DataSet:=AdoTable1;
DBGrid1.DataSource:=DataSource1;

form5.DBGrid1.DataSource:=form3.DataSource1;
form6.DBGrid1.DataSource:=form3.DataSource1;
dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
form5.dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
form6.dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
for i:=1 to DBGrid1.Columns.count-1 do begin
dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
form5.dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
form6.dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
end;


end;

procedure TForm3.RadioButton2Click(Sender: TObject);
begin
Button1.Visible:=true;

end;

procedure TForm3.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var
i,wi:integer;
begin
dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
for i:=1 to DBGrid1.Columns.count-1 do
dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
end;

procedure TForm3.RadioButton3Click(Sender: TObject);
begin
AdoTable1.Sort:='Brand ASC'; //asc -возростание
//DESC - убивание
end;

procedure TForm3.RadioButton4Click(Sender: TObject);
begin
AdoTable1.Sort:='Brand DESC';
end;

procedure TForm3.RadioGroup1Click(Sender: TObject);
begin
case Radiogroup1.Itemindex of
0:AdoTable1.Sort:='Brand ASC'; //asc -возростание
1:AdoTable1.Sort:='Brand DESC';  //DESC - убивание
end;
end;

procedure TForm3.RadioGroup2Click(Sender: TObject);
begin
case Radiogroup2.Itemindex of
0:AdoTable1.Sort:='Model ASC';
1:AdoTable1.Sort:='Model DESC';
end;
end;

procedure TForm3.RadioGroup3Click(Sender: TObject);
begin
case Radiogroup3.Itemindex of
0:AdoTable1.Sort:='Mileage ASC';
1:AdoTable1.Sort:='Mileage DESC';
end;
end;

procedure TForm3.Edit1Change(Sender: TObject);
var h1,hel2: string;
i:integer;
begin
h1:='%'+edit1.Text+'%';
hel2:=Quotedstr(h1);
Adoquery1.Close;
Adoquery1.SQL.Clear ;
Adoquery1.SQL.Add('Select * from AutoPark');
Adoquery1.SQL.Add('where Model like '+hel2+' or Brand like '+hel2+' or Color like '+hel2+' or Mileage like '+hel2+' order by Model');
ADOQuery1.Open;
dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
form5.dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
form6.dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
for i:=1 to DBGrid1.Columns.count-1 do begin
dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
form5.dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
form6.dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
end;

end;

end.
