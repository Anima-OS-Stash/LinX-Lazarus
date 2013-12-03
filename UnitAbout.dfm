object FormAbout: TFormAbout
  Left = 460
  Height = 250
  Top = 344
  Width = 350
  BorderStyle = bsToolWindow
  Caption = 'About LinX'
  ClientHeight = 250
  ClientWidth = 350
  Color = clBtnFace
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  ParentFont = True
  Position = poMainFormCenter
  ShowHint = True
  LCLVersion = '1.0.14.0'
  object LabelFacts: TLabel
    Left = 5
    Height = 105
    Top = 140
    Width = 340
    Alignment = taCenter
    AutoSize = False
    ParentColor = False
    Visible = False
    WordWrap = True
  end
  object LabelInfo: TLabel
    Left = 5
    Height = 90
    Top = 37
    Width = 340
    Alignment = taCenter
    AutoSize = False
    ParentColor = False
    Visible = False
    WordWrap = True
  end
  object LabelDiscl: TLabel
    Left = 5
    Height = 51
    Top = 137
    Width = 90
    Alignment = taCenter
    AutoSize = False
    Caption = 'This software is provided «as-is». Use it at your own risk.'
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object LabelEMail: TLabel
    Left = 105
    Height = 14
    Top = 135
    Width = 33
    Caption = 'E-Mail:'
    ParentColor = False
  end
  object LabelOversLink: TLabel
    Left = 105
    Height = 14
    Hint = 'http://forums.overclockers.ru/viewtopic.php?t=272642'
    Top = 175
    Width = 209
    Caption = '??????? ????? ?????????? ?? Overclockers.ru'
    Font.Color = 8866336
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
    OnClick = LabelOversLinkClick
    OnMouseEnter = LabelsMouseEnter
    OnMouseLeave = LabelsMouseLeave
  end
  object LabelXSLink: TLabel
    Left = 105
    Height = 14
    Hint = 'http://www.xtremesystems.org/forums/showthread.php?t=201670'
    Top = 155
    Width = 230
    Caption = 'English discussion thread at XtremeSystems.org'
    Font.Color = 8866336
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
    OnClick = LabelXSLinkClick
    OnMouseEnter = LabelsMouseEnter
    OnMouseLeave = LabelsMouseLeave
  end
  object LabelLin: TLabel
    Left = 5
    Height = 90
    Hint = 'LinX'
    Top = 41
    Width = 60
    Alignment = taCenter
    AutoSize = False
    Caption = 'Lin'
    Font.Color = 10773812
    Font.Height = -45
    Font.Name = 'Arial'
    Layout = tlCenter
    ParentColor = False
    ParentFont = False
  end
  object LabelX: TLabel
    Left = 65
    Height = 90
    Hint = 'LinX'
    Top = 41
    Width = 29
    Alignment = taCenter
    AutoSize = False
    Caption = 'X'
    Font.Color = 31221
    Font.Height = -45
    Font.Name = 'Arial'
    Layout = tlCenter
    ParentColor = False
    ParentFont = False
  end
  object LabelThanks1: TLabel
    Left = 5
    Height = 14
    Top = 200
    Width = 322
    Caption = 'Special thanks to Right from Overclockers.ru for AMD compatibility.'
    ParentColor = False
  end
  object LabelThanks2: TLabel
    Left = 5
    Height = 30
    Top = 215
    Width = 340
    AutoSize = False
    Caption = 'Thanks to everybody who helps improve LinX for their suggestions and bug reports, and especially to my friends, SqeptiQ, Winkle and YaK.'
    ParentColor = False
    WordWrap = True
  end
  object LabelIntel1: TLabel
    Left = 105
    Height = 14
    Top = 55
    Width = 168
    Caption = 'Uses Intel® Math Kernel Library —'
    ParentColor = False
  end
  object LabelIntel2: TLabel
    Left = 105
    Height = 14
    Top = 70
    Width = 156
    Caption = 'Copyright © Intel® Corporation'
    ParentColor = False
  end
  object LabelLinpackLink: TLabel
    Left = 278
    Height = 14
    Hint = 'http://www.intel.com/cd/software/products/asmo-na/eng/266857.htm'
    Top = 54
    Width = 36
    Caption = 'Linpack'
    Font.Color = 8866336
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
    OnClick = LabelLinpackLinkClick
    OnMouseEnter = LabelsMouseEnter
    OnMouseLeave = LabelsMouseLeave
  end
  object LabelMe: TLabel
    Left = 105
    Height = 14
    Top = 35
    Width = 192
    Caption = 'Author: Alexander Gusev a.k.a. Dua|ist'
    ParentColor = False
  end
  object LabelPNG: TLabel
    Left = 105
    Height = 14
    Top = 90
    Width = 208
    Caption = 'No PNG support - Lazarus Port by Xfennec.'
    ParentColor = False
  end
  object SpeedButtonInfo: TSpeedButton
    Left = 5
    Height = 25
    Top = 5
    Width = 75
    Caption = 'Info'
    GroupIndex = 1
    NumGlyphs = 0
    OnClick = SpeedButtonInfoClick
  end
  object SpeedButtonAbout: TSpeedButton
    Left = 80
    Height = 25
    Top = 5
    Width = 75
    Caption = 'About'
    GroupIndex = 1
    NumGlyphs = 0
    OnClick = SpeedButtonAboutClick
  end
  object SpeedButtonReadMe: TSpeedButton
    Left = 165
    Height = 25
    Top = 5
    Width = 75
    Caption = 'ReadMe…'
    NumGlyphs = 0
    OnClick = SpeedButtonReadMeClick
  end
  object LabelVersion: TLabel
    Left = 245
    Height = 13
    Top = 12
    Width = 100
    Alignment = taRightJustify
    AutoSize = False
    Font.Color = clGrayText
    Font.Height = -11
    Font.Name = 'Tahoma'
    ParentColor = False
    ParentFont = False
  end
  object EditEMailLink: TEdit
    Left = 140
    Height = 21
    Top = 132
    Width = 130
    Alignment = taCenter
    Color = clBtnFace
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Text = 'sanekgusev@gmail.com'
  end
end
