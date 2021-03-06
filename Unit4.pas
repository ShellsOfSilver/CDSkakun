unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  move:integer;
  filename:string;

implementation

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
KeyPreview:=true;
filename:=Getcurrentdir;
end;

procedure TForm4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = Ord('D')) or (Key = 39) then begin
    Image1.Left := Image1.Left + 3;
    move:=1;
    end;
if (Key = Ord('A')) or (Key = 37) then begin
    Image1.Left := Image1.Left - 3;
    move:=2;
    end;

end;

procedure TForm4.Button1Click(Sender: TObject);
begin
timer1.Enabled:=true;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
if move=1 then begin
image1.Picture.LoadFromFile(filename+'\sprite\001.bmp');
timer1.Enabled:=false;
timer2.Enabled:=true;
end
else if move=2 then begin
image1.Picture.LoadFromFile(filename+'\sprite\011.bmp');
timer1.Enabled:=false;
timer2.Enabled:=true;
end
else if move=22 then  begin
image1.Picture.LoadFromFile(filename+'\sprite\10.bmp');
end
else if move=11 then begin
image1.Picture.LoadFromFile(filename+'\sprite\00.bmp');
end;

end;

procedure TForm4.Timer2Timer(Sender: TObject);
begin
if move=1 then begin
image1.Picture.LoadFromFile(filename+'\sprite\002.bmp');
timer2.Enabled:=false;
timer3.Enabled:=true;
end
else if move=2 then begin
image1.Picture.LoadFromFile(filename+'\sprite\022.bmp');
timer2.Enabled:=false;
timer3.Enabled:=true;
end
else if move=22 then  begin
image1.Picture.LoadFromFile(filename+'\sprite\10.bmp');
end
else if move=11 then begin
image1.Picture.LoadFromFile(filename+'\sprite\00.bmp');
end;
end;

procedure TForm4.Timer3Timer(Sender: TObject);
begin
if move=1 then begin
image1.Picture.LoadFromFile(filename+'\sprite\003.bmp');
timer3.Enabled:=false;
timer4.Enabled:=true;
end
else if move=2 then begin
image1.Picture.LoadFromFile(filename+'\sprite\033.bmp');
timer3.Enabled:=false;
timer4.Enabled:=true;
end
else if move=22 then  begin
image1.Picture.LoadFromFile(filename+'\sprite\10.bmp');
end
else if move=11 then begin
image1.Picture.LoadFromFile(filename+'\sprite\00.bmp');
end;
end;

procedure TForm4.Timer4Timer(Sender: TObject);
begin
if move=1 then begin
image1.Picture.LoadFromFile(filename+'\sprite\004.bmp');
timer4.Enabled:=false;
timer5.Enabled:=true;
end
else if move=2 then begin
image1.Picture.LoadFromFile(filename+'\sprite\044.bmp');
timer4.Enabled:=false;
timer5.Enabled:=true;
end
else if move=22 then  begin
image1.Picture.LoadFromFile(filename+'\sprite\10.bmp');
end
else if move=11 then begin
image1.Picture.LoadFromFile(filename+'\sprite\00.bmp');
end;
end;

procedure TForm4.Timer5Timer(Sender: TObject);
begin
if move=1 then begin
image1.Picture.LoadFromFile(filename+'\sprite\005.bmp');
timer5.Enabled:=false;
timer6.Enabled:=true;
end
else if move=2 then begin
image1.Picture.LoadFromFile(filename+'\sprite\055.bmp');
timer5.Enabled:=false;
timer6.Enabled:=true;
end
else if move=22 then  begin
image1.Picture.LoadFromFile(filename+'\sprite\10.bmp');
end
else if move=11 then begin
image1.Picture.LoadFromFile(filename+'\sprite\00.bmp');
end;
end;

procedure TForm4.Timer6Timer(Sender: TObject);
begin
if move=1 then begin
image1.Picture.LoadFromFile(filename+'\sprite\006.bmp');
timer6.Enabled:=false;
timer1.Enabled:=true;
end
else if move=2 then begin
image1.Picture.LoadFromFile(filename+'\sprite\066.bmp');
timer6.Enabled:=false;
timer1.Enabled:=true;
end
else if move=22 then  begin
image1.Picture.LoadFromFile(filename+'\sprite\10.bmp');
end
else if move=11 then begin
image1.Picture.LoadFromFile(filename+'\sprite\00.bmp');
end;
end;

procedure TForm4.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = Ord('D')) or (Key = 39) then begin
    move:=11;
    end;
if (Key = Ord('A')) or (Key = 37) then begin
    move:=22;
    end;
if Key = 27 then panel1.visible:=true;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
panel1.visible:=false;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
form4.Close;
end;

end.
