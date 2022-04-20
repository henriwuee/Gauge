object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'MenuGauge'
  ClientHeight = 613
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gBarra1: TGauge
    Left = 96
    Top = 48
    Width = 649
    Height = 57
    ForeColor = clRed
    Progress = 0
    ShowText = False
  end
  object gBarra2: TGauge
    Left = 680
    Top = 104
    Width = 65
    Height = 385
    ForeColor = clRed
    Kind = gkVerticalBar
    Progress = 0
    ShowText = False
  end
  object gBarra3: TGauge
    Left = 96
    Top = 488
    Width = 649
    Height = 57
    ForeColor = clRed
    Progress = 0
    ShowText = False
  end
  object gBarra4: TGauge
    Left = 96
    Top = 104
    Width = 65
    Height = 385
    ForeColor = clRed
    Kind = gkVerticalBar
    Progress = 0
    ShowText = False
  end
  object btnHorario: TButton
    Left = 200
    Top = 136
    Width = 137
    Height = 41
    Caption = 'Hor'#225'rio'
    TabOrder = 0
    OnClick = btnHorarioClick
  end
  object btnAntiHorario: TButton
    Left = 200
    Top = 216
    Width = 137
    Height = 41
    Caption = 'Anti-hor'#225'rio'
    TabOrder = 1
    OnClick = btnAntiHorarioClick
  end
  object btnLoop: TButton
    Left = 200
    Top = 296
    Width = 137
    Height = 41
    Caption = 'Loop'
    TabOrder = 2
    OnClick = btnLoopClick
  end
  object edtVoltas: TEdit
    Left = 343
    Top = 296
    Width = 26
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
end
