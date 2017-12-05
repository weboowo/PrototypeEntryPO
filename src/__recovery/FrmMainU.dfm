object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Purcase Order Entry'
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
    Left = 32
    Top = 104
    Width = 69
    Height = 18
    Caption = 'Principal'
  end
  object DBText1: TDBText
    Left = 144
    Top = 168
    Width = 25
    Height = 17
    DataField = 'PrincipalID'
    DataSource = DSRPrincipal
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 232
    Width = 617
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
        Title.Alignment = taCenter
        Title.Caption = 'NO'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FBDName'
        Title.Alignment = taRightJustify
        Title.Caption = 'Cabang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FPDName'
        Title.Caption = 'Principal'
        Visible = True
      end>
  end
  object DBComboBox1: TDBComboBox
    Left = 192
    Top = 104
    Width = 145
    Height = 26
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 216
    Top = 184
    Width = 121
    Height = 26
    TabOrder = 2
    Text = 'Edit1'
    OnChange = Edit1Change
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
    Left = 48
    Top = 16
  end
  object TBLPrincipal: TFDTable
    Active = True
    IndexFieldNames = 'PrincipalID'
    Connection = DBConnection
    UpdateOptions.UpdateTableName = 'Principal'
    TableName = 'Principal'
    Left = 272
    Top = 24
  end
  object DSRPrincipal: TDataSource
    DataSet = TBLPrincipal
    Left = 336
    Top = 24
  end
  object TBLDistributionBranch: TFDTable
    Active = True
    Filtered = True
    IndexFieldNames = 'DisBID'
    Connection = DBConnection
    UpdateOptions.UpdateTableName = 'TAPPS.distributionbranch'
    TableName = 'TAPPS.distributionbranch'
    Left = 512
    Top = 24
  end
  object DSRDistributionBranch: TDataSource
    DataSet = TBLDistributionBranch
    Left = 624
    Top = 24
  end
  object TBLBranch: TFDTable
    Connection = DBConnection
    Left = 520
    Top = 88
  end
end
