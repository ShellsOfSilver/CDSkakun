unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.show
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form3.show
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form4.show
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
button1.Hint:='����� ����� m*n.'+#13#10+'������� � �������� ������ ������ ��� �����:'+#13#10+'���������� ������� ������ ���� �������� ����������� ������,'+#13#10+'���������� �� ��������� � ���������,'+#13#10+'������ ���������� � �񳺿 ����� ��������'
end;

procedure TForm1.Button2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
button2.Hint:='��������� �� (������� ���������):'+#13#10+
'���� ������� ������������� ��������, �����������, ���������, �������� �����;'+#13#10+
'���� ���� ����� (��������� ����), ������ ������� ��� �������� (�����, ������, ����, �. �., �����)'+#13#10+
'����������� ��������� ������ ������ ���������, �� ������������� ���� ����� (���������, ����������� ������� ��� ������� ����� ) � ������� ���� � �� �����;'+#13#10+
'�������� ���������� � ���������� ����� �� ��������� ��������� �����.';
end;

procedure TForm1.Button3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
button3.Hint:='�������������� ������� ����������� ����������� (��� ����������� ���������� ����� �����),'+#13#10+'��������� ������, �� ���.';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
application.HintColor:=clGrayText;
application.HintHidePause:=600000;
application.HintPause:=50;

end;

end.
