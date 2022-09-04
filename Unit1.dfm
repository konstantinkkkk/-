object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1057#1087#1080#1089#1086#1082' '#1082#1083#1102#1095#1077#1081
  ClientHeight = 428
  ClientWidth = 998
  Color = clGrayText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnActivate = FormActivate
  OnClose = FormClose
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 7
    Top = 8
    Width = 983
    Height = 257
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 335
    Top = 283
    Width = 242
    Height = 137
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 14
      Width = 52
      Height = 15
      Caption = #8470' '#1082#1083#1102#1095#1072
    end
    object Button3: TButton
      Left = 71
      Top = 95
      Width = 105
      Height = 34
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 16
      Top = 56
      Width = 97
      Height = 33
      Caption = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 119
      Top = 56
      Width = 106
      Height = 33
      Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 2
      OnClick = Button5Click
    end
    object Edit1: TEdit
      Left = 16
      Top = 27
      Width = 209
      Height = 23
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 283
    Width = 321
    Height = 137
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 2
    object Label2: TLabel
      Left = 40
      Top = 42
      Width = 88
      Height = 15
      Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
    end
    object Label1: TLabel
      Left = 61
      Top = 13
      Width = 67
      Height = 15
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
    end
    object Label4: TLabel
      Left = 2
      Top = 71
      Width = 126
      Height = 15
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    end
    object DateTimePicker2: TDateTimePicker
      Left = 134
      Top = 42
      Width = 179
      Height = 23
      Date = 44805.000000000000000000
      Time = 0.836245995371427900
      TabOrder = 0
    end
    object CheckBox1: TCheckBox
      Left = 61
      Top = 100
      Width = 186
      Height = 17
      Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072' '#1082#1083#1102#1095#1072
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 134
      Top = 13
      Width = 179
      Height = 23
      Date = 44805.000000000000000000
      Time = 0.836093206016812500
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 134
      Top = 71
      Width = 179
      Height = 23
      TabOrder = 3
    end
    object Button1: TButton
      Left = 208
      Top = 100
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 583
    Top = 283
    Width = 410
    Height = 137
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 3
    object RadioButton3: TRadioButton
      Left = 16
      Top = 44
      Width = 130
      Height = 17
      Caption = #1055#1086' '#1079#1085#1072#1095#1077#1085#1080#1102' '#1082#1083#1102#1095#1072
      TabOrder = 0
    end
    object RadioButton4: TRadioButton
      Left = 16
      Top = 73
      Width = 153
      Height = 17
      Caption = #1054#1090#1084#1077#1085#1072' '#1092#1080#1083#1100#1090#1088#1080#1094#1080#1080
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 200
      Top = 44
      Width = 201
      Height = 23
      TabOrder = 2
    end
    object Button2: TButton
      Left = 16
      Top = 96
      Width = 121
      Height = 33
      Caption = #1054#1090#1092#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100
      TabOrder = 3
      OnClick = Button2Click
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 21
      Width = 178
      Height = 17
      Caption = #1055#1086' '#1085#1072#1079#1074#1072#1085#1080#1102' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 200
      Top = 15
      Width = 201
      Height = 23
      TabOrder = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 472
    Top = 256
  end
  object MainMenu1: TMainMenu
    Left = 688
    Top = 240
    object N1: TMenuItem
      Caption = #1057#1087#1080#1089#1086#1082' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
      OnClick = N2Click
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Form3.ADOConnection1
    Parameters = <>
    Left = 392
    Top = 256
  end
  object ADOQuery2: TADOQuery
    Connection = Form3.ADOConnection1
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'select * from organz')
    Left = 280
    Top = 272
  end
  object ADOTable1: TADOTable
    Connection = Form3.ADOConnection1
    TableName = 'organz'
    Left = 168
    Top = 272
  end
end
