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
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 42
    Top = 60
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
    Left = 42
    Top = 85
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
    Left = 42
    Top = 138
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
    Left = 42
    Top = 113
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
  object Label5: TLabel
    Left = 42
    Top = 31
    Width = 132
    Height = 19
    Caption = 'Codigo do Pedido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object txtfilial: TEdit
    Left = 188
    Top = 56
    Width = 61
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    OnKeyDown = txtfilialKeyDown
  end
  object txtproduto: TEdit
    Left = 188
    Top = 83
    Width = 61
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    OnKeyDown = txtprodutoKeyDown
  end
  object txtqtdprod: TEdit
    Left = 188
    Top = 138
    Width = 61
    Height = 21
    NumbersOnly = True
    TabOrder = 4
  end
  object btnlimpar: TButton
    Left = 290
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = btnlimparClick
  end
  object btngerar: TButton
    Left = 26
    Top = 184
    Width = 87
    Height = 25
    Caption = 'Gerar Entrada'
    TabOrder = 6
    OnClick = btngerarClick
  end
  object txtqdtent: TEdit
    Left = 188
    Top = 111
    Width = 61
    Height = 21
    NumbersOnly = True
    TabOrder = 3
  end
  object btnsair: TButton
    Left = 410
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = btnsairClick
  end
  object txtcodped: TEdit
    Left = 188
    Top = 29
    Width = 61
    Height = 21
    Enabled = False
    NumbersOnly = True
    TabOrder = 0
    OnKeyDown = txtprodutoKeyDown
  end
  object btnnovo: TButton
    Left = 188
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 8
    OnClick = btnnovoClick
  end
end
