object FormGraph: TFormGraph
  Left = 452
  Height = 200
  Top = 272
  Width = 400
  AlphaBlend = True
  BorderStyle = bsSizeToolWin
  Caption = 'Graph'
  ClientHeight = 200
  ClientWidth = 400
  Color = clWindow
  Constraints.MinHeight = 100
  Constraints.MinWidth = 200
  KeyPreview = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnKeyPress = FormKeyPress
  OnMouseDown = FormMouseDown
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnPaint = FormPaint
  OnResize = FormResize
  ParentFont = True
  LCLVersion = '1.0.14.0'
  object EditMax: TEdit
    Left = 5
    Height = 21
    Top = 11
    Width = 30
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    MaxLength = 5
    OnChange = EditMaxChange
    OnExit = EditMaxExit
    OnKeyPress = EditMaxKeyPress
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object EditMin: TEdit
    Left = 5
    Height = 21
    Top = 176
    Width = 30
    Anchors = [akLeft, akBottom]
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    MaxLength = 5
    OnChange = EditMinChange
    OnExit = EditMaxExit
    OnKeyPress = EditMaxKeyPress
    ParentFont = False
    TabOrder = 1
    Visible = False
  end
end
