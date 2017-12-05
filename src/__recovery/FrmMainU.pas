unit FrmMainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmMain = class(TForm)
    LBPrincipal: TLabel;
    DBConnection: TFDConnection;
    TBLPrincipal: TFDTable;
    DSRPrincipal: TDataSource;
    TBLDistributionBranch: TFDTable;
    DSRDistributionBranch: TDataSource;
    DBGrid1: TDBGrid;
    TBLBranch: TFDTable;
    DBText1: TDBText;
    DBComboBox1: TDBComboBox;
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.Edit1Change(Sender: TObject);
begin
  TBLBranch.Filtered := True;
  TBLBranch.Filter := 'FPDID = '+Edit1.Text;
end;

end.
