object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Snippets'
  ClientHeight = 152
  ClientWidth = 116
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 94
    Width = 77
    Height = 13
    Caption = 'More to come...'
  end
  object BExBlock: TButton
    Left = 9
    Top = 51
    Width = 97
    Height = 37
    Caption = 'Example block'
    TabOrder = 0
    WordWrap = True
    OnClick = BExBlockClick
  end
  object BExItem: TButton
    Left = 9
    Top = 8
    Width = 97
    Height = 37
    Caption = 'Example item'
    Enabled = False
    TabOrder = 1
    WordWrap = True
  end
end
