unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    RadioGroup1: TRadioGroup;
    Memo1: TMemo;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var  p, x, y, z, fx, min, max: Extended;
begin
  x := StrToFloat(Edit1.Text);
  Memo1.Lines.Add('Х = '+Edit1.Text);
  y := StrToFloat(Edit2.Text);
  Memo1.Lines.Add('Y ='+Edit2.Text);
  z := StrToFloat(Edit3.Text);
  Memo1.Lines.Add('Z = '+Edit3.Text);
  //Перевірка номера натиснутої кнопки і вибір відповідної їй функції
  case RadioGroup1.ItemIndex of
    0: fx := (exp(x)-exp(-x))/2;
    1: fx := x*x;
    2: fx := exp(x);
  end;
  // Виведення f у вікно Memol
 Memo1.Lines.Add('f(x) = ' + FloatToStrF(fx, fffixed,8,2));
 if fx>y then min := y else min := fx;
 if z>y then max := z else max := y;
 p:= abs(min-max)/2;
 Memo1.Lines.Add('P=' + FloatToStrF(p,fffixed,8,2))
end;

end.
