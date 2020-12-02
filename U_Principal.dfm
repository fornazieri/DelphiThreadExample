object F_Principal: TF_Principal
  Left = 0
  Top = 0
  Caption = 'Numeros Primos Thread'
  ClientHeight = 195
  ClientWidth = 266
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
    Left = 16
    Top = 24
    Width = 94
    Height = 13
    Caption = 'Informe um numero'
  end
  object Label2: TLabel
    Left = 16
    Top = 70
    Width = 231
    Height = 13
    Caption = 'Digite um texto enquanto a Thread '#233' executada'
  end
  object edtNumero: TEdit
    Left = 16
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnCalcular: TButton
    Left = 143
    Top = 41
    Width = 106
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = btnCalcularClick
  end
  object memoTextoLivre: TMemo
    Left = 16
    Top = 89
    Width = 233
    Height = 89
    TabOrder = 2
  end
end
