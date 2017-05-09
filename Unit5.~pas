unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ADODB, ExtCtrls;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var i:integer;
begin
if edit1.Text='' then
 edit1.Text:='NULL';
if edit2.Text='' then
 edit2.Text:='NULL';
if edit3.Text='' then
 edit3.Text:='NULL';
if edit4.Text='' then
 edit4.Text:='0';
form3.Adoquery1.Close;
form3.Adoquery1.SQL.Clear ;
if form3.RadioButton1.Checked then
form3.Adoquery1.SQL.Add('insert into AutoPark(Brand,Model,Color,Mileage)');
if form3.RadioButton2.Checked then
form3.Adoquery1.SQL.Add('insert into '+StringReplace(ExtractFileName(form3.opendialog1.filename),ExtractFileExt(form3.opendialog1.filename),'',[])+'(Brand,Model,Color,Mileage)');

form3.Adoquery1.SQL.Add('values (:br,:md,:col,:mil)');
form3.Adoquery1.Parameters.ParamByName('br').Value:=edit1.Text;
form3.Adoquery1.Parameters.ParamByName('md').Value:=edit3.Text;
form3.Adoquery1.Parameters.ParamByName('col').Value:=edit3.Text;
form3.Adoquery1.Parameters.ParamByName('mil').Value:=edit4.Text;
form3.ADOQuery1.ExecSQL;
form3.Adoquery1.Close;
form3.Adoquery1.SQL.Clear ;
if form3.RadioButton2.Checked then
form3.Adoquery1.SQL.Add('select * from '+StringReplace(ExtractFileName(form3.opendialog1.filename),ExtractFileExt(form3.opendialog1.filename),'',[]));
if form3.RadioButton1.Checked then
form3.Adoquery1.SQL.Add('select * from AutoPark');
form3.Adoquery1.Open;

dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
for i:=1 to DBGrid1.Columns.count-1 do
dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
end;

procedure TForm5.Button2Click(Sender: TObject);
var i:integer;
begin

form3.Adoquery1.Delete;

dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
for i:=1 to DBGrid1.Columns.count-1 do 
dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);

end;

end.
