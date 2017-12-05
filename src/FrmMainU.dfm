object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Entry Purcase Order'
  ClientHeight = 500
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 18
  object LBPrincipal: TLabel
    Left = 24
    Top = 86
    Width = 69
    Height = 18
    Caption = 'Principal'
  end
  object LBLPrincipalName: TDBText
    Left = 130
    Top = 115
    Width = 249
    Height = 14
    DataField = 'PrincipalHoldings'
    DataSource = DSRPrincipal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object LBLNOPO: TLabel
    Left = 24
    Top = 54
    Width = 60
    Height = 18
    Caption = 'NO. PO'
  end
  object LBLCabang: TLabel
    Left = 23
    Top = 147
    Width = 61
    Height = 18
    Caption = 'Cabang'
  end
  object LBLTangalPO: TLabel
    Left = 24
    Top = 184
    Width = 94
    Height = 18
    Caption = 'Tanggal PO'
  end
  object LBLPODItemName: TLabel
    Left = 24
    Top = 224
    Width = 110
    Height = 18
    Caption = 'Nama Barang'
  end
  object LBLPODQTY: TLabel
    Left = 281
    Top = 250
    Width = 57
    Height = 18
    Caption = 'Jumlah'
  end
  object LBLPODUnitName: TLabel
    Left = 448
    Top = 250
    Width = 57
    Height = 18
    Caption = 'Satuan'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 287
    Width = 673
    Height = 120
    DataSource = DSRDistributionBranch
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DisBID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FBDName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPDName'
        Visible = True
      end>
  end
  object ChxPrincipalShow: TCheckBox
    Left = 392
    Top = 87
    Width = 97
    Height = 17
    Caption = 'Tampilkan PT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = ChxPrincipalShowClick
  end
  object EDTPrincipalID: TDBEdit
    Left = 392
    Top = 115
    Width = 97
    Height = 21
    DataField = 'PrincipalID'
    DataSource = DSRPrincipal
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnChange = EDTPrincipalIDChange
  end
  object CBXPrincipalName: TComboBox
    Left = 130
    Top = 83
    Width = 249
    Height = 26
    TabOrder = 3
    OnChange = CBXPrincipalNameChange
  end
  object BTNPOBaru: TBitBtn
    Left = 24
    Top = 4
    Width = 128
    Height = 36
    Action = ACTPOBaru
    Caption = 'B&aru [F1]'
    TabOrder = 4
  end
  object EDTNoPO: TDBEdit
    Left = 130
    Top = 51
    Width = 249
    Height = 26
    DataField = 'PONum'
    DataSource = DSRPO
    TabOrder = 5
  end
  object CBXFDBPOID: TDBLookupComboBox
    Left = 130
    Top = 144
    Width = 249
    Height = 26
    DataField = 'FDBPOID'
    DataSource = DSRPO
    KeyField = 'DisBID'
    ListField = 'FBDName'
    ListSource = DSRDistributionBranch
    TabOrder = 6
  end
  object DTPPODate: TDateTimePicker
    Left = 130
    Top = 179
    Width = 249
    Height = 26
    Date = 43074.605528194440000000
    Time = 43074.605528194440000000
    TabOrder = 7
    OnChange = DTPPODateChange
  end
  object EDTPODate: TDBEdit
    Left = 392
    Top = 179
    Width = 145
    Height = 26
    DataField = 'PODate'
    DataSource = DSRPO
    TabOrder = 8
    Visible = False
  end
  object EDTPOPrinciple: TDBEdit
    Left = 392
    Top = 51
    Width = 137
    Height = 26
    DataField = 'POPrinciple'
    DataSource = DSRPO
    TabOrder = 9
    Visible = False
  end
  object EDTPOBranch: TDBEdit
    Left = 392
    Top = 144
    Width = 137
    Height = 26
    DataField = 'POBranch'
    DataSource = DSRPO
    TabOrder = 10
    Visible = False
  end
  object DBEdit1: TDBEdit
    Left = 360
    Top = 247
    Width = 73
    Height = 26
    TabOrder = 11
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 247
    Width = 241
    Height = 26
    TabOrder = 12
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 511
    Top = 247
    Width = 98
    Height = 26
    TabOrder = 13
  end
  object DBConnection: TFDConnection
    Params.Strings = (
      'Database=TAPPS'
      'DriverID=MySQL'
      'User_Name=bowo'
      'Password=asdf'
      'Server=PC110')
    Connected = True
    LoginPrompt = False
    Left = 664
    Top = 136
  end
  object TBLPrincipal: TFDTable
    Active = True
    IndexFieldNames = 'PrincipalID'
    Connection = DBConnection
    UpdateOptions.UpdateTableName = 'Principal'
    TableName = 'Principal'
    Left = 560
    Top = 56
  end
  object DSRPrincipal: TDataSource
    DataSet = TBLPrincipal
    Left = 560
    Top = 8
  end
  object TBLDistributionBranch: TFDTable
    Active = True
    IndexFieldNames = 'DisBID'
    Connection = DBConnection
    UpdateOptions.UpdateTableName = 'TAPPS.distributionbranch'
    TableName = 'TAPPS.distributionbranch'
    Left = 648
    Top = 64
  end
  object DSRDistributionBranch: TDataSource
    DataSet = TBLDistributionBranch
    Left = 648
    Top = 8
  end
  object TBLPO: TFDTable
    Active = True
    IndexFieldNames = 'POID'
    Connection = DBConnection
    UpdateOptions.UpdateTableName = 'PO'
    TableName = 'PO'
    Left = 584
    Top = 112
  end
  object DSRPO: TDataSource
    DataSet = TBLPO
    Left = 592
    Top = 168
  end
  object ActionList1: TActionList
    Left = 496
    Top = 8
    object ACTPOBaru: TAction
      Caption = 'B&aru [F1]'
      ShortCut = 112
      OnExecute = ACTPOBaruExecute
    end
  end
  object QRYPONumb: TFDQuery
    Connection = DBConnection
    SQL.Strings = (
      
        'SELECT CONCAT(DATE_FORMAT(CURRENT_DATE(),"%Y%m"), LPAD((COUNT(PO' +
        'ID)+1),5,'#39'0'#39')) AS PONumb '
      'FROM `po`'
      'WHERE YEAR(PODate) = DATE_FORMAT(CURRENT_DATE(),"%Y") AND'
      'MONTH(PODate) = DATE_FORMAT(CURRENT_DATE(),"%m");')
    Left = 424
    Top = 16
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 352
    Top = 8
  end
end
