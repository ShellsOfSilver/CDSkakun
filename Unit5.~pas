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
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
begin
form3.AdoTable1.append;

//dbgrid1.ReadOnly:=true;
//table1.Insert;
form3.AdoTable1.FieldByName('Brand').AsString:=edit1.Text;
form3.AdoTable1.FieldByName('Model').AsString:=edit2.Text;
form3.AdoTable1.FieldByName('Color').AsString:=edit3.Text;
form3.AdoTable1.FieldByName('Mileage').AsInteger:=strtoint(edit4.Text);
form3.AdoTable1.Post;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
form3.AdoTable1.Delete;

end;

procedure TForm5.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
  var
i,wi:integer;
begin
dbgrid1.Columns.Grid.Fields[0].DisplayWidth:=5;
for i:=1 to DBGrid1.Columns.count-1 do
dbgrid1.Columns[i].Width:=trunc(dbgrid1.Width/DBGrid1.Columns.count);
end;

end.
