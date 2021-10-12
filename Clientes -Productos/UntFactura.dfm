object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Clientes - Productos'
  ClientHeight = 449
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 17
    Top = 24
    Width = 46
    Height = 12
    Caption = 'Productos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowFrame
    Font.Height = -10
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 707
    Height = 553
    ActivePage = Pedidos
    Align = alTop
    TabOrder = 0
    object Pedidos: TTabSheet
      Caption = 'Datos'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 699
        Height = 163
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 32
          Top = 48
          Width = 75
          Height = 13
          Caption = 'Nombre cliente:'
        end
        object Label2: TLabel
          Left = 32
          Top = 86
          Width = 50
          Height = 13
          Caption = 'Direcci'#243'n: '
        end
        object Label3: TLabel
          Left = 9
          Top = 8
          Width = 34
          Height = 12
          Caption = 'Clientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -10
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBEdit1: TDBEdit
          Left = 121
          Top = 45
          Width = 344
          Height = 21
          CharCase = ecUpperCase
          DataField = 'nombre'
          DataSource = DataModule1.dtsClientes
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 121
          Top = 83
          Width = 344
          Height = 21
          CharCase = ecUpperCase
          DataField = 'direccion'
          DataSource = DataModule1.dtsClientes
          TabOrder = 1
        end
        object DBNavigator3: TDBNavigator
          Left = 209
          Top = 120
          Width = 240
          Height = 25
          DataSource = DataModule1.dtsClientes
          TabOrder = 2
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 163
        Width = 699
        Height = 206
        TabOrder = 1
        object Label4: TLabel
          Left = 9
          Top = 16
          Width = 46
          Height = 12
          Caption = 'Productos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -10
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DBNavigator4: TDBNavigator
          Left = 209
          Top = 145
          Width = 240
          Height = 25
          DataSource = DataModule1.DtsProducto
          TabOrder = 0
        end
        object DBGrid1: TDBGrid
          Left = 9
          Top = 34
          Width = 688
          Height = 95
          DataSource = DataModule1.DtsProducto
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Title.Caption = 'C'#243'digo producto'
              Width = 132
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'nombre'
              Title.Caption = 'Nombre producto'
              Width = 255
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PrecioVenta'
              Title.Caption = 'Valor unitario'
              Width = 171
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = -4
        Top = 375
        Width = 711
        Height = 66
        TabOrder = 2
        object btnExit: TBitBtn
          Left = 290
          Top = 4
          Width = 115
          Height = 33
          Caption = 'Exit'
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFF9AE9EB09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE9
            E9E9E9E9EB09FFFFFFFFFFFFFFFFFFFFFFFFFF09ECA591E9E9E9E9E9E9E9E9E9
            F3ECFFFFFFFFFFFFFFFFFFE2910090E9E9E9E9E9E9E9E9E9E9D9FFFFFFFFFFFF
            FFFFFFE2910090E9E9E9E9E9E9E9E9E9E9D9FFFFFFFFFFFFF6FFFFE3990090E9
            E9E9E9E9E9E9E9E9E9D9FFFFFFFFFFFF0EFFFFEA990090E9E9E9E9E9E9E9E9E9
            E9D9FFFFFFFFFFFF0E0FFFEB990090E9E9E9E9E9E9E9E9E9E9D9FFFFFFFFFFFF
            0E4F0F9BD90090E9E1E9E9E9E9E9E9E9E9D90F0F4F4F4F4F4F57570F4C009009
            07E1E9E9E9E9E9E9E9E1A75757575757575757574F0198F409E9E9E9E9E9E9E9
            E9E2A7575757575757575757575F4CF2EAF3EAEAE9EAEAEAEAE2A75757575757
            5757575FAF0E99F3F3F3F3F3EAEAEAEAEAE2A7AFAFAFAFAFAF575FAF4F0099F3
            F3F3F3F3F3F3EAEAEAE2575F5757575F575FAF96D90099F3F3F3F3F3F3F3F3F3
            EAE2FFFFFFFFFFFF4FAF4FF3E200D9F4F3F3F3F3F3F3F3F3F4E2FFFFFFFFFFFF
            4FF9FFF3E200D909F4F4F4F4F4F4F4F409E2FFFFFFFFFFFFF9FFFFEBE200E109
            090909090909090909EAFFFFFFFFFFFFFFFFFFF3E200E2090909090909090909
            09EAFFFFFFFFFFFFFFFFFFF3E200E209090909090909090909EAFFFFFFFFFFFF
            FFFFFFF3E200EA09090909090909090909EAFFFFFFFFFFFFFFFFFFF4E20049A3
            A3F409090909090909EAFFFFFFFFFFFFFFFFFFF4EA99999191919151E2EB0909
            09EAFFFFFFFFFFFFFFFFFFF4F3F3F3F3F3F3F3F3F3F3EAEAEAF3}
          TabOrder = 0
          OnClick = btnExitClick
        end
      end
    end
  end
end
