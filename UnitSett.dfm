object FormSett: TFormSett
  Left = 423
  Height = 275
  Top = 259
  Width = 395
  BorderStyle = bsToolWindow
  Caption = 'Settings'
  ClientHeight = 275
  ClientWidth = 395
  Color = clBtnFace
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  ParentFont = True
  Position = poMainFormCenter
  ShowHint = True
  LCLVersion = '1.0.14.0'
  object ButtonOK: TSpeedButton
    Left = 120
    Height = 25
    Hint = 'Enter'
    Top = 245
    Width = 75
    Caption = 'OK'
    NumGlyphs = 0
    OnClick = ButtonOKClick
  end
  object ButtonCancel: TSpeedButton
    Left = 200
    Height = 25
    Hint = 'Esc'
    Top = 245
    Width = 75
    Caption = 'Cancel'
    NumGlyphs = 0
    OnClick = ButtonCancelClick
  end
  object PanelLinpack: TPanel
    Left = 5
    Height = 165
    Top = 5
    Width = 190
    BevelOuter = bvNone
    ClientHeight = 165
    ClientWidth = 190
    Font.Color = clGrayText
    Font.Height = -11
    Font.Name = 'Tahoma'
    FullRepaint = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Height = 14
      Hint = 'Here you can change the number of threads Linpack creates. This is also the number of cores that will be used'
      Top = 43
      Width = 95
      Caption = 'Number of threads:'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Height = 14
      Hint = 'Arrays of data during execution of Linpack will be aligned to this value. 4 is optimal, 0 means no alignment'
      Top = 93
      Width = 103
      Caption = 'Data Alignment (KiB):'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 5
      Height = 14
      Hint = '64-bit Linpack is more stressful than 32-bit one and has no memory limitations. Consider using it when on a 64-bit OS'
      Top = 21
      Width = 31
      Caption = 'Mode:'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 5
      Height = 14
      Hint = 'Linpack''s priority level. Lowering this value will make the system more â€žresponsiveâ€œ during testing. Values higher than Normal are not recommended'
      Top = 68
      Width = 65
      Caption = 'Priority class:'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Height = 1
      Hint = 'This is the maximum Problem Size suitable for 32-bit Linpack (found empirically). Change it only if you have problems starting Linpack'
      Top = 118
      Width = 1
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 5
      Height = 14
      Hint = 'This is how much physical memory will be left for OS'' needs when using all available memory. Don''t set this too low'
      Top = 143
      Width = 104
      Caption = 'Memory for OS (MiB):'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentColor = False
      ParentFont = False
    end
    object CBPriority: TComboBox
      Left = 70
      Height = 21
      Top = 65
      Width = 115
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ItemHeight = 13
      ItemIndex = 2
      Items.Strings = (
        'Idle'
        'Below normal'
        'Normal'
        'Above normal'
        'High'
        'Real-time'
      )
      ParentFont = False
      Style = csDropDownList
      TabOrder = 4
      Text = 'Normal'
    end
    object EditThreads: TEdit
      Left = 150
      Height = 21
      Top = 40
      Width = 19
      Alignment = taCenter
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      MaxLength = 3
      ParentFont = False
      TabOrder = 2
      Text = '1'
    end
    object EditDA: TEdit
      Left = 150
      Height = 21
      Top = 90
      Width = 19
      Alignment = taCenter
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      MaxLength = 2
      ParentFont = False
      TabOrder = 5
      Text = '4'
    end
    object RB32: TRadioButton
      Left = 70
      Height = 17
      Top = 20
      Width = 48
      Caption = '32-bit'
      Font.Color = clGrayText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 0
    end
    object RB64: TRadioButton
      Left = 135
      Height = 17
      Top = 20
      Width = 48
      Caption = '64-bit'
      Font.Color = clGrayText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 1
    end
    object UpDownThreads: TUpDown
      Left = 169
      Height = 21
      Top = 40
      Width = 16
      Associate = EditThreads
      Min = 1
      Max = 255
      Position = 1
      TabOrder = 3
      Wrap = False
    end
    object UpDownDA: TUpDown
      Left = 169
      Height = 21
      Top = 90
      Width = 16
      Associate = EditDA
      Min = 0
      Max = 64
      Position = 4
      TabOrder = 6
      Wrap = False
    end
    object EditLin32Max: TEdit
      Left = 145
      Height = 21
      Top = 115
      Width = 40
      Alignment = taCenter
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      MaxLength = 5
      ParentFont = False
      TabOrder = 7
    end
    object EditMemForOS: TEdit
      Left = 145
      Height = 21
      Top = 140
      Width = 40
      Alignment = taCenter
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      MaxLength = 3
      ParentFont = False
      TabOrder = 8
    end
  end
  object PanelLinX: TPanel
    Left = 200
    Height = 165
    Top = 5
    Width = 190
    BevelOuter = bvNone
    ClientHeight = 165
    ClientWidth = 190
    Font.Color = clGrayText
    Font.Height = -11
    Font.Name = 'Tahoma'
    FullRepaint = False
    ParentFont = False
    TabOrder = 1
    object CheckBoxGlass: TCheckBox
      Left = 5
      Height = 17
      Hint = 'When checked, Aero glass will be extended to windows'' client area'
      Top = 120
      Width = 138
      Caption = 'Extend glass (Aero only)'
      Checked = True
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
    object CheckBoxIcon: TCheckBox
      Left = 5
      Height = 17
      Hint = 'When checked, tray icon will be displayed and LinX will be minimized to tray'
      Top = 80
      Width = 64
      Caption = 'Tray icon'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 3
    end
    object CheckBoxSounds: TCheckBox
      Left = 5
      Height = 17
      Hint = 'When checked, LinX will play corresponding sounds upon error/successful pass'
      Top = 60
      Width = 55
      Caption = 'Sounds'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 2
    end
    object CheckBoxStop: TCheckBox
      Left = 5
      Height = 17
      Hint = 'When checked, testing will stop once an error is detected (recommended)'
      Top = 20
      Width = 84
      Caption = 'Stop on error'
      Checked = True
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      State = cbChecked
      TabOrder = 0
    end
    object CheckBoxLog: TCheckBox
      Left = 5
      Height = 17
      Hint = 'When checked, LinX will automatically save output log after every single test'
      Top = 40
      Width = 87
      Caption = 'Auto-save log'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 1
    end
    object CheckBoxFilenames: TCheckBox
      Left = 5
      Height = 17
      Hint = 'When checked, all screenshots and logs will have date and time appended to their filenames'
      Top = 100
      Width = 126
      Caption = 'Date/time in filenames'
      Checked = True
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object CheckBoxShowHints: TCheckBox
      Left = 5
      Height = 17
      Hint = 'When checked, show pop-up hints, just like this one'
      Top = 140
      Width = 72
      Caption = 'Show hints'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 6
    end
  end
  object PanelExtApps: TPanel
    Left = 5
    Height = 65
    Top = 175
    Width = 385
    BevelOuter = bvNone
    ClientHeight = 65
    ClientWidth = 385
    Font.Color = clGrayText
    Font.Height = -11
    Font.Name = 'Tahoma'
    FullRepaint = False
    ParentFont = False
    TabOrder = 2
    object LabelGraphs: TLabel
      Left = 5
      Height = 14
      Hint = 'Select, what graphs to create during testing'
      Top = 45
      Width = 39
      Caption = 'Graphs:'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentColor = False
      ParentFont = False
    end
    object CheckBoxTemp: TCheckBox
      Left = 200
      Height = 17
      Hint = 'When checked, testing will stop if CPU temp exceeds the specified one'
      Top = 20
      Width = 139
      Caption = 'Maximum allowed T (°C):'
      Enabled = False
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 3
    end
    object EditTemp: TEdit
      Left = 340
      Height = 21
      Top = 18
      Width = 24
      Alignment = taCenter
      Enabled = False
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      MaxLength = 3
      ParentFont = False
      TabOrder = 4
      Text = '75'
    end
    object RBEverest: TRadioButton
      Left = 60
      Height = 17
      Top = 20
      Width = 57
      Caption = 'Everest'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      OnClick = RBEverestClick
      ParentFont = False
      TabOrder = 1
    end
    object RBNone: TRadioButton
      Left = 5
      Height = 17
      Top = 20
      Width = 45
      Caption = 'None'
      Checked = True
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      OnClick = RBNoneClick
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object RBSpeedfan: TRadioButton
      Left = 125
      Height = 17
      Top = 20
      Width = 66
      Caption = 'Speedfan'
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      OnClick = RBEverestClick
      ParentFont = False
      TabOrder = 2
    end
    object UpDownTemp: TUpDown
      Left = 364
      Height = 21
      Top = 18
      Width = 16
      Associate = EditTemp
      Enabled = False
      Min = 0
      Max = 125
      Position = 75
      TabOrder = 5
      Wrap = False
    end
    object CheckBoxCPUTemp: TCheckBox
      Left = 60
      Height = 17
      Top = 45
      Width = 69
      Caption = 'CPU Temp'
      Enabled = False
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 6
    end
    object CheckBoxCPUFan: TCheckBox
      Left = 150
      Height = 17
      Top = 45
      Width = 61
      Caption = 'CPU Fan'
      Enabled = False
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 7
    end
    object CheckBoxCPUVcore: TCheckBox
      Left = 240
      Height = 17
      Top = 45
      Width = 70
      Caption = 'CPU Vcore'
      Enabled = False
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 8
    end
    object CheckBox12V: TCheckBox
      Left = 330
      Height = 17
      Top = 45
      Width = 49
      Caption = '+12 V'
      Enabled = False
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      ParentFont = False
      TabOrder = 9
    end
  end
end
