object FormMain: TFormMain
  Left = 352
  Height = 275
  Top = 244
  Width = 520
  ActiveControl = ListViewTable
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'LinX - Simply Linpack'
  ClientHeight = 256
  ClientWidth = 520
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  KeyPreview = True
  Menu = MainMenu
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  ShowHint = True
  LCLVersion = '1.0.14.0'
  object LabelMem: TLabel
    Left = 169
    Height = 14
    Hint = 'Amount of memory to be used'
    Top = 8
    Width = 70
    Anchors = [akTop]
    Caption = 'Memory (MiB):'
    ParentColor = False
  end
  object LabelRuns: TLabel
    Left = 379
    Height = 14
    Hint = 'Testing will stop either after the specified number of times or after a specified time interval '
    Top = 8
    Width = 24
    Anchors = [akTop, akRight]
    Caption = 'Run:'
    ParentColor = False
  end
  object LabelPS: TLabel
    Left = 5
    Height = 14
    Hint = 'Affects calculations'' complexity and duration (set higher values for more stress)'
    Top = 8
    Width = 64
    Caption = 'Problem size:'
    ParentColor = False
  end
  object SpeedButtonAllMem: TSpeedButton
    Left = 300
    Height = 23
    Hint = 'Click to always use all available memory (maximum stress)'
    Top = 4
    Width = 30
    AllowAllUp = True
    Anchors = [akTop]
    Caption = 'All'
    Flat = True
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    GroupIndex = 1
    Layout = blGlyphTop
    Margin = 3
    NumGlyphs = 0
    OnClick = SpeedButtonAllMemClick
    ParentFont = False
  end
  object SpeedButtonStart: TSpeedButton
    Left = 5
    Height = 25
    Hint = 'Starts the testing process (Enter)'
    Top = 30
    Width = 75
    Caption = 'Start'
    NumGlyphs = 0
    OnClick = SpeedButtonStartClick
  end
  object SpeedButtonStop: TSpeedButton
    Left = 440
    Height = 25
    Hint = 'Stops the testing immediately (Esc)'
    Top = 30
    Width = 75
    Anchors = [akTop, akRight]
    Caption = 'Stop'
    Enabled = False
    NumGlyphs = 0
    OnClick = SpeedButtonStopClick
  end
  object ShapeBase: TShape
    Left = 85
    Height = 23
    Top = 31
    Width = 350
    Anchors = [akTop, akLeft, akRight]
    Brush.Color = 15527662
    Pen.Color = clBtnShadow
    Shape = stRoundRect
  end
  object ShapeBar: TShape
    Left = 87
    Height = 19
    Top = 33
    Width = 346
    Anchors = [akTop, akLeft, akRight]
    Brush.Color = 13621203
    Pen.Color = 11976122
  end
  object LabelStatus: TLabel
    Left = 85
    Height = 18
    Top = 36
    Width = 350
    Alignment = taCenter
    Anchors = [akTop, akLeft, akRight]
    AutoSize = False
    ParentColor = False
    PopupMenu = PopupMenuSettings
    OnClick = Panel1Click
    OnDblClick = Panel1DblClick
  end
  object StatusBar: TStatusBar
    Left = 0
    Height = 20
    Top = 236
    Width = 520
    Panels = <    
      item
        Alignment = taCenter
        Width = 55
      end    
      item
        Alignment = taCenter
        Width = 45
      end    
      item
        Alignment = taCenter
        Width = 60
      end    
      item
        Alignment = taCenter
        Width = 110
      end    
      item
        Alignment = taCenter
        Width = 210
      end    
      item
        Alignment = taCenter
        Width = 35
      end>
    SimplePanel = False
    SizeGrip = False
    OnClick = StatusBarClick
    OnDblClick = StatusBarDblClick
  end
  object ComboBoxPS: TComboBox
    Left = 74
    Height = 21
    Hint = 'Select a value from drop-down list or key in directly'
    Top = 5
    Width = 60
    ItemHeight = 13
    MaxLength = 5
    OnChange = ComboBoxPSChange
    OnCloseUp = ComboBoxPSCloseUp
    TabOrder = 0
    Text = '10000'
  end
  object MemoLog: TMemo
    Cursor = crArrow
    Left = 5
    Height = 171
    Top = 60
    Width = 510
    Anchors = [akTop, akLeft, akRight, akBottom]
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
    Visible = False
    WordWrap = False
  end
  object ComboBoxMem: TComboBox
    Left = 245
    Height = 21
    Hint = 'Select a value from drop-down list or key in directly '
    Top = 5
    Width = 55
    Anchors = [akTop]
    ItemHeight = 13
    MaxLength = 5
    OnChange = ComboBoxMemChange
    OnCloseUp = ComboBoxMemCloseUp
    TabOrder = 1
    Text = '1024'
  end
  object ComboBoxRuns: TComboBox
    Left = 405
    Height = 21
    Hint = 'Select a value from drop-down list or key in directly'
    Top = 5
    Width = 50
    Anchors = [akTop, akRight]
    ItemHeight = 13
    ItemIndex = 2
    Items.Strings = (
      '3'
      '5'
      '10'
      '15'
      '20'
      '25'
      '50'
      '75'
      '100'
      '150'
      '200'
      '250'
      '300'
      '500'
    )
    MaxLength = 5
    OnChange = ComboBoxRunsChange
    OnCloseUp = ComboBoxRunsChange
    TabOrder = 2
    Text = '10'
  end
  object ListViewTable: TListView
    Left = 0
    Height = 175
    Top = 61
    Width = 520
    Anchors = [akTop, akLeft, akRight, akBottom]
    BorderStyle = bsNone
    Columns = <    
      item
        Caption = '#'
        MaxWidth = 30
        MinWidth = 30
        Width = 30
      end    
      item
        Alignment = taCenter
        Caption = 'Size'
        MaxWidth = 50
        MinWidth = 50
      end    
      item
        Alignment = taCenter
        Caption = 'LDA'
        MaxWidth = 50
        MinWidth = 50
      end    
      item
        Alignment = taCenter
        Caption = 'Align'
        MaxWidth = 40
        MinWidth = 40
        Width = 40
      end    
      item
        Alignment = taCenter
        Caption = 'Time'
        MaxWidth = 65
        MinWidth = 65
        Width = 65
      end    
      item
        Alignment = taCenter
        Caption = 'GFlops'
        MaxWidth = 70
        MinWidth = 70
        Width = 70
      end    
      item
        Alignment = taCenter
        Caption = 'Residual'
        MaxWidth = 95
        MinWidth = 95
        Width = 95
      end    
      item
        Alignment = taCenter
        Caption = 'Residual (norm.)'
        MaxWidth = 98
        MinWidth = 98
        Width = 98
      end>
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    GridLines = True
    HideSelection = False
    ParentFont = False
    ReadOnly = True
    RowSelect = True
    TabStop = False
    TabOrder = 3
    ViewStyle = vsReport
  end
  object ComboBoxTimesMinutes: TComboBox
    Left = 460
    Height = 21
    Top = 5
    Width = 55
    Anchors = [akTop, akRight]
    ItemHeight = 13
    ItemIndex = 0
    Items.Strings = (
      'times'
      'minutes'
    )
    OnChange = ComboBoxRunsChange
    OnKeyPress = ComboBoxTimesMinutesKeyPress
    Style = csDropDownList
    TabOrder = 6
    Text = 'times'
  end
  object TimerMain: TTimer
    Enabled = False
    Interval = 985
    OnTimer = TimerMainTimer
    left = 12
    top = 184
  end
  object MainMenu: TMainMenu
    left = 472
    top = 96
    object MIFile: TMenuItem
      Caption = '&File'
      object MIScreenshot: TMenuItem
        Caption = 'Save Screenshot'
        ShortCut = 116
        OnClick = MIScreenshotClick
      end
      object MILog: TMenuItem
        Caption = 'Save Text Log'
        Enabled = False
        ShortCut = 117
        OnClick = MILogClick
      end
      object MISep1: TMenuItem
        Caption = '-'
      end
      object MIExit: TMenuItem
        Caption = 'Exit'
        OnClick = MIExitClick
      end
    end
    object MISettings: TMenuItem
      Caption = '&Settings'
      ImageIndex = 1
      ShortCut = 113
      OnClick = MISettingsClick
    end
    object MIGraphs: TMenuItem
      Caption = '&Graphs'
      Enabled = False
      OnClick = MIDisplayClick
    end
    object MIAbout: TMenuItem
      Caption = '? '
      ShortCut = 112
      OnClick = MIAboutClick
    end
  end
  object TrayIcon: TTrayIcon
    PopUpMenu = PopupMenuTray
    OnClick = TrayIconClick
    OnDblClick = TMMinimizeClick
    left = 472
    top = 184
  end
  object PopupMenuTray: TPopupMenu
    OnPopup = PopupMenuTrayPopup
    left = 400
    top = 184
    object TMMinimize: TMenuItem
      Caption = 'Minimize'
      Default = True
      OnClick = TMMinimizeClick
    end
    object TMSep1: TMenuItem
      Caption = '-'
    end
    object TMStart: TMenuItem
      Caption = 'Start'
      OnClick = TMStartClick
    end
    object TMStop: TMenuItem
      Caption = 'Stop'
      Enabled = False
      OnClick = TMStopClick
    end
    object TMSep2: TMenuItem
      Caption = '-'
    end
    object TMExit: TMenuItem
      Caption = 'Exit'
      OnClick = MIExitClick
    end
  end
  object PopupMenuSettings: TPopupMenu
    OnPopup = PopupMenuSettingsPopup
    left = 400
    top = 96
    object SMFullSettings: TMenuItem
      Caption = 'All Settings…'
      OnClick = MISettingsClick
    end
    object SMSep4: TMenuItem
      Caption = '-'
    end
    object SM32: TMenuItem
      AutoCheck = True
      Caption = '32-bit'
      RadioItem = True
      OnClick = SM32Click
    end
    object SM64: TMenuItem
      AutoCheck = True
      Caption = '64-bit'
      RadioItem = True
      OnClick = SM32Click
    end
    object SMSep1: TMenuItem
      Caption = '-'
    end
    object SMThreads: TMenuItem
      Caption = 'Threads'
      OnClick = SMThreadsClick
    end
    object SMSep2: TMenuItem
      Caption = '-'
    end
    object SMStopOnError: TMenuItem
      AutoCheck = True
      Caption = 'Stop On Error'
      OnClick = SMStopOnErrorClick
    end
    object SMSavelog: TMenuItem
      AutoCheck = True
      Caption = 'Auto-save Log'
      OnClick = SMSavelogClick
    end
    object SMSounds: TMenuItem
      AutoCheck = True
      Caption = 'Sounds'
      OnClick = SMSoundsClick
    end
    object SMTrayIcon: TMenuItem
      AutoCheck = True
      Caption = 'Tray Icon'
      OnClick = SMTrayIconClick
    end
  end
end
