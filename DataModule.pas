unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TDataModule8 = class(TDataModule)
    SistemaConnection: TFDConnection;
    ClienteTable: TFDQuery;
    FDQueryClientes: TFDQuery;
    ClientDataSetClientes: TClientDataSet;
    DataSourceClientes: TDataSource;
    ArticuloTable: TFDQuery;
    DataSourceArticulos: TDataSource;
    ClientDataSetArticulos: TClientDataSet;
    FDQueryArticulos: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule8: TDataModule8;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
