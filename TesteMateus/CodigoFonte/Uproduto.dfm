object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
    Left = 98
    Top = 59
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 96
    Top = 86
    Width = 50
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label3: TLabel
    Left = 96
    Top = 115
    Width = 60
    Height = 13
    Caption = 'Quantidade:'
  end
  object Label4: TLabel
    Left = 96
    Top = 138
    Width = 59
    Height = 13
    Caption = 'Qtd Reserv:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 41
    Align = alTop
    Caption = 'Produtos'
    TabOrder = 0
    ExplicitLeft = 168
    ExplicitTop = 112
    ExplicitWidth = 185
  end
  object btndel: TButton
    Left = 8
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 1
  end
  object btnnovo: TButton
    Left = 8
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
  end
  object btncancel: TButton
    Left = 8
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 181
    Top = 54
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 181
    Top = 81
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 181
    Top = 135
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 181
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object btnsair: TButton
    Left = 8
    Top = 167
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 8
    OnClick = btnsairClick
  end
end
