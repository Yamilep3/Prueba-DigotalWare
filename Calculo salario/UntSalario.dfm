object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Salario empleado semanal'
  ClientHeight = 273
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 499
    Height = 273
    Align = alClient
    TabOrder = 0
    ExplicitTop = -8
    ExplicitWidth = 506
    object Label1: TLabel
      Left = 56
      Top = 40
      Width = 87
      Height = 13
      Caption = 'Nombre empledo: '
    end
    object Label2: TLabel
      Left = 56
      Top = 80
      Width = 87
      Height = 13
      Caption = 'Horas trabajadas:'
    end
    object Label3: TLabel
      Left = 56
      Top = 117
      Width = 98
      Height = 13
      Caption = 'Valor hora ordinaria:'
    end
    object Label4: TLabel
      Left = 56
      Top = 152
      Width = 82
      Height = 13
      Caption = 'Valor hora extra:'
    end
    object Edit1: TEdit
      Left = 176
      Top = 37
      Width = 305
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 176
      Top = 77
      Width = 137
      Height = 21
      TabOrder = 1
      Text = '0'
      OnKeyPress = Edit2KeyPress
    end
    object Button1: TButton
      Left = 176
      Top = 200
      Width = 137
      Height = 25
      Caption = 'Calcular salario'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 176
      Top = 114
      Width = 137
      Height = 21
      TabOrder = 2
      Text = '0'
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 176
      Top = 149
      Width = 137
      Height = 22
      TabOrder = 3
      Text = '0'
      OnKeyPress = Edit4KeyPress
    end
  end
end
