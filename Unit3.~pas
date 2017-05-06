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
    procedure N5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
AdoTable1.Connection:=Adoconnection1;
ADOTable1.TableName:=result;
AdoTable1.Active:=True;
DataSource1.DataSet:=AdoTable1;
DBGrid1.DataSource:=DataSource1;
form5.DBGrid1.DataSource:=form3.DataSource1;
form6.DBGrid1.DataSource:=form3.DataSource1;
if adoconnection1.Connected then
showmessage('DB is connect');
dbgrid1.Columns.Grid.Fields[1].DisplayWidth:=5;
for i:=1 to DBGrid1.Columns.count-1 do
dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
end;
end;
procedure TForm3.RadioButton1Click(Sender: TObject);
var
i,wi:integer;
begin
Adoconnection1.ConnectionString:='Provider=MSDASQL.1;Persist Security Info=False;Extended Properties="DBQ='+'E:\Cursova Skakun\autopark.accdb'+';DefaultDir=E:\Cursova Skakun;Driver={Microsoft Access Driver (*.mdb, *.accdb)};DriverId=25;FIL=MS Access;FILEDSN=testDNS.dsn;MaxBufferSize=2048;MaxScanRows=8;PageTimeout=5;SafeTransactions=0;Threads=3;UID=admin;UserCommitSync=Yes;"';
Adoconnection1.Connected:=True;
Adoconnection1.LoginPrompt:=False;
AdoTable1.Connection:=Adoconnection1;
AdoTable1.TableName:='AutoPark';
AdoTable1.Active:=True;
DataSource1.DataSet:=AdoTable1;
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

end.
