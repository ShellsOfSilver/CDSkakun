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
button1.Hint:='Даний масив m*n.'+#13#10+'Скласти з елементів даного масиву два нових:'+#13#10+'елементами першого повинні бути елементи початкового масиву,'+#13#10+'розташовані між найбільшим і найменшим,'+#13#10+'другий складається зі всієї решти елементів'
end;

procedure TForm1.Button2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
button2.Hint:='Розробити БД (Довідник автомобілів):'+#13#10+
'меню повинне забезпечувати перегляд, редагування, додавання, знищення даних;'+#13#10+
'дана база даних (текстовий файл), містить відомості про автомобілі (мазка, модель, колір, р. в., пробіг)'+#13#10+
'передбачити можливість виводу списку автомобілів, що задовольняють ряду вимог (наприклад, визначеність вартості або вказаної марки ) у вихідну базу і на екран;'+#13#10+
'здійснити сортування і фільтрацію даних по самостійно вибраному ключу.';
end;

procedure TForm1.Button3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
button3.Hint:='Використовуючи принцип мальованого мультфільму (рух створюється послідовною зміною кадрів),'+#13#10+'зобразити людину, що йде.';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
application.HintColor:=clGrayText;
application.HintHidePause:=600000;
application.HintPause:=50;

end;

end.
