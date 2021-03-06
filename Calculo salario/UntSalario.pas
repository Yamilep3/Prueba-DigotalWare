unit UntSalario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
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
  HorasTrabj : integer;
  HorasOrdin : integer;
  HorasExtra : integer;
  ValorOrdin : double;
  TotaPagar  : double;
  ValHorOrdi : double;
  ValHorExtr : double;
begin
  if (Edit1.Text = '') then
  begin
    MessageBox(Handle, pchar('Ingrese nombre del empleado'), pchar('Nombre empleado'), MB_OK);
    Edit1.SetFocus;
    abort;
  end;

  if (Edit2.Text = '') then
  begin
    MessageBox(Handle, pchar('Ingrese un n?mero v?lido de horas trabajadas'), pchar('Horas trabajadas'), MB_OK);
    Edit2.SetFocus;
    abort;
  end;

  if (Edit3.Text = '') then
  begin
    MessageBox(Handle, pchar('Ingrese el valor de la hora ordinaria'), pchar('Valor hora ordinaria'), MB_OK);
    Edit3.SetFocus;
    abort;
  end;

  HorasTrabj := StrToInt(Edit2.Text);
  ValHorOrdi := StrToFloat(Edit3.Text);

  if HorasTrabj <= 35 then
  begin
     TotaPagar :=  (HorasTrabj * ValHorOrdi);
  end
  else
  begin
     if (Edit3.Text = '') then
     begin
       MessageBox(Handle, pchar('Ingrese el valor de la hora extra'), pchar('Nombre empleado'), MB_OK);
       Edit2.SetFocus;
       abort;
  end;
     ValHorExtr := StrToFloat(Edit4.Text);
     HorasExtra := HorasTrabj - 35;
     HorasOrdin := 35;
     ValorOrdin := (35 * ValHorOrdi);
     ValHorExtr := (HorasExtra * ValHorExtr);
     TotaPagar  := ValorOrdin + ValHorExtr;
  end;

   MessageBox(Handle, pchar('Al empleado ' + Edit1.Text + ' se le debe pagar la suma de $ ' + FloatToStr(TotaPagar) + ' pesos.'), pchar('Salario empleado'), MB_OK);
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in [#8, '0'..'9']) then
   begin
     key := #0;
   end;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in [#8, '0'..'9']) then
   begin
     key := #0;
   end;
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in [#8, '0'..'9']) then
   begin
     key := #0;
   end;
end;

end.
