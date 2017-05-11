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
    Edit3: TEdit;
    Edit4: TEdit;
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
    ListBox1: TListBox;
    ListBox2: TListBox;
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
  min,max,imax,jmax,kol,imin,jmin,kmax,kmin:Integer;
  A: array[0..1000,0..1000] of Integer;
  MiMa: array[0..1000] of Integer;
  R: array[0..1000] of Integer;
  Ost: array[0..1000] of Integer;

implementation

{$R *.dfm}
procedure TForm2.Button1Click(Sender: TObject);
var i,j,x,y,L,num: Integer;
Flag : Boolean;
begin
StringGrid1.RowCount:=strtoint(Edit2.Text);
StringGrid1.ColCount:=strtoint(Edit1.Text);
StringGrid1.Visible:=True;
listbox1.Visible:=true;
Randomize;
for x:=0 to StringGrid1.ColCount-1 do begin
 for y:=0 to StringGrid1.RowCount-1 do begin
   L:=random(45)-30;
   stringgrid1.cells[x,y]:=inttostr(L);
   A[x,y]:=L;

 end;
end;
listbox1.Items.Clear;
listbox2.Items.Clear;
min :=A[0,0];
max :=A[0,0];
for i := 0 to StringGrid1.ColCount-1 do
   for j := 0 to StringGrid1.RowCount-1 do
       begin
       if (A[i,j] <= min) then begin min := A[i,j]; imin:=i;jmin:=j;  end;
       if (A[i,j] >= max) then begin max := A[i,j]; imax:=i;jmax:=j;  end;
       end;
edit3.Text:=inttostr(min)+'  ( '+inttostr(imin+1)+','+inttostr(jmin+1)+' )';
edit4.Text:=inttostr(max)+'  ( '+inttostr(imax+1)+','+inttostr(jmax+1)+' )';
end;

procedure TForm2.Button2Click(Sender: TObject);
var i,j,max,min,k:integer;
begin
k:=0;
for i:=0 to StringGrid1.ColCount-1 do begin
 for j:=0 to StringGrid1.RowCount-1 do begin
     R[k]:=A[i,j];
     inc(k);
     kol:=k;
     if (i=imax) and (j=jmax) then
        kmax:=k;
      if (i=imin) and (j=jmin) then
        kmin:=k;
 end;
end;
if kmin<kmax then begin
for i:=kmin-1 to kmax-1 do begin
 mima[i]:=R[i];
  listbox1.Items.add(inttostr(R[i]));
   end;
for i:=0 to kmin-2 do begin
  Ost[i]:=R[i];
  listbox2.Items.add(inttostr(R[i]));
  end;
for i:=kmax to kol-1 do begin
  Ost[i]:=R[i];
  listbox2.Items.add(inttostr(R[i]));
  end;
end;
if kmin>kmax then begin
for i:=kmax-1 to kmin-1 do begin
 mima[i]:=R[i];
  listbox1.Items.add(inttostr(R[i]));
   end;
for i:=0 to kmax-2 do begin
  Ost[i]:=R[i];
  listbox2.Items.add(inttostr(R[i]));
  end;
for i:=kmin to kol-1 do begin
  Ost[i]:=R[i];
  listbox2.Items.add(inttostr(R[i])); end;
end;


end;
procedure TForm2.Button4Click(Sender: TObject);
const
wdWord = 1;
var
  WordApp, NewDoc, WordTable: Variant;
  i,j: Integer;
begin
  WordApp := CreateOleObject('Word.Application');
  WordApp.Visible:=True;
  NewDoc := WordApp.Documents.Add;
  SaveDialog1.DefaultExt:='docx';
  WordApp.ActiveDocument.Range.InsertAfter('Елементи початкового масиву, розташовані між найбільшим і найменшим: '+#13#10);
  if kmin<kmax then begin
   for i:=kmin-1 to kmax-1 do begin
    WordApp.ActiveDocument.Range.InsertAfter(inttostr(mima[i])+#13#10);
    end;end;
   if kmin>kmax then begin
   for i:=kmax-1 to kmin-1 do begin
    WordApp.ActiveDocument.Range.InsertAfter(inttostr(mima[i])+#13#10);
    end;  end;
  WordApp.ActiveDocument.Range.InsertAfter('Остаток: '+#13#10 );

  if kmin<kmax then begin
    for i:=0 to kmin-2 do begin
      WordApp.ActiveDocument.Range.InsertAfter(inttostr(ost[i])+#13#10);
    end;
    for i:=kmax to kol-1 do begin
      WordApp.ActiveDocument.Range.InsertAfter(inttostr(ost[i])+#13#10);
    end; end;
  if kmin>kmax then begin
    for i:=0 to kmax-2 do begin
      WordApp.ActiveDocument.Range.InsertAfter(inttostr(ost[i])+#13#10);
    end;
    for i:=kmin to kol-1 do begin
      WordApp.ActiveDocument.Range.InsertAfter(inttostr(ost[i])+#13#10);
    end;end;
  WordApp := Unassigned;
  NewDoc := Unassigned;
  WordTable := Unassigned;

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form2.Close;
end;

end.
