unit FrmMainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls;

type
  TFrmMain = class(TForm)
    LBPrincipal: TLabel;
    DBConnection: TFDConnection;
    TBLPrincipal: TFDTable;
    DSRPrincipal: TDataSource;
    TBLDistributionBranch: TFDTable;
    DSRDistributionBranch: TDataSource;
    DBGrid1: TDBGrid;
    LBLPrincipalName: TDBText;
    ChxPrincipalShow: TCheckBox;
    EDTPrincipalID: TDBEdit;
    TBLPO: TFDTable;
    DSRPO: TDataSource;
    CBXPrincipalName: TComboBox;
    BTNPOBaru: TBitBtn;
    LBLNOPO: TLabel;
    EDTNoPO: TDBEdit;
    LBLCabang: TLabel;
    CBXFDBPOID: TDBLookupComboBox;
    DTPPODate: TDateTimePicker;
    LBLTangalPO: TLabel;
    ActionList1: TActionList;
    EDTPODate: TDBEdit;
    ACTPOBaru: TAction;
    EDTPOPrinciple: TDBEdit;
    EDTPOBranch: TDBEdit;
    LBLPODItemName: TLabel;
    LBLPODQTY: TLabel;
    LBLPODUnitName: TLabel;
    DBEdit1: TDBEdit;
    QRYPONumb: TFDQuery;
    Timer1: TTimer;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure ChxPrincipalShowClick(Sender: TObject);
    procedure EDTPrincipalIDChange(Sender: TObject);
    procedure CBXPrincipalNameChange(Sender: TObject);
    procedure ACTPOBaruExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DTPPODateChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    procedure fillPrincipal;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.fillPrincipal;
begin
  CBXPrincipalName.Clear;
  with TBLPrincipal do
  begin
    First;
    while not Eof do
    begin
      CBXPrincipalName.Items.Add(FieldByName('PrincipalName').AsString);
      Next;
    end;
    First;
    CBXPrincipalName.ItemIndex := FieldByName('PrincipalID').AsInteger-1;
  end;
end;

procedure TFrmMain.Timer1Timer(Sender: TObject);
begin
  if TBLPO.State = dsInsert then
  begin
    QRYPONumb.Active := true;
    EDTNoPO.Text := QRYPONumb.FieldByName('PONumb').AsString;
  end else QRYPONumb.Active := False;
end;

procedure TFrmMain.ACTPOBaruExecute(Sender: TObject);
begin
  fillPrincipal;
  TBLPO.Insert;
  Timer1Timer(Sender);
  DTPPODateChange(Sender);
end;

procedure TFrmMain.Button1Click(Sender: TObject);
begin
  EDTPOBranch.Text := CBXFDBPOID.Text;
  TBLPO.Post;
end;

procedure TFrmMain.CBXPrincipalNameChange(Sender: TObject);
begin
  TBLPrincipal.RecNo := CBXPrincipalName.ItemIndex+1;
  EDTPOPrinciple.Text := CBXPrincipalName.Text;
end;

procedure TFrmMain.ChxPrincipalShowClick(Sender: TObject);
begin
  LBLPrincipalName.Visible := ChxPrincipalShow.Checked;
end;

procedure TFrmMain.DTPPODateChange(Sender: TObject);
begin
  EDTPODate.Text := DateToStr(DTPPODate.Date);
end;

procedure TFrmMain.EDTPrincipalIDChange(Sender: TObject);
begin
  with TBLDistributionBranch do
  begin
    if not filtered then Filtered := True;
    Filter := 'FPDID = '+EDTPrincipalID.Text;
  end;
end;

end.
