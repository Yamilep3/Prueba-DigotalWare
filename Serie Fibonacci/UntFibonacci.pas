unit UntFibonacci;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ListBox1: TListBox;
    Button1: TButton;
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
var
  x, y, z, a, i : integer;
begin
  if Edit1.Text = '' then
  begin
    MessageBox(Handle, pchar('Ingrese un n?mero '), pchar('Serie Fibonacci'), MB_OK);
    Edit1.setfocus;
    abort;
  end;

  ListBox1.Clear;
  x := 1;
  y := 1;
  z := 0;
  a := StrToInt(Edit1.Text);

  for i := 1 to a do
  begin
    x := y;
    y := z;
    z := x + y;
    ListBox1.Items.Add(IntToStr(z));
  end;

end;

end.
