object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Serie Fibonacci'
  ClientHeight = 308
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 525
    Height = 308
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 513
    ExplicitHeight = 244
    object Label1: TLabel
      Left = 98
      Top = 35
      Width = 70
      Height = 13
      Caption = 'Digite n'#250'mero:'
    end
    object Label2: TLabel
      Left = 98
      Top = 147
      Width = 55
      Height = 13
      Caption = 'Resultado: '
    end
    object Edit1: TEdit
      Left = 189
      Top = 32
      Width = 168
      Height = 21
      TabOrder = 0
    end
    object ListBox1: TListBox
      Left = 189
      Top = 144
      Width = 168
      Height = 113
      ItemHeight = 13
      TabOrder = 1
    end
    object Button1: TButton
      Left = 189
      Top = 80
      Width = 168
      Height = 34
      Caption = 'Obtener serie Fibonacci'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end
