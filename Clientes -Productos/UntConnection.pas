unit UntConnection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    fdtClientes: TFDTable;
    fdtClientesid: TFDAutoIncField;
    fdtClientesnombre: TStringField;
    fdtClientesdireccion: TStringField;
    fdtClientescreado: TSQLTimeStampField;
    fdtClientesactualizado: TSQLTimeStampField;
    dtsClientes: TDataSource;
    fdtProductos: TFDTable;
    fdcConnection: TFDConnection;
    DtsProducto: TDataSource;
    fdtProductosid: TFDAutoIncField;
    fdtProductosnombre: TStringField;
    fdtProductosPrecioVenta: TFloatField;
    fdtmaesfactura: TFDTable;
    dtsmaesfactura: TDataSource;
    fdtdetafactura: TFDTable;
    dtsdetafactura: TDataSource;
    fdtmaesfacturanumerofact: TFDAutoIncField;
    fdtmaesfacturafecha: TSQLTimeStampField;
    fdtmaesfacturaidcliente: TIntegerField;
    fdtmaesfacturatotal: TFMTBCDField;
    fdtdetafacturaiddetalle: TFDAutoIncField;
    fdtdetafacturaidnumerofact: TIntegerField;
    fdtdetafacturaidproducto: TIntegerField;
    fdtdetafacturacantidad: TIntegerField;
    fdtdetafacturavalor: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure fdtClientesBeforeEdit(DataSet: TDataSet);
    procedure fdtClientesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure habilitarCampos;
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UntFactura;

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  fdcConnection.Connected := false;
  fdcConnection.Params.Values['database']   := 'pedidos';
  fdcConnection.Params.Values['user_name']  := 'sa';
  fdcConnection.Params.Values['password']   := 'sqlserver';
  fdcConnection.Params.Values['server']     := 'localhost';
  fdcConnection.Connected := true;
end;

procedure TDataModule1.fdtClientesBeforeEdit(DataSet: TDataSet);
begin
  with UntFactura.Form1 do
  begin
     habilitarCampos;
  end;
end;

procedure TDataModule1.fdtClientesNewRecord(DataSet: TDataSet);
begin
  with UntFactura.Form1 do
  begin
    habilitarCampos;
  end;
end;

procedure TDataModule1.habilitarCampos;
begin
   with UntFactura.Form1 do
   begin
      if PageControl1.ActivePage = Pedidos then
        DBGrid1.Enabled := true;
   end;
end;

end.
