object fmPrincipal: TfmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 246
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 437
    Height = 246
    Align = alClient
    TabOrder = 0
    object Button1: TButton
      Left = 136
      Top = 179
      Width = 185
      Height = 43
      Caption = 'Sair'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 136
      Top = 48
      Width = 185
      Height = 43
      Caption = 'Entrada'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 136
      Top = 113
      Width = 185
      Height = 43
      Caption = 'Saidas'
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 435
      Height = 41
      Align = alTop
      Caption = 'Sistema Estoque'
      TabOrder = 3
    end
  end
end
