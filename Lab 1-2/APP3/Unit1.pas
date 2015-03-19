unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
Panel1.Color := clRed;
Panel2.Color := clWhite;
Panel3.Color := clWhite;
Panel1.Caption := '����';
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
Panel1.Color := clWhite;
Panel2.Color := clYellow;
Panel3.Color := clWhite;
Panel2.Caption := '��������';
end;


procedure TForm1.RadioButton3Click(Sender: TObject);
begin
Panel1.Color := clWhite;
Panel2.Color := clWhite;
Panel3.Color := clGreen;
Panel3.Caption := '���';
end;



end.
