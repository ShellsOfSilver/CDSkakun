unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids,ComObj, ExtCtrls;

type
  TForm2 = class(TForm)
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    StringGrid2: TStringGrid;
    Edit3: TEdit;
    Edit4: TEdit;
    StringGrid3: TStringGrid;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    SaveDialog1: TSaveDialog;
    Button4: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Panel4: TPanel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  min,max,imax,jmax,imin,jmin:Integer;
  A: array[1..100,1..100] of Integer;

implementation

{$R *.dfm}
procedure TForm2.Button1Click(Sender: TObject);
var i,j,x,y,L,num: Integer;
Flag : Boolean;
begin
StringGrid2.RowCount:=strtoint(Edit2.Text);
StringGrid2.ColCount:=strtoint(Edit1.Text);
StringGrid3.RowCount:=strtoint(Edit2.Text);
StringGrid3.ColCount:=strtoint(Edit1.Text);
StringGrid1.RowCount:=strtoint(Edit2.Text);
StringGrid1.ColCount:=strtoint(Edit1.Text);
StringGrid1.Visible:=True;
StringGrid2.Visible:=True;
StringGrid3.Visible:=True;
Randomize;
for x:=0 to StringGrid1.ColCount-1 do begin
 for y:=0 to StringGrid1.RowCount-1 do begin
   L:=random(30)-15;
   stringgrid1.cells[x,y]:=inttostr(L);
   A[x,y]:=L;
 end;
end;

min :=0;
max :=0;

for i := 0 to StringGrid1.ColCount-1 do
   for j := 0 to StringGrid1.RowCount-1 do
       begin
       if (A[i,j] < min) then begin min := A[i,j]; imin:=i;jmin:=j;  end;
       if (A[i,j] > max) then begin max := A[i,j]; imax:=i;jmax:=j;  end;
       end;

edit3.Text:=inttostr(min);
edit4.Text:=inttostr(max);

end;

procedure TForm2.Button2Click(Sender: TObject);
var i,j,imi,jmi,ima,jma:integer;
begin

for i:=0 to StringGrid1.ColCount-1 do
  begin
    StringGrid2.Cols[i].Clear; StringGrid2.Rows[i].Clear;
    StringGrid3.Cols[i].Clear; StringGrid3.Rows[i].Clear;
  end;

for i:=0 to StringGrid1.ColCount-1 do begin
 for j:=0 to StringGrid1.RowCount-1 do begin
     StringGrid2.Cells[i,j]:=StringGrid1.Cells[i,j];
 end;
end;

if (jmin<StringGrid1.RowCount) and (jmin>jmax) or (jmin<StringGrid1.RowCount) and (jmin=jmax) and (imin>imax) then
  begin
    for i:=imin to StringGrid1.ColCount-1 do
      begin
        StringGrid3.cells[i,jmin]:=StringGrid1.cells[i,jmin];
        StringGrid2.cells[i,jmin]:=' ' ;
      end;

    for i:=jmin+1 to StringGrid1.ColCount-1 do
      begin
        StringGrid3.rows[i]:=StringGrid1.rows[i];
        StringGrid2.rows[i].Clear ;
      end;

    for i:=0 to imax-1 do
      begin
        StringGrid3.cells[i,jmax]:=StringGrid1.cells[i,jmax];
        StringGrid2.cells[i,jmax]:=' ' ;
      end;

    for i:=0 to jmax-1 do
      begin
        StringGrid3.rows[i]:=StringGrid1.rows[i];
        StringGrid2.rows[i].Clear ;
      end;
  end;

if (jmax<StringGrid1.RowCount) and (jmin<jmax)or (jmin<StringGrid1.RowCount) and (jmin=jmax) and (imin<imax)  then
  begin
    for i:=imax to StringGrid1.ColCount-1 do
      begin
        StringGrid3.cells[i,jmax]:=StringGrid1.cells[i,jmax];
        StringGrid2.cells[i,jmax]:=' ' ;
      end;

    for i:=jmax+1 to StringGrid1.ColCount-1 do
      begin
        StringGrid3.rows[i]:=StringGrid1.rows[i];
        StringGrid2.rows[i].Clear ;
      end;

    for i:=0 to imin-1 do
      begin
        StringGrid3.cells[i,jmin]:=StringGrid1.cells[i,jmin];
        StringGrid2.cells[i,jmin]:=' ' ;
      end;
    for i:=0 to jmin-1 do
      begin
        StringGrid3.rows[i]:=StringGrid1.rows[i];
        StringGrid2.rows[i].Clear ;
      end;
  end;

StringGrid3.Cells[imin,jmin]:='';
StringGrid3.Cells[imax,jmax]:='';
StringGrid2.Cells[imin,jmin]:=inttostr(min);
StringGrid2.Cells[imax,jmax]:=inttostr(max);
end;
procedure TForm2.Button4Click(Sender: TObject);
const
wdWord = 1;
var
  WordApp, NewDoc, WordTable: Variant;
  i,j: Integer;
begin
  WordApp := CreateOleObject('Word.Application');
  NewDoc := WordApp.Documents.Add;
  SaveDialog1.DefaultExt:='docx';
  WordTable := NewDoc.Tables.Add(NewDoc.Range,StringGrid2.RowCount,StringGrid2.ColCount,wdWord);
  for  i:= 0 to  StringGrid2.RowCount-1 do
    for j := 0 to  StringGrid2.ColCount-1 do
      WordTable.Cell(i+1,j+1).Range.Text :=StringGrid2.Cells[j,i];
  WordApp.ActiveDocument.Range.InsertAfter('Елементи початкового масиву, розташовані між найбільшим і найменшим ');
  if SaveDialog1.Execute then WordApp.ActiveDocument.SaveAs(SaveDialog1.FileName);

  WordApp := Unassigned;
  NewDoc := Unassigned;
  WordTable := Unassigned;

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form2.Close;
end;

end.
