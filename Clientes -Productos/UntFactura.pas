unit UntFactura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Label5: TLabel;
    PageControl1: TPageControl;
    Pedidos: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator3: TDBNavigator;
    Panel3: TPanel;
    Label4: TLabel;
    DBNavigator4: TDBNavigator;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btnExit: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UntConnection;

procedure TForm1.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  with DataModule1 do
  begin
    if fdcConnection.Connected = true then
    begin
      fdtClientes.Open();
      fdtProductos.Open();
    end;

  end;
end;

end.
