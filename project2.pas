unit project2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private �錾 }
  public
    { Public �錾 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

//�֐��ꗗ(�߂�l���������)
function Combine(s1, s2:String) : String;
begin
  Result := s1 + s2;
end;

function MyFunc1(a:Integer):Integer;
begin
  ShowMessage(IntToStr(a) + '���󂯎��܂����B');
  Result := a + 10;
end;

function Add30(int:Integer):Integer;
begin
  Result := int + 30;
end;

function Add10(int:Integer):Integer;
begin
  Result := int + 10;
end;



//�葱���ꗗ(�߂�l���Ȃ�����)
procedure MyProc(i:Integer);
begin
  ShowMessage(IntToStr(i) + '���󂯎��܂����B');
end;

procedure MyProc2();
begin
  ShowMessage('button3����Ă΂�܂���');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('���߂Ă�Delphi�v���W�F�N�g');
  Button1.Caption := '�{�^��';
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  a, b, c : String;
begin
  a := Edit1.Text;
  b := Edit2.Text;

  c := Combine(a, b);
  ShowMessage(c);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  MyProc(10);
  MyProc2();
  ShowMessage(IntToStr(MyFunc1(100)));
end;

procedure TForm1.Button4Click(Sender: TObject);
var
   number, Sum : Integer;
begin
  Number := 0;
  Sum := Add10(Number);
  ListBox1.Items.Add(IntToStr(Sum));

  sum := Add30(Number);
  ListBox1.Items.Add(IntToStr(Sum));
end;

end.
