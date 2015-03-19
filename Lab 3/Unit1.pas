unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Math;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  v,x,y,z:extended;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

x := StrToFloat(Edit1.Text);
// ��������� �������� X 
  Memo1.Lines.Add('X = '+Edit1.Text);
// �������� X � ���� Memo1
y := StrToFloat(Edit2.Text);
// ��������� �������� Y
  Memo1.Lines.Add('Y ='+Edit2.Text);
// �������� Y � ���� Memo1
z := StrToFloat(Edit3.Text);
// ��������� �������� Z
  Memo1.Lines.Add('Z = '+Edit3.Text);
// �������� Z � ���� Memo1
// ���������� ����������� ���������
if (x=0) or (y=0) or (z=0) then Memo1.Lines.Add('������� �������� �� ������ ����')
else
v:=(1+power(sin(x+y),2))/(abs(x-2*y/(1+power(x*y,2))))*power(x,abs(y))+power(cos(arctan(1/z)),2);
//�������� ��������� � ���� Memo1
  Memo1.Lines.Add('��������� v = '+ FloatToStrF(v,fffixed,8,3));
end;
end.
