unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ADODB, ExtCtrls;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm6.Button2Click(Sender: TObject);
begin
//table1.Cancel;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
if edit1.Text='' then
 edit1.Text:='NULL';
if edit2.Text='' then
 edit2.Text:='NULL';
if edit3.Text='' then
 edit3.Text:='NULL';
if edit4.Text='' then
 edit4.Text:='0';
form3.AdoTable1.Edit;
form3.AdoTable1.FieldByName('Brand').AsString:=edit1.Text;
form3.AdoTable1.FieldByName('Model').AsString:=edit2.Text;
form3.AdoTable1.FieldByName('Color').AsString:=edit3.Text;
form3.AdoTable1.FieldByName('Mileage').AsInteger:=strtoint(edit4.Text);
form3.AdoTable1.Post;
end;

procedure TForm6.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var
i,wi:integer;
begin
dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
for i:=1 to DBGrid1.Columns.count-1 do
dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
end;

end.
