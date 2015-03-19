unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure Timer1Timer(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Label1.Caption:=TimeToStr(Time);
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
Timer1.Interval := 1000;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
Timer1.Interval := 3000;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
Timer1.Interval := 2000;
end;

end.
