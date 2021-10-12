program PrjFactura;

uses
  Vcl.Forms,
  UntFactura in 'UntFactura.pas' {Form1},
  UntConnection in 'UntConnection.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
