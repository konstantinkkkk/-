object Form2: TForm2
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081
  ClientHeight = 255
  ClientWidth = 494
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnActivate = FormActivate
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 315
    Top = 173
    Width = 157
    Height = 15
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 289
    Height = 233
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_org'
        Title.Caption = #8470' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'naim'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        Width = 175
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 315
    Top = 79
    Width = 171
    Height = 66
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 315
    Top = 8
    Width = 171
    Height = 65
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 315
    Top = 194
    Width = 157
    Height = 23
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 360
    Top = 152
  end
  object MainMenu1: TMainMenu
    Left = 392
    Top = 152
    object N1: TMenuItem
      Caption = #1053#1072#1079#1072#1076
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = N2Click
      object N3: TMenuItem
        Caption = #1055#1077#1095#1072#1090#1100
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form3.ADOConnection1
    Parameters = <>
    Left = 312
    Top = 152
  end
  object ADOQuery2: TADOQuery
    Connection = Form3.ADOConnection1
    Parameters = <>
    Left = 440
    Top = 152
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form3.ADOConnection1
    CursorType = ctStatic
    TableName = 'organz'
    Left = 360
    Top = 208
  end
end
