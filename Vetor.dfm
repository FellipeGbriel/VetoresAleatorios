object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 472
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 152
    Top = 48
    Width = 314
    Height = 32
    Caption = 'Gerador de vetores aleat'#243'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
  end
  object Label2: TLabel
    Left = 56
    Top = 136
    Width = 120
    Height = 15
    Caption = 'Quantidade de c'#233'lulas:'
  end
  object Edit1: TEdit
    Left = 56
    Top = 157
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 375
    Top = 147
    Width = 75
    Height = 25
    Caption = 'Gerar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object RichEdit1: TRichEdit
    Left = 56
    Top = 216
    Width = 497
    Height = 185
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 223
    Top = 427
    Width = 138
    Height = 25
    Caption = 'Exportar arquivo'
    TabOrder = 3
  end
end
