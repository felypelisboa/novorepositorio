object fmUEntProd: TfmUEntProd
  Left = 0
  Top = 0
  Caption = 'fmUEntProd'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 58
    Top = 45
    Width = 115
    Height = 19
    Caption = 'Codigo da Filial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 58
    Top = 70
    Width = 140
    Height = 19
    Caption = 'Codigo do Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 290
    Top = 66
    Width = 128
    Height = 19
    Caption = 'Quantidade Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 290
    Top = 41
    Width = 91
    Height = 19
    Caption = 'Qtd Entrada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object txtfilial: TEdit
    Left = 204
    Top = 41
    Width = 61
    Height = 21
    TabOrder = 0
    OnKeyDown = txtfilialKeyDown
  end
  object txtproduto: TEdit
    Left = 204
    Top = 68
    Width = 61
    Height = 21
    TabOrder = 1
    OnKeyDown = txtprodutoKeyDown
  end
  object txtqtdprod: TEdit
    Left = 436
    Top = 66
    Width = 61
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 234
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 58
    Top = 176
    Width = 87
    Height = 25
    Caption = 'Gerar Entrada'
    TabOrder = 4
    OnClick = Button2Click
  end
  object txtqdtent: TEdit
    Left = 436
    Top = 41
    Width = 61
    Height = 21
    TabOrder = 5
  end
end
