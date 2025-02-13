object FrmMainMenu: TFrmMainMenu
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 600
  ClientWidth = 800
  Color = 15790320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      800
      40)
    object imgHeader: TImage
      Left = 0
      Top = 0
      Width = 800
      Height = 40
      Align = alClient
      ExplicitLeft = 344
      ExplicitTop = -32
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object imgClose: TImage
      Left = 759
      Top = 5
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Center = True
      Proportional = True
      Transparent = True
      OnClick = imgCloseClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 800
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    Color = 15790320
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      800
      105)
    object lblServer: TLabel
      Left = 7
      Top = 6
      Width = 22
      Height = 13
      Caption = 'Port'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7947776
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblClients: TLabel
      Left = 7
      Top = 52
      Width = 35
      Height = 13
      Caption = 'Clients'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7947776
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMessage: TLabel
      Left = 313
      Top = 52
      Width = 46
      Height = 13
      Caption = 'Message'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7947776
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtServer: TEdit
      Left = 7
      Top = 25
      Width = 620
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = '8080'
    end
    object btnStop: TButton
      Left = 714
      Top = 23
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Stop'
      TabOrder = 2
      OnClick = btnStopClick
    end
    object btnStart: TButton
      Left = 633
      Top = 23
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Start'
      TabOrder = 1
      OnClick = btnStartClick
    end
    object cbxClients: TComboBox
      Left = 7
      Top = 71
      Width = 300
      Height = 21
      Style = csDropDownList
      TabOrder = 3
    end
    object edtMessage: TEdit
      Left = 313
      Top = 71
      Width = 395
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
    end
    object btnSend: TButton
      Left = 714
      Top = 69
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Send'
      TabOrder = 5
      OnClick = btnSendClick
    end
  end
  object ListBoxLog: TListBox
    AlignWithMargins = True
    Left = 7
    Top = 145
    Width = 786
    Height = 448
    Margins.Left = 7
    Margins.Top = 0
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alClient
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7947776
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemHeight = 17
    ParentFont = False
    TabOrder = 2
  end
end
