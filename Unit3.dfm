object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form3'
  ClientHeight = 151
  ClientWidth = 260
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 47
    Top = 16
    Width = 154
    Height = 15
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' sql servera'
  end
  object Label2: TLabel
    Left = 47
    Top = 66
    Width = 123
    Height = 15
    Caption = #1042#1074#1077#1076#1080#1090#1077' Workstation id'
  end
  object Edit1: TEdit
    Left = 24
    Top = 37
    Width = 217
    Height = 23
    TabOrder = 0
  end
  object Button2: TButton
    Left = 62
    Top = 114
    Width = 139
    Height = 25
    Caption = #1057#1086#1077#1076#1080#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 24
    Top = 87
    Width = 217
    Height = 23
    TabOrder = 2
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=keys;Data Source=DESKTOP-A8F7J9B\MSSQLS' +
      'ERVER01;Use Procedure for Prepare=1;Auto Translate=True;Packet S' +
      'ize=4096;Workstation ID=DESKTOP-A8F7J9B;Use Encryption for Data=' +
      'False;Tag with column collation when possible=False;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 232
    Top = 112
  end
end
