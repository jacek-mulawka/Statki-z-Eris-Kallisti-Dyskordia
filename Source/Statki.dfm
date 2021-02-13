object Statki_Form: TStatki_Form
  Left = 0
  Top = 0
  Caption = 'Statki z Eris Kallisti Dyskordia'
  ClientHeight = 862
  ClientWidth = 784
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  DesignSize = (
    784
    862)
  PixelsPerInch = 96
  TextHeight = 13
  object Opcje_Pionowy_Splitter: TSplitter
    Left = 428
    Top = 0
    Width = 6
    Height = 862
    Align = alRight
    ExplicitLeft = 381
    ExplicitHeight = 462
  end
  object Gra_GLSceneViewer: TGLSceneViewer
    Left = 8
    Top = 8
    Width = 300
    Height = 300
    Camera = Gra_GLCamera
    FieldOfView = 143.130096435546900000
    OnClick = Gra_GLSceneViewerClick
    OnMouseDown = Gra_GLSceneViewerMouseDown
    OnMouseMove = Gra_GLSceneViewerMouseMove
    OnMouseWheel = Gra_GLSceneViewerMouseWheel
    OnKeyDown = Gra_GLSceneViewerKeyDown
    TabStop = True
    TabOrder = 0
    OnExit = Gra_GLSceneViewerExit
  end
  object Radar_Panel: TPanel
    Tag = 25
    Left = 0
    Top = 705
    Width = 370
    Height = 150
    Anchors = [akLeft, akBottom]
    TabOrder = 2
    object Radar_Przyciski_Panel: TPanel
      Left = 1
      Top = 1
      Width = 368
      Height = 30
      Align = alTop
      TabOrder = 0
      object Radar_Skala_Etykieta_Label: TLabel
        Left = 30
        Top = 0
        Width = 32
        Height = 26
        Caption = 'Skala radaru'
        WordWrap = True
      end
      object Radar_Czułość_Etykieta_Label: TLabel
        Left = 125
        Top = 0
        Width = 37
        Height = 26
        Caption = 'Czu'#322'o'#347#263' radaru'
        WordWrap = True
      end
      object Radar_Skala_SpinEdit: TSpinEdit
        Left = 70
        Top = 4
        Width = 50
        Height = 22
        Increment = 10
        MaxValue = 999999
        MinValue = 2
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Value = 100
      end
      object Radar_Powiększ_Button: TButton
        Left = 0
        Top = 0
        Width = 25
        Height = 15
        Hint = 'Powi'#281'ksz wielko'#347#263' wy'#347'wietlacza radaru.'
        Caption = '+'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Radar_Wielkość_ButtonClick
      end
      object Radar_Pomniejsz_Button: TButton
        Left = 0
        Top = 15
        Width = 25
        Height = 15
        Hint = 'Pomniejsz wielko'#347#263' wy'#347'wietlacza radaru.'
        Caption = '-'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = Radar_Wielkość_ButtonClick
      end
      object Radar_Dane_Z_Radia_CheckBox: TCheckBox
        Left = 220
        Top = -2
        Width = 97
        Height = 17
        Hint = 'Prezentuj na radarze dane z radia.'
        Caption = 'Dane z radia'
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 4
      end
      object Radar_Czułość_SpinEdit: TSpinEdit
        Tag = 100
        Left = 165
        Top = 4
        Width = 50
        Height = 22
        Increment = 10
        MaxValue = 999999
        MinValue = 1
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
        Value = 100
      end
      object Radar_Zmieniaj_Czułość_Wraz_Ze_Skalą_CheckBox: TCheckBox
        Left = 220
        Top = 13
        Width = 97
        Height = 17
        Hint = 'Zmieniaj czu'#322'o'#347#263' radaru wraz ze zmian'#261' skali.'
        Caption = 'Zmieniaj czu'#322'o'#347#263
        Checked = True
        ParentShowHint = False
        ShowHint = True
        State = cbChecked
        TabOrder = 5
      end
    end
    object Radar_GLSceneViewer: TGLSceneViewer
      Left = 8
      Top = 37
      Width = 100
      Height = 100
      Camera = Radar_GLCamera
      FieldOfView = 90.000000000000000000
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    Left = 434
    Top = 0
    Width = 350
    Height = 862
    ActivePage = Klawiatura_Konfiguracja_TabSheet
    Align = alRight
    TabOrder = 1
    OnChange = PageControl1Change
    object Gra_TabSheet: TTabSheet
      Caption = 'Gra'
      ImageIndex = 2
      object Gra_ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 342
        Height = 834
        Align = alClient
        TabOrder = 0
        object Wieloosobowe_Gra_GroupBox: TGroupBox
          Left = 0
          Top = 0
          Width = 338
          Height = 75
          Align = alTop
          Caption = 'Wieloosobowe gra'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Wieloosobowe_Identyfikator_Gra_Etykieta_Label: TLabel
            Left = 10
            Top = 20
            Width = 98
            Height = 13
            Caption = 'Identyfikator gracza'
          end
          object Wieloosobowe_Identyfikator_Gra_Label: TLabel
            Left = 115
            Top = 20
            Width = 44
            Height = 13
            Caption = '<brak>'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Gra_Uruchamianie_Panel: TPanel
            Left = 2
            Top = 38
            Width = 334
            Height = 35
            Align = alBottom
            TabOrder = 0
            object Gra_Rozpocznij_BitBtn: TBitBtn
              Left = 5
              Top = 5
              Width = 75
              Height = 25
              Hint = 'Rozpocznij gr'#281'.'
              Caption = 'Start'
              Enabled = False
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
                44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
                00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
                33833F333383F33300003333AA463362A433333333383F333833F33300003333
                6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
                33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
                6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
                000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
                333383333333F3330000333333322AAA4333333333333833333F333300003333
                333322A4333333333333338333F333330000333333344A433333333333333338
                3F333333000033333336A24333333333333333833F333333000033333336AA43
                33333333333333833F3333330000333333336663333333333333333888333333
                0000}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = Gra_Rozpocznij_BitBtnClick
            end
            object Gra_Zakończ_BitBtn: TBitBtn
              Left = 95
              Top = 5
              Width = 75
              Height = 25
              Hint = 'Zako'#324'cz gr'#281'.'
              Caption = 'Koniec'
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
                F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
                000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
                338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
                45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
                3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
                F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
                000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
                338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
                4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
                8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
                333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
                0000}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = Gra_Zakończ_BitBtnClick
            end
          end
        end
        object Gracz_Dane_GroupBox: TGroupBox
          Left = 0
          Top = 75
          Width = 338
          Height = 85
          Align = alTop
          Caption = 'Gracz dane'
          TabOrder = 1
          object Gracz_Grupa_Etykieta_Label: TLabel
            Left = 5
            Top = 55
            Width = 29
            Height = 13
            Caption = 'Grupa'
          end
          object Gracz_Nazwa_Etykieta_Label: TLabel
            Left = 2
            Top = 15
            Width = 67
            Height = 13
            Align = alTop
            Caption = 'Nazwa gracza'
          end
          object Gracz_Gotowość_Nie_BitBtn: TBitBtn
            Left = 185
            Top = 55
            Width = 35
            Height = 25
            Hint = 'Gracz nie gotowy do gry.'
            Enabled = False
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333FFFFF333333000033333388888833333333333F888888FFF333
              000033338811111188333333338833FFF388FF33000033381119999111833333
              38F338888F338FF30000339119933331111833338F388333383338F300003391
              13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
              33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
              33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
              000039183811193333918338F8F833F83333838F000039118111933339118338
              F3833F83333833830000339111193333391833338F33F8333FF838F300003391
              11833338111833338F338FFFF883F83300003339111888811183333338FF3888
              83FF83330000333399111111993333333388FFFFFF8833330000333333999999
              3333333333338888883333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = Gracz_Gotowość_BitBtnClick
          end
          object Gracz_Gotowość_Tak_BitBtn: TBitBtn
            Left = 140
            Top = 55
            Width = 35
            Height = 25
            Hint = 'Gracz gotowy do gry.'
            Enabled = False
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333333333333333333333F33333333333
              00003333344333333333333333388F3333333333000033334224333333333333
              338338F3333333330000333422224333333333333833338F3333333300003342
              222224333333333383333338F3333333000034222A22224333333338F338F333
              8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
              33333338F83338F338F33333000033A33333A222433333338333338F338F3333
              0000333333333A222433333333333338F338F33300003333333333A222433333
              333333338F338F33000033333333333A222433333333333338F338F300003333
              33333333A222433333333333338F338F00003333333333333A22433333333333
              3338F38F000033333333333333A223333333333333338F830000333333333333
              333A333333333333333338330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = Gracz_Gotowość_BitBtnClick
          end
          object Gracz_Grupa_SpinEdit: TSpinEdit
            Left = 40
            Top = 55
            Width = 80
            Height = 22
            MaxValue = 2
            MinValue = 1
            TabOrder = 1
            Value = 1
          end
          object Gracz_Nazwa_Edit: TEdit
            Left = 2
            Top = 28
            Width = 334
            Height = 21
            Align = alTop
            TabOrder = 0
          end
          object Gracze_Lista_Odśwież_BitBtn: TBitBtn
            Left = 240
            Top = 55
            Width = 35
            Height = 25
            Hint = 'Od'#347'wie'#380' list'#281' graczy.'
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
              33333333333F8888883F33330000324334222222443333388F3833333388F333
              000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
              F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
              223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
              3338888300003AAAAAAA33333333333888888833333333330000333333333333
              333333333333333333FFFFFF000033333333333344444433FFFF333333888888
              00003A444333333A22222438888F333338F3333800003A2243333333A2222438
              F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
              22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
              33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
              3333333333338888883333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = Gracze_Lista_Odśwież_BitBtnClick
          end
          object Gracze_Lista_Rozłącz_Gracza_BitBtn: TBitBtn
            Left = 295
            Top = 55
            Width = 35
            Height = 25
            Hint = 'Roz'#322#261'cz gracza.'
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333000033338833333333333333333F333333333333
              0000333911833333983333333388F333333F3333000033391118333911833333
              38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
              911118111118333338F3338F833338F3000033333911111111833333338F3338
              3333F8330000333333911111183333333338F333333F83330000333333311111
              8333333333338F3333383333000033333339111183333333333338F333833333
              00003333339111118333333333333833338F3333000033333911181118333333
              33338333338F333300003333911183911183333333383338F338F33300003333
              9118333911183333338F33838F338F33000033333913333391113333338FF833
              38F338F300003333333333333919333333388333338FFF830000333333333333
              3333333333333333333888330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = Gracze_Lista_Rozłącz_Gracza_BitBtnClick
          end
        end
        object Statek_GroupBox: TGroupBox
          Left = 0
          Top = 160
          Width = 338
          Height = 190
          Align = alTop
          Caption = 'Statek'
          TabOrder = 2
          DesignSize = (
            338
            190)
          object Statek_ComboBox: TComboBox
            Left = 10
            Top = 20
            Width = 316
            Height = 22
            Hint = 'Enter - utw'#243'rz (ponownie) wskazany statek.'
            Style = csOwnerDrawVariable
            Anchors = [akLeft, akTop, akRight]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnChange = Statek_ComboBoxChange
            OnKeyDown = Statek_ComboBoxKeyDown
          end
          object Statek__Wczytaj_Listę_BitBtn: TBitBtn
            Left = 5
            Top = 160
            Width = 35
            Height = 25
            Hint = 'Wczytaj list'#281' statk'#243'w.'
            Anchors = [akLeft, akBottom]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
              44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
              00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
              33833F333383F33300003333AA463362A433333333383F333833F33300003333
              6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
              33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
              6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
              000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
              333383333333F3330000333333322AAA4333333333333833333F333300003333
              333322A4333333333333338333F333330000333333344A433333333333333338
              3F333333000033333336A24333333333333333833F333333000033333336AA43
              33333333333333833F3333330000333333336663333333333333333888333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = Statek__Wczytaj_Listę_BitBtnClick
          end
          object Statek_Opis_Memo: TMemo
            Left = 10
            Top = 50
            Width = 316
            Height = 105
            Anchors = [akLeft, akTop, akRight, akBottom]
            Lines.Strings = (
              'Opis statku.')
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 6
          end
          object Statek__Odśwież_Wskazany_BitBtn: TBitBtn
            Left = 60
            Top = 160
            Width = 35
            Height = 25
            Hint = 'Od'#347'wie'#380' wskazany statek.'
            Anchors = [akLeft, akBottom]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
              33333333333F8888883F33330000324334222222443333388F3833333388F333
              000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
              F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
              223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
              3338888300003AAAAAAA33333333333888888833333333330000333333333333
              333333333333333333FFFFFF000033333333333344444433FFFF333333888888
              00003A444333333A22222438888F333338F3333800003A2243333333A2222438
              F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
              22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
              33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
              3333333333338888883333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = Statek__Odśwież_Wskazany_BitBtnClick
          end
          object Statek__Utwórz_BitBtn: TBitBtn
            Left = 115
            Top = 160
            Width = 35
            Height = 25
            Hint = 'Utw'#243'rz (ponownie) wskazany statek.'
            Anchors = [akLeft, akBottom]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333333333333333333333F33333333333
              00003333344333333333333333388F3333333333000033334224333333333333
              338338F3333333330000333422224333333333333833338F3333333300003342
              222224333333333383333338F3333333000034222A22224333333338F338F333
              8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
              33333338F83338F338F33333000033A33333A222433333338333338F338F3333
              0000333333333A222433333333333338F338F33300003333333333A222433333
              333333338F338F33000033333333333A222433333333333338F338F300003333
              33333333A222433333333333338F338F00003333333333333A22433333333333
              3338F38F000033333333333333A223333333333333338F830000333333333333
              333A333333333333333338330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = Statek__Utwórz_BitBtnClick
          end
          object Statek__Opis_BitBtn: TBitBtn
            Left = 170
            Top = 160
            Width = 35
            Height = 25
            Hint = 'Opis (utworzonego) statku.'
            Anchors = [akLeft, akBottom]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333336633
              3333333333333FF3333333330000333333364463333333333333388F33333333
              00003333333E66433333333333338F38F3333333000033333333E66333333333
              33338FF8F3333333000033333333333333333333333338833333333300003333
              3333446333333333333333FF3333333300003333333666433333333333333888
              F333333300003333333E66433333333333338F38F333333300003333333E6664
              3333333333338F38F3333333000033333333E6664333333333338F338F333333
              0000333333333E6664333333333338F338F3333300003333344333E666433333
              333F338F338F3333000033336664333E664333333388F338F338F33300003333
              E66644466643333338F38FFF8338F333000033333E6666666663333338F33888
              3338F3330000333333EE666666333333338FF33333383333000033333333EEEE
              E333333333388FFFFF8333330000333333333333333333333333388888333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = Statek__Opis_BitBtnClick
          end
          object Statek__Komunikat_Błędu_Pomiń_CheckBox: TCheckBox
            Left = 225
            Top = 165
            Width = 100
            Height = 17
            Hint = 
              'Pomi'#324' wypisywanie komunikat'#243'w o b'#322#281'dach definicji statku.'#13#10'Przed' +
              ' ponownym utworzeniem statku od'#347'wie'#380' dane wskazanego statku.'
            Caption = 'Komunikat pomi'#324
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
        end
        object Gracze_Lista_GroupBox: TGroupBox
          Left = 0
          Top = 350
          Width = 338
          Height = 200
          Align = alTop
          Caption = 'Gracze lista'
          TabOrder = 3
          object Mapa_Label: TLabel
            Left = 2
            Top = 15
            Width = 58
            Height = 13
            Align = alTop
            Caption = 'Mapa: <?>.'
          end
          object Statki_Pozycje_Początkowe_Label: TLabel
            Left = 2
            Top = 28
            Width = 170
            Height = 13
            Align = alTop
            Caption = 'Pozycje pocz'#261'tkowe statk'#243'w: <?>.'
          end
          object Gracze_Lista_StringGrid: TStringGrid
            Left = 2
            Top = 41
            Width = 334
            Height = 157
            Align = alClient
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
            TabOrder = 0
          end
        end
        object SI_GroupBox: TGroupBox
          Left = 0
          Top = 550
          Width = 338
          Height = 115
          Align = alTop
          Caption = 'SI'
          Enabled = False
          TabOrder = 4
          DesignSize = (
            338
            115)
          object SI__Nazwa_Etykieta_Label: TLabel
            Left = 2
            Top = 15
            Width = 334
            Height = 13
            Align = alTop
            Caption = 'Nazwa'
            ExplicitWidth = 32
          end
          object SI__Grupa_Etykieta_Label: TLabel
            Left = 10
            Top = 85
            Width = 29
            Height = 13
            Caption = 'Grupa'
          end
          object SI__Statek_ComboBox: TComboBox
            Left = 10
            Top = 55
            Width = 316
            Height = 22
            Style = csOwnerDrawVariable
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 1
          end
          object SI__Dodaj_BitBtn: TBitBtn
            Left = 291
            Top = 85
            Width = 35
            Height = 25
            Hint = 'Dodaj SI.'
            Anchors = [akTop, akRight]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
              44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
              00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
              33833F333383F33300003333AA463362A433333333383F333833F33300003333
              6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
              33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
              6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
              000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
              333383333333F3330000333333322AAA4333333333333833333F333300003333
              333322A4333333333333338333F333330000333333344A433333333333333338
              3F333333000033333336A24333333333333333833F333333000033333336AA43
              33333333333333833F3333330000333333336663333333333333333888333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = SI__Dodaj_BitBtnClick
          end
          object SI__Nazwa_Edit: TEdit
            Left = 2
            Top = 28
            Width = 334
            Height = 21
            Align = alTop
            TabOrder = 0
          end
          object SI__Grupa_SpinEdit: TSpinEdit
            Left = 45
            Top = 85
            Width = 80
            Height = 22
            MaxValue = 2
            MinValue = 1
            TabOrder = 2
            Value = 1
          end
        end
      end
    end
    object Wieloosobowe_TabSheet: TTabSheet
      Caption = 'Wieloosobowe'
      ImageIndex = 1
      object Wieloosobowe_ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 342
        Height = 834
        Align = alClient
        TabOrder = 0
        object Wieloosobowe_GroupBox: TGroupBox
          Left = 0
          Top = 0
          Width = 338
          Height = 215
          Align = alTop
          Caption = 'Wieloosobowe'
          TabOrder = 0
          object Serwer_Adres_IP_Etykieta_Label: TLabel
            Left = 10
            Top = 60
            Width = 83
            Height = 13
            Caption = 'Adres IP serwera'
          end
          object Serwer_Port_Etykieta_Label: TLabel
            Left = 10
            Top = 85
            Width = 62
            Height = 13
            Caption = 'Port serwera'
          end
          object Hasło_Etykieta_Label: TLabel
            Left = 10
            Top = 110
            Width = 27
            Height = 13
            Caption = 'Has'#322'o'
          end
          object Wieloosobowe_Identyfikator_Etykieta_Label: TLabel
            Left = 2
            Top = 179
            Width = 98
            Height = 13
            Align = alBottom
            Caption = 'Identyfikator gracza'
          end
          object Wieloosobowe__Odłącz_BitBtn: TBitBtn
            Left = 95
            Top = 145
            Width = 75
            Height = 25
            Hint = 'Zatrzymaj serwer / (klient) od'#322#261'cz od serwera.'
            Caption = 'Od'#322#261'cz'
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333FFFFF333333000033333388888833333333333F888888FFF333
              000033338811111188333333338833FFF388FF33000033381119999111833333
              38F338888F338FF30000339119933331111833338F388333383338F300003391
              13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
              33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
              33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
              000039183811193333918338F8F833F83333838F000039118111933339118338
              F3833F83333833830000339111193333391833338F33F8333FF838F300003391
              11833338111833338F338FFFF883F83300003339111888811183333338FF3888
              83FF83330000333399111111993333333388FFFFFF8833330000333333999999
              3333333333338888883333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = Wieloosobowe__Odłącz_BitBtnClick
          end
          object Wieloosobowe__Podłącz_BitBtn: TBitBtn
            Left = 10
            Top = 145
            Width = 75
            Height = 25
            Hint = 'Uruchom serwer / (klient) pod'#322#261'cz do serwera.'
            Caption = 'Pod'#322#261'cz'
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333333333333333333333F33333333333
              00003333344333333333333333388F3333333333000033334224333333333333
              338338F3333333330000333422224333333333333833338F3333333300003342
              222224333333333383333338F3333333000034222A22224333333338F338F333
              8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
              33333338F83338F338F33333000033A33333A222433333338333338F338F3333
              0000333333333A222433333333333338F338F33300003333333333A222433333
              333333338F338F33000033333333333A222433333333333338F338F300003333
              33333333A222433333333333338F338F00003333333333333A22433333333333
              3338F38F000033333333333333A223333333333333338F830000333333333333
              333A333333333333333338330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = Wieloosobowe__Podłącz_BitBtnClick
          end
          object Wieloosobowe__Tryb_RadioGroup: TRadioGroup
            Left = 5
            Top = 15
            Width = 250
            Height = 40
            Hint = 'Ustawienie na '#39'Brak'#39' wyczy'#347'ci identyfikator gracza.'
            Caption = 'Tryb'
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              'Gra lokalna'
              'Klient'
              'Server')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = True
            OnClick = Wieloosobowe__Tryb_RadioGroupClick
          end
          object Serwer_Adres_IP_Edit: TEdit
            Left = 100
            Top = 60
            Width = 120
            Height = 21
            TabOrder = 1
            Text = '127.0.0.1'
          end
          object Serwer_Port_SpinEdit: TSpinEdit
            Left = 80
            Top = 85
            Width = 80
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 2
            Value = 3500
          end
          object Hasło_Edit: TEdit
            Left = 45
            Top = 110
            Width = 175
            Height = 21
            TabOrder = 3
            Text = 'Has'#322'o'
          end
          object Wieloosobowe_Identyfikator_Edit: TEdit
            Left = 2
            Top = 192
            Width = 334
            Height = 21
            Align = alBottom
            ReadOnly = True
            TabOrder = 6
          end
        end
        object Ląd_GroupBox: TGroupBox
          Left = 0
          Top = 215
          Width = 338
          Height = 190
          Align = alTop
          Caption = 'Mapy'
          TabOrder = 1
          DesignSize = (
            338
            190)
          object Ląd_ComboBox: TComboBox
            Left = 10
            Top = 20
            Width = 316
            Height = 22
            Style = csOwnerDrawVariable
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            OnChange = Ląd_ComboBoxChange
          end
          object Ląd__Wczytaj_Listę_BitBtn: TBitBtn
            Left = 5
            Top = 160
            Width = 35
            Height = 25
            Hint = 'Wczytaj list'#281' map.'
            Anchors = [akLeft, akBottom]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
              44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
              00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
              33833F333383F33300003333AA463362A433333333383F333833F33300003333
              6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
              33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
              6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
              000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
              333383333333F3330000333333322AAA4333333333333833333F333300003333
              333322A4333333333333338333F333330000333333344A433333333333333338
              3F333333000033333336A24333333333333333833F333333000033333336AA43
              33333333333333833F3333330000333333336663333333333333333888333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = Ląd__Wczytaj_Listę_BitBtnClick
          end
          object Ląd_Opis_Memo: TMemo
            Left = 10
            Top = 50
            Width = 316
            Height = 105
            Anchors = [akLeft, akTop, akRight, akBottom]
            Lines.Strings = (
              'Opis mapy.')
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 5
          end
          object Ląd__Odśwież_Wskazany_BitBtn: TBitBtn
            Left = 60
            Top = 160
            Width = 35
            Height = 25
            Hint = 'Od'#347'wie'#380' wskazan'#261' map'#281'.'
            Anchors = [akLeft, akBottom]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
              33333333333F8888883F33330000324334222222443333388F3833333388F333
              000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
              F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
              223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
              3338888300003AAAAAAA33333333333888888833333333330000333333333333
              333333333333333333FFFFFF000033333333333344444433FFFF333333888888
              00003A444333333A22222438888F333338F3333800003A2243333333A2222438
              F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
              22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
              33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
              3333333333338888883333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = Ląd__Odśwież_Wskazany_BitBtnClick
          end
          object Ląd__Utwórz_BitBtn: TBitBtn
            Left = 115
            Top = 160
            Width = 35
            Height = 25
            Hint = 'Utw'#243'rz (ponownie) wskazan'#261' map'#281'.'
            Anchors = [akLeft, akBottom]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333333333333333333333F33333333333
              00003333344333333333333333388F3333333333000033334224333333333333
              338338F3333333330000333422224333333333333833338F3333333300003342
              222224333333333383333338F3333333000034222A22224333333338F338F333
              8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
              33333338F83338F338F33333000033A33333A222433333338333338F338F3333
              0000333333333A222433333333333338F338F33300003333333333A222433333
              333333338F338F33000033333333333A222433333333333338F338F300003333
              33333333A222433333333333338F338F00003333333333333A22433333333333
              3338F38F000033333333333333A223333333333333338F830000333333333333
              333A333333333333333338330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = Ląd__Utwórz_BitBtnClick
          end
          object Ląd__Komunikat_Błędu_Pomiń_CheckBox: TCheckBox
            Left = 170
            Top = 165
            Width = 100
            Height = 17
            Hint = 'Pomi'#324' wypisywanie komunikat'#243'w o b'#322#281'dach definicji l'#261'du.'
            Caption = 'Komunikat pomi'#324
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
        end
        object Statki_Pozycje_Początkowe_GroupBox: TGroupBox
          Left = 0
          Top = 405
          Width = 338
          Height = 190
          Align = alTop
          Caption = 'Pozycje pocz'#261'tkowe statk'#243'w'
          TabOrder = 2
          DesignSize = (
            338
            190)
          object Statki_Pozycje_Początkowe_ComboBox: TComboBox
            Left = 10
            Top = 20
            Width = 316
            Height = 22
            Style = csOwnerDrawVariable
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            OnChange = Statki_Pozycje_Początkowe_ComboBoxChange
          end
          object Statki_Pozycje_Początkowe__Wczytaj_Listę_BitBtn: TBitBtn
            Left = 5
            Top = 160
            Width = 35
            Height = 25
            Hint = 'Wczytaj list'#281' pozycji pocz'#261'tkowych statk'#243'w.'
            Anchors = [akLeft, akBottom]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
              44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
              00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
              33833F333383F33300003333AA463362A433333333383F333833F33300003333
              6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
              33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
              6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
              000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
              333383333333F3330000333333322AAA4333333333333833333F333300003333
              333322A4333333333333338333F333330000333333344A433333333333333338
              3F333333000033333336A24333333333333333833F333333000033333336AA43
              33333333333333833F3333330000333333336663333333333333333888333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = Statki_Pozycje_Początkowe__Wczytaj_Listę_BitBtnClick
          end
          object Statki_Pozycje_Początkowe_Opis_Memo: TMemo
            Left = 10
            Top = 50
            Width = 316
            Height = 105
            Anchors = [akLeft, akTop, akRight, akBottom]
            Lines.Strings = (
              'Opis pozycji pocz'#261'tkowej statk'#243'w.')
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 4
          end
          object Statki_Pozycje_Początkowe__Odśwież_Wskazany_BitBtn: TBitBtn
            Left = 60
            Top = 160
            Width = 35
            Height = 25
            Hint = 'Od'#347'wie'#380' wskazan'#261' pozycj'#281' pocz'#261'tkow'#261' statk'#243'w.'
            Anchors = [akLeft, akBottom]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
              33333333333F8888883F33330000324334222222443333388F3833333388F333
              000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
              F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
              223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
              3338888300003AAAAAAA33333333333888888833333333330000333333333333
              333333333333333333FFFFFF000033333333333344444433FFFF333333888888
              00003A444333333A22222438888F333338F3333800003A2243333333A2222438
              F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
              22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
              33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
              3333333333338888883333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = Statki_Pozycje_Początkowe__Odśwież_Wskazany_BitBtnClick
          end
          object Statki_Pozycje_Początkowe__Brak_BitBtn: TBitBtn
            Left = 115
            Top = 160
            Width = 35
            Height = 25
            Hint = 'Brak pozycji pocz'#261'tkowej statk'#243'w.'
            Anchors = [akLeft, akBottom]
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333FFFFF333333000033333388888833333333333F888888FFF333
              000033338811111188333333338833FFF388FF33000033381119999111833333
              38F338888F338FF30000339119933331111833338F388333383338F300003391
              13333381111833338F8F3333833F38F3000039118333381119118338F38F3338
              33F8F38F000039183333811193918338F8F333833F838F8F0000391833381119
              33918338F8F33833F8338F8F000039183381119333918338F8F3833F83338F8F
              000039183811193333918338F8F833F83333838F000039118111933339118338
              F3833F83333833830000339111193333391833338F33F8333FF838F300003391
              11833338111833338F338FFFF883F83300003339111888811183333338FF3888
              83FF83330000333399111111993333333388FFFFFF8833330000333333999999
              3333333333338888883333330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = Statki_Pozycje_Początkowe__Brak_BitBtnClick
          end
        end
        object Pokój_Rozmów_GroupBox: TGroupBox
          Left = 0
          Top = 595
          Width = 338
          Height = 200
          Align = alTop
          Caption = 'Pok'#243'j rozm'#243'w'
          TabOrder = 3
          object Pokój_Rozmów_Memo: TMemo
            Left = 2
            Top = 15
            Width = 334
            Height = 133
            Align = alClient
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
          end
          object Pokój_Rozmów_Przyciski_Panel: TPanel
            Left = 2
            Top = 148
            Width = 334
            Height = 50
            Hint = 'Przytrzymaj i przeci'#261'gnij aby zmieni'#263' rozmiar.'
            Align = alBottom
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnMouseDown = Pokój_Rozmów_Przyciski_PanelMouseDown
            OnMouseMove = Pokój_Rozmów_Przyciski_PanelMouseMove
            OnMouseUp = Pokój_Rozmów_Przyciski_PanelMouseUp
            object Pokój_Rozmów_Wiadomość_Edit: TEdit
              Left = 1
              Top = 1
              Width = 332
              Height = 21
              Hint = '[Enter] - wy'#347'lij.'
              Align = alTop
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyDown = Pokój_Rozmów_Wiadomość_EditKeyDown
            end
            object Pokój_Rozmów__Wyślij_Wiadomość_Button: TButton
              Left = 20
              Top = 25
              Width = 75
              Height = 25
              Hint = 'Wy'#347'lij wiadomo'#347#263'.'
              Caption = 'Wy'#347'lij'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = Pokój_Rozmów__Wyślij_Wiadomość_ButtonClick
            end
            object Pokój_Rozmów__Ukryj_Button: TButton
              Left = 280
              Top = 25
              Width = 25
              Height = 25
              Hint = 'Ukryj.'
              Caption = 'x'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = Pokój_Rozmów__Ukryj_ButtonClick
            end
            object Pokój_Rozmów__Wyślij_Do__Odbiorca_Rodzaj_ComboBox: TComboBox
              Left = 115
              Top = 25
              Width = 145
              Height = 22
              Hint = 'Wy'#347'lij wiadomo'#347#263' do wybranego adresata.'
              Style = csOwnerDrawFixed
              DropDownCount = 20
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              OnKeyDown = Pokój_Rozmów_Wiadomość_EditKeyDown
              Items.Strings = (
                '')
            end
          end
        end
      end
    end
    object Log_TabSheet: TTabSheet
      Caption = 'Log'
      object Log_Memo: TMemo
        Left = 0
        Top = 0
        Width = 342
        Height = 834
        Align = alClient
        Lines.Strings = (
          'Log')
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object Ustawienia_TabSheet: TTabSheet
      Caption = 'Ustawienia'
      ImageIndex = 4
      object Ustawienia_Panel: TPanel
        Left = 0
        Top = 0
        Width = 342
        Height = 40
        Align = alTop
        TabOrder = 0
        object Ustawienia_Wczytaj_Button: TButton
          Left = 10
          Top = 5
          Width = 75
          Height = 25
          Hint = 'Wczytaj ustawienia.'
          Caption = 'Wczytaj'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = Ustawienia_Wczytaj_ButtonClick
        end
        object Ustawienia_Zapisz_Button: TButton
          Left = 110
          Top = 5
          Width = 75
          Height = 25
          Hint = 'Zapisz ustawienia.'
          Caption = 'Zapisz'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Ustawienia_Zapisz_ButtonClick
        end
      end
      object Ustawienia_ScrollBox: TScrollBox
        Left = 0
        Top = 40
        Width = 342
        Height = 794
        Align = alClient
        TabOrder = 1
        OnMouseWheel = ScrollBoxMouseWheel
        object Amunicja__Zanurzenie_Głębokość_Zadana__Skok_O_Etykieta_Label: TLabel
          Left = 10
          Top = 860
          Width = 162
          Height = 13
          Hint = 
            'O jak'#261' warto'#347#263' zmienia'#263' '#39'Torpeda g'#322#281'boko'#347#263' zadana'#39'.'#13#10'Gdy warto'#347#263 +
            ' jest mniejsza r'#243'wna zero zmiana g'#322#281'boko'#347'ci odbywa si'#281' w domy'#347'ln' +
            'y spos'#243'b.'
          Caption = 'Torpeda g'#322#281'boko'#347#263' zadana skok o'
          ParentShowHint = False
          ShowHint = True
        end
        object Amunicja__Zanurzenie_Głębokość_Zadana__Skok_O_Label: TLabel
          Left = 280
          Top = 860
          Width = 21
          Height = 13
          Hint = 
            'O jak'#261' warto'#347#263' zmienia'#263' '#39'Torpeda g'#322#281'boko'#347#263' zadana'#39'.'#13#10'Gdy warto'#347#263 +
            ' jest mniejsza r'#243'wna zero zmiana g'#322#281'boko'#347'ci odbywa si'#281' w domy'#347'ln' +
            'y spos'#243'b.'
          Caption = '<?>'
          ParentShowHint = False
          ShowHint = True
        end
        object Amunicja__Zanurzenie_Głębokość_Zadana_Etykieta_Label: TLabel
          Left = 10
          Top = 830
          Width = 129
          Height = 13
          Hint = 'Do p'#322'yni'#281'cia na jakiej g'#322#281'boko'#347'ci powinna d'#261#380'y'#263' torpeda.'
          Caption = 'Torpeda g'#322#281'boko'#347#263' zadana'
          ParentShowHint = False
          ShowHint = True
        end
        object Amunicja__Zanurzenie_Głębokość_Zadana_Label: TLabel
          Left = 245
          Top = 830
          Width = 21
          Height = 13
          Hint = 'Do p'#322'yni'#281'cia na jakiej g'#322#281'boko'#347'ci powinna d'#261#380'y'#263' torpeda.'
          Caption = '<?>'
          ParentShowHint = False
          ShowHint = True
        end
        object Gra_Współczynnik_Prędkości_Etykieta_Label: TLabel
          Left = 10
          Top = 530
          Width = 86
          Height = 13
          Caption = 'Pr'#281'dko'#347#263' gry <?>'
        end
        object Kamera_Odległość_Maksymalna_Etykieta_Label: TLabel
          Left = 10
          Top = 275
          Width = 84
          Height = 13
          Hint = 
            'Odleg'#322'o'#347#263' maksymalna kamery od obiektu, za kt'#243'rym pod'#261#380'a (0 - ni' +
            'e aktywne).'
          Caption = 'Kamera odleg'#322'o'#347#263
          ParentShowHint = False
          ShowHint = True
        end
        object Kamera_Szybkość_Ruchu_Etykieta_Label: TLabel
          Left = 10
          Top = 310
          Width = 112
          Height = 13
          Hint = 'Pr'#281'dko'#347#263' ruchu kamery.'
          Caption = 'Kamera szybko'#347#263' ruchu'
          ParentShowHint = False
          ShowHint = True
        end
        object Kamera_Szybkość_Ruchu_Label: TLabel
          Left = 215
          Top = 310
          Width = 21
          Height = 13
          Hint = 'Pr'#281'dko'#347#263' ruchu kamery'
          Caption = '<?>'
          ParentShowHint = False
          ShowHint = True
        end
        object Mysz_Czułość_Etykieta_Label: TLabel
          Left = 10
          Top = 380
          Width = 62
          Height = 13
          Hint = 'Czu'#322'o'#347#263' myszy (pr'#281'dko'#347#263' ruchu myszy).'
          Caption = 'Mysz czu'#322'o'#347#263
          ParentShowHint = False
          ShowHint = True
        end
        object Mysz_Czułość_Label: TLabel
          Left = 180
          Top = 380
          Width = 21
          Height = 13
          Hint = 'Czu'#322'o'#347#263' myszy (pr'#281'dko'#347#263' ruchu myszy) warto'#347#263' ustawiona.'
          Caption = '<?>'
          ParentShowHint = False
          ShowHint = True
        end
        object Mysz_Czułość_Luneta_Etykieta_Label: TLabel
          Left = 10
          Top = 410
          Width = 95
          Height = 13
          Hint = 
            'Czu'#322'o'#347#263' myszy (pr'#281'dko'#347#263' ruchu myszy) przy maksymalnym przybli'#380'en' +
            'iu lunety.'
          Caption = 'Mysz czu'#322'o'#347#263' luneta'
          ParentShowHint = False
          ShowHint = True
        end
        object Mysz_Czułość_Luneta_Label: TLabel
          Left = 210
          Top = 410
          Width = 21
          Height = 13
          Hint = 
            'Czu'#322'o'#347#263' myszy (pr'#281'dko'#347#263' ruchu myszy) przy maksymalnym przybli'#380'en' +
            'iu lunety - warto'#347#263' ustawiona.'
          Caption = '<?>'
          ParentShowHint = False
          ShowHint = True
        end
        object Celowanie_Precyzja_Obrót_Etykieta_Label: TLabel
          Left = 10
          Top = 95
          Width = 149
          Height = 13
          Hint = 
            'Precyzja celowania obrotu broni.'#13#10'Gdy r'#243#380'nica mi'#281'dzy k'#261'tem wycel' +
            'owania a obrotu broni jest mniejsza od tej warto'#347'ci uznaje, '#380'e b' +
            'ro'#324'  jest nakierowana na cel.'
          Caption = 'Celowanie precyzja obr'#243't broni'
          ParentShowHint = False
          ShowHint = True
        end
        object Celowanie_Precyzja_Podniesienie_Etykieta_Label: TLabel
          Left = 10
          Top = 125
          Width = 170
          Height = 13
          Hint = 
            'Precyzja celowania podniesienia luf broni.'#13#10'Gdy r'#243#380'nica mi'#281'dzy k' +
            #261'tem wycelowania a podniesienia luf broni jest mniejsza od tej w' +
            'arto'#347'ci uznaje, '#380'e bro'#324'  jest nakierowana na cel.'
          Caption = 'Celowanie precyzja podniesienie luf'
          ParentShowHint = False
          ShowHint = True
        end
        object Celownik_Wielkość_Etykieta_Label: TLabel
          Left = 10
          Top = 210
          Width = 84
          Height = 13
          Caption = 'Celownik wielko'#347#263
          ParentShowHint = False
          ShowHint = False
        end
        object Celownik_Wielkość_Label: TLabel
          Left = 215
          Top = 210
          Width = 21
          Height = 13
          Caption = '<?>'
          ParentShowHint = False
          ShowHint = False
        end
        object Morze_Wzburzenie_Etykieta_Label: TLabel
          Left = 10
          Top = 345
          Width = 108
          Height = 13
          Hint = 
            'Wzburzenie morza wp'#322'ywa na falowanie statku (100% jest warto'#347'ci'#261 +
            ' domy'#347'ln'#261').'
          Caption = 'Morze wzburzenie [%]'
          ParentShowHint = False
          ShowHint = True
        end
        object Amunicja__Cel_Pozycja_Dla_Lotu_Parabolą_Wyświetl_CheckBox: TCheckBox
          Left = 10
          Top = 5
          Width = 97
          Height = 17
          Hint = 
            'Dla artylerii wy'#347'wietlaj znacznik miejsca, w kt'#243're oddano strza'#322 +
            '.'
          Caption = 'Artyleria pozycja celu'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 0
        end
        object Amunicja__Zanurzenie_Głębokość_Zadana__Skok_O_Edit: TEdit
          Left = 185
          Top = 860
          Width = 80
          Height = 21
          Hint = 
            'O jak'#261' warto'#347#263' zmienia'#263' '#39'Torpeda g'#322#281'boko'#347#263' zadana'#39'.'#13#10'Gdy warto'#347#263 +
            ' jest mniejsza r'#243'wna zero zmiana g'#322#281'boko'#347'ci odbywa si'#281' w domy'#347'ln' +
            'y spos'#243'b.'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 25
          Text = '0'
          OnChange = Amunicja__Zanurzenie_Głębokość_Zadana_EditChange
          OnKeyDown = Edit_Jako_Spin_KeyDown
        end
        object Amunicja__Zanurzenie_Głębokość_Zadana_Edit: TEdit
          Left = 150
          Top = 830
          Width = 80
          Height = 21
          Hint = 'Do p'#322'yni'#281'cia na jakiej g'#322#281'boko'#347'ci powinna d'#261#380'y'#263' torpeda.'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 24
          Text = '-0.3'
          OnChange = Amunicja__Zanurzenie_Głębokość_Zadana_EditChange
          OnKeyDown = Edit_Jako_Spin_KeyDown
        end
        object Amunicja_Rodzaj_GroupBox: TGroupBox
          Left = 10
          Top = 715
          Width = 120
          Height = 105
          Caption = 'Strzelaj z'
          TabOrder = 23
          object ar_Artyleria_CheckBox: TCheckBox
            Left = 10
            Top = 20
            Width = 80
            Height = 17
            Caption = 'Artyleria'
            TabOrder = 0
          end
          object ar_Pocisk_CheckBox: TCheckBox
            Left = 10
            Top = 40
            Width = 80
            Height = 17
            Caption = 'Dzia'#322'a'
            TabOrder = 1
          end
          object ar_Torpeda_CheckBox: TCheckBox
            Left = 10
            Top = 60
            Width = 80
            Height = 17
            Caption = 'Torpedy'
            TabOrder = 2
          end
          object ar_Wszystkie_CheckBox: TCheckBox
            Left = 10
            Top = 80
            Width = 97
            Height = 17
            Caption = '<wszystko>'
            TabOrder = 3
          end
        end
        object Celowanie_Tryb_RadioGroup: TRadioGroup
          Left = 10
          Top = 30
          Width = 185
          Height = 50
          Hint = 
            'Celuj r'#243'wnolegle do linii od statku do wskazanego punktu lub zbi' +
            'e'#380'nie do wskazanego punktu.'
          Caption = 'Tryb celowania'
          Columns = 2
          ItemIndex = 1
          Items.Strings = (
            'r'#243'wnoleg'#322'y'
            'zbie'#380'ny')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Celowanie_Tryb_RadioGroupClick
        end
        object Dalmierz_CheckBox: TCheckBox
          Left = 10
          Top = 240
          Width = 97
          Height = 17
          Hint = 'Odleg'#322'o'#347#263' od kamery do wskazanego punktu.'
          Caption = 'Dalmierz'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object Gra_Współczynnik_Prędkości_SpinEdit: TSpinEdit
          Left = 115
          Top = 530
          Width = 121
          Height = 22
          Increment = 10
          MaxValue = 999999
          MinValue = 1
          TabOrder = 16
          Value = 100
          OnChange = Gra_Współczynnik_Prędkości_SpinEditChange
        end
        object Kamera_Odległość_Maksymalna_SpinEdit: TSpinEdit
          Left = 105
          Top = 275
          Width = 80
          Height = 22
          Hint = 
            'Odleg'#322'o'#347#263' maksymalna kamery od obiektu, za kt'#243'rym pod'#261#380'a (0 - ni' +
            'e aktywne).'
          MaxValue = 9999999
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          Value = 5
        end
        object Kamera_Szybkość_Ruchu_Edit: TEdit
          Left = 125
          Top = 310
          Width = 80
          Height = 21
          Hint = 'Pr'#281'dko'#347#263' ruchu kamery'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          Text = '1.00'
          OnChange = Kamera_Szybkość_Ruchu_EditChange
          OnKeyDown = Edit_Jako_Spin_KeyDown
        end
        object Mysz_Czułość_Edit: TEdit
          Left = 90
          Top = 380
          Width = 80
          Height = 21
          Hint = 'Czu'#322'o'#347#263' myszy (pr'#281'dko'#347#263' ruchu myszy).'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          Text = '10.00'
          OnChange = Mysz_Czułość_EditChange
          OnKeyDown = Edit_Jako_Spin_KeyDown
        end
        object Mysz_Czułość_Luneta_Edit: TEdit
          Left = 120
          Top = 410
          Width = 80
          Height = 21
          Hint = 
            'Czu'#322'o'#347#263' myszy (pr'#281'dko'#347#263' ruchu myszy) przy maksymalnym przybli'#380'en' +
            'iu lunety.'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          Text = '0.1'
          OnChange = Mysz_Czułość_EditChange
          OnKeyDown = Edit_Jako_Spin_KeyDown
        end
        object Obrót_Kąt_Zablokowany_Wskaźnik_CheckBox: TCheckBox
          Left = 10
          Top = 440
          Width = 220
          Height = 17
          Hint = 'Wy'#347'wietlaj wska'#378'nik zablokowanego k'#261'ta obrotu broni.'
          Caption = 'Obr'#243't k'#261't zablokowany broni wska'#378'nik'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
          OnClick = Elementy_Gracza_Dostosuj_CheckBoxClick
        end
        object Pokój_Rozmów__Informacja_Dodatkowa_CheckBox: TCheckBox
          Left = 10
          Top = 585
          Width = 200
          Height = 17
          Hint = 'Wy'#347'wietlaj dialogi z pokoju rozm'#243'w na ekranie gry.'
          Caption = 'Pok'#243'j rozm'#243'w informuj na ekranie'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 18
        end
        object Punkty_Życia_Wskaźnik__Gracz_CheckBox: TCheckBox
          Left = 10
          Top = 615
          Width = 160
          Height = 17
          Hint = 'Wy'#347'wietlaj wska'#378'nik punkt'#243'w '#380'ycia nad statkiem gracza.'
          Caption = 'Punkty '#380'ycia wska'#378'nik gracz'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 19
          OnClick = Elementy_Gracza_Dostosuj_CheckBoxClick
        end
        object Punkty_Życia_Wskaźnik__Przeciwnik_CheckBox: TCheckBox
          Left = 10
          Top = 635
          Width = 180
          Height = 17
          Hint = 'Wy'#347'wietlaj wska'#378'nik punkt'#243'w '#380'ycia nad statkami przeciwnik'#243'w.'
          Caption = 'Punkty '#380'ycia wska'#378'nik przeciwnik'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          OnClick = Elementy_Gracza_Dostosuj_CheckBoxClick
        end
        object Punkty_Życia_Wskaźnik__Sojusznik_CheckBox: TCheckBox
          Left = 10
          Top = 655
          Width = 180
          Height = 17
          Hint = 'Wy'#347'wietlaj wska'#378'nik punkt'#243'w '#380'ycia nad statkami sojusznik'#243'w.'
          Caption = 'Punkty '#380'ycia wska'#378'nik sojusznik'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
          OnClick = Elementy_Gracza_Dostosuj_CheckBoxClick
        end
        object Pokój_Rozmów__Na_Ekranie_CheckBox: TCheckBox
          Left = 10
          Top = 560
          Width = 150
          Height = 17
          Hint = 'Wy'#347'wietlaj pok'#243'j rozm'#243'w na ekranie gry.'
          Caption = 'Pok'#243'j rozm'#243'w na ekranie'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
          OnClick = Pokój_Rozmów__Na_Ekranie_CheckBoxClick
        end
        object Celowanie_Precyzja_Obrót_SpinEdit: TSpinEdit
          Left = 195
          Top = 95
          Width = 80
          Height = 22
          Hint = 
            'Precyzja celowania obrotu broni.'#13#10'Gdy r'#243#380'nica mi'#281'dzy k'#261'tem wycel' +
            'owania a obrotu broni jest mniejsza od tej warto'#347'ci uznaje, '#380'e b' +
            'ro'#324'  jest nakierowana na cel.'
          MaxValue = 9999999
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Value = 10
        end
        object Celowanie_Precyzja_Podniesienie_SpinEdit: TSpinEdit
          Left = 195
          Top = 125
          Width = 80
          Height = 22
          Hint = 
            'Precyzja celowania podniesienia luf broni.'#13#10'Gdy r'#243#380'nica mi'#281'dzy k' +
            #261'tem wycelowania a podniesienia luf broni jest mniejsza od tej w' +
            'arto'#347'ci uznaje, '#380'e bro'#324'  jest nakierowana na cel.'
          MaxValue = 9999999
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Value = 5
        end
        object Celownik_Wielkość_Edit: TEdit
          Left = 125
          Top = 210
          Width = 80
          Height = 21
          ParentShowHint = False
          ShowHint = False
          TabOrder = 6
          Text = '0.25'
          OnChange = Celownik_Wielkość_EditChange
          OnKeyDown = Edit_Jako_Spin_KeyDown
        end
        object Celownik_Widoczność_CheckBox: TCheckBox
          Left = 10
          Top = 155
          Width = 150
          Height = 17
          Caption = 'Celownik widoczno'#347#263
          Checked = True
          ParentShowHint = False
          ShowHint = False
          State = cbChecked
          TabOrder = 4
          OnClick = Celownik_Widoczność_CheckBoxClick
        end
        object Celownik_Widoczność_Mouse_Look_Active_CheckBox: TCheckBox
          Left = 10
          Top = 180
          Width = 220
          Height = 17
          Hint = 'Wy'#347'wietlaj celownik w trybie obracania kamery mysz'#261'.'
          Caption = 'Celownik widoczno'#347#263' obracanie mysz'#261
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 5
        end
        object Radar_Widoczność_CheckBox: TCheckBox
          Left = 10
          Top = 685
          Width = 110
          Height = 17
          Hint = 'Wy'#347'wietlaj radar na ekranie.'
          Caption = 'Radar wy'#347'wietlaj'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 22
          OnClick = Radar_Widoczność_CheckBoxClick
        end
        object Obrót_Kąt_Zablokowany_Strzał_Wskaźnik_CheckBox: TCheckBox
          Left = 10
          Top = 470
          Width = 260
          Height = 17
          Hint = 
            'Wy'#347'wietlaj wska'#378'nik zablokowanego k'#261'ta obrotu strza'#322'u broni (w z' +
            'akresie tego k'#261'ta bro'#324' mo'#380'e si'#281' obraca'#263' ale nie mo'#380'e strzela'#263').'
          Caption = 'Obr'#243't k'#261't zablokowany broni strza'#322' wska'#378'nik'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnClick = Elementy_Gracza_Dostosuj_CheckBoxClick
        end
        object Pełny_Ekran_CheckBox: TCheckBox
          Left = 10
          Top = 499
          Width = 90
          Height = 17
          Caption = 'Pe'#322'ny ekran'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnClick = Pełny_Ekran_CheckBoxClick
        end
        object Morze_Wzburzenie_SpinEdit: TSpinEdit
          Left = 130
          Top = 345
          Width = 121
          Height = 22
          Hint = 
            'Wzburzenie morza wp'#322'ywa na falowanie statku (100% jest warto'#347'ci'#261 +
            ' domy'#347'ln'#261').'
          Increment = 10
          MaxValue = 999999
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          Value = 100
          OnChange = Morze_Wzburzenie_SpinEditChange
        end
      end
    end
    object Pozostałe_TabSheet: TTabSheet
      Caption = 'Pozosta'#322'e'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Projektowy_Tryb_CheckBox: TCheckBox
        Left = 5
        Top = 50
        Width = 97
        Height = 17
        Caption = 'Projektowy tryb'
        TabOrder = 1
        OnClick = Projektowy_Tryb_CheckBoxClick
      end
      object Button1: TButton
        Left = 15
        Top = 485
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 3
        OnClick = Button1Click
      end
      object Statki_Zaprezentuj_GroupBox: TGroupBox
        Left = 5
        Top = 85
        Width = 260
        Height = 135
        Caption = 'Zaprezentuj statki'
        TabOrder = 2
        object Statki_Zaprezentuj__Pozycja_Początkowa_Etykieta_Label: TLabel
          Left = 10
          Top = 20
          Width = 97
          Height = 13
          Hint = 'Pozycja pierwszego prezentowanego statku.'
          Caption = 'Pozycja pocz'#261'tkowa'
          ParentShowHint = False
          ShowHint = True
        end
        object Statki_Zaprezentuj__Pozycja_Początkowa__X_Etykieta_Label: TLabel
          Left = 10
          Top = 40
          Width = 6
          Height = 13
          Hint = 'Wsp'#243#322'rz'#281'dna X pozycji pierwszego prezentowanego statku.'
          Caption = 'x'
          ParentShowHint = False
          ShowHint = True
        end
        object Statki_Zaprezentuj__Pozycja_Początkowa__Y_Etykieta_Label: TLabel
          Left = 10
          Top = 65
          Width = 6
          Height = 13
          Hint = 'Wsp'#243#322'rz'#281'dna Y pozycji pierwszego prezentowanego statku.'
          Caption = 'y'
          ParentShowHint = False
          ShowHint = True
        end
        object Statki_Zaprezentuj__Pozycja_Początkowa__Z_Etykieta_Label: TLabel
          Left = 10
          Top = 95
          Width = 5
          Height = 13
          Hint = 'Wsp'#243#322'rz'#281'dna Z pozycji pierwszego prezentowanego statku.'
          Caption = 'z'
          ParentShowHint = False
          ShowHint = True
        end
        object Statki_Zaprezentuj__Odstępy_Między_Statkami_Etykieta_Label: TLabel
          Left = 130
          Top = 20
          Width = 120
          Height = 13
          Hint = 'Odst'#281'py mi'#281'dzy prezentowanymi statkami.'
          Caption = 'Odst'#281'py mi'#281'dzy statkami'
          ParentShowHint = False
          ShowHint = True
        end
        object Statki_Zaprezentuj__Pozycja_Początkowa__X_SpinEdit: TSpinEdit
          Left = 25
          Top = 40
          Width = 80
          Height = 22
          Hint = 'Wsp'#243#322'rz'#281'dna X pozycji pierwszego prezentowanego statku.'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Value = 10
          OnKeyDown = Statki_ZaprezentujKeyDown
        end
        object Statki_Zaprezentuj__Pozycja_Początkowa__Y_SpinEdit: TSpinEdit
          Left = 25
          Top = 70
          Width = 80
          Height = 22
          Hint = 'Wsp'#243#322'rz'#281'dna Y pozycji pierwszego prezentowanego statku.'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Value = 0
          OnKeyDown = Statki_ZaprezentujKeyDown
        end
        object Statki_Zaprezentuj__Pozycja_Początkowa__Z_SpinEdit: TSpinEdit
          Left = 25
          Top = 100
          Width = 80
          Height = 22
          Hint = 'Wsp'#243#322'rz'#281'dna Z pozycji pierwszego prezentowanego statku.'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Value = 0
          OnKeyDown = Statki_ZaprezentujKeyDown
        end
        object Statki_Zaprezentuj__Odstępy_Między_Statkami_SpinEdit: TSpinEdit
          Left = 130
          Top = 40
          Width = 80
          Height = 22
          Hint = 'Odst'#281'py mi'#281'dzy prezentowanymi statkami.'
          MaxValue = 0
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Value = 10
          OnKeyDown = Statki_ZaprezentujKeyDown
        end
        object Statki_Zaprezentuj__Kolumna_CheckBox: TCheckBox
          Left = 130
          Top = 70
          Width = 130
          Height = 17
          Hint = 'Ustawiaj prezentowane statki w kolumnie.'
          Caption = 'Prezentuj w kolumnie'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnKeyDown = Statki_ZaprezentujKeyDown
        end
        object Statki_Zaprezentuj_Button: TButton
          Left = 130
          Top = 100
          Width = 75
          Height = 25
          Hint = 'Zaprezentuj statki.'
          Caption = 'Zaprezentuj'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = Statki_Zaprezentuj_ButtonClick
        end
        object Statki_Zaprezentuj__Zwolnij_BitBtn: TBitBtn
          Left = 215
          Top = 100
          Width = 35
          Height = 25
          Hint = 'Zako'#324'cz prezentowanie statk'#243'w.'
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = Statki_Zaprezentuj__Zwolnij_BitBtnClick
        end
      end
      object Statystyki_Wypisz_Button: TButton
        Left = 10
        Top = 10
        Width = 75
        Height = 25
        Hint = 'Wypisz statystyki (je'#380'eli dost'#281'pne).'
        Caption = 'Statystyki'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = Statystyki_Wypisz_ButtonClick
      end
    end
    object Klawiatura_Konfiguracja_TabSheet: TTabSheet
      Caption = 'Konfiguracja klawiatury'
      ImageIndex = 5
      object Klawiatura_Konfiguracja__Przyciski_Panel: TPanel
        Left = 0
        Top = 0
        Width = 342
        Height = 35
        Align = alTop
        TabOrder = 0
        object Klawiatura_Konfiguracja__Zapisz_Button: TButton
          Left = 210
          Top = 5
          Width = 75
          Height = 25
          Hint = 'Zapisz konfiguracj'#281' klawiszy.'
          Caption = 'Zapisz'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = Klawiatura_Konfiguracja__Zapisz_ButtonClick
        end
        object Klawiatura_Konfiguracja__Wczytaj_Button: TButton
          Left = 110
          Top = 5
          Width = 75
          Height = 25
          Hint = 'Wczytaj konfiguracj'#281' klawiszy.'
          Caption = 'Wczytaj'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Klawiatura_Konfiguracja__Wczytaj_ButtonClick
        end
        object Klawiatura_Konfiguracja__Domyślna_Button: TButton
          Left = 10
          Top = 5
          Width = 75
          Height = 25
          Hint = 'Przywr'#243#263' domy'#347'ln'#261' konfiguracj'#281' klawiszy.'
          Caption = 'Domy'#347'lna'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = Klawiatura_Konfiguracja__Domyślna_ButtonClick
        end
        object Klawiatura_Konfiguracja__Niepowtarzalność_Sprawdź_Button: TButton
          Left = 310
          Top = 5
          Width = 75
          Height = 25
          Hint = 'Sprawd'#378' niepowtarzalno'#347#263' przypisanych konfiguracji klawiszy.'
          Caption = 'Sprawd'#378
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = Klawiatura_Konfiguracja__Niepowtarzalność_Sprawdź_ButtonClick
        end
        object Klawiatura_Konfiguracja__Konfiguracja_Numer_SpinEdit: TSpinEdit
          Left = 405
          Top = 5
          Width = 50
          Height = 22
          Hint = 'Zapisz wczytaj konfiguracj'#281' klawiatury o podanym numerze.'
          MaxValue = 9999999
          MinValue = 1
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Value = 1
        end
        object Klawiatura_Konfiguracja__Rozmiar_Zakładki_Poszerz_CheckBox: TCheckBox
          Left = 475
          Top = 5
          Width = 150
          Height = 17
          Hint = 
            'Podczas prze'#322#261'czania zak'#322'adki na konfiguracj'#281' klawiatury zwi'#281'ksz' +
            'aj szeroko'#347#263' panelu zak'#322'adek konfiguracji.'
          Caption = 'Rozmiar zak'#322'adki poszerz'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 5
        end
      end
      object Klawiatura_Konfiguracja_ScrollBox: TScrollBox
        Left = 45
        Top = 65
        Width = 185
        Height = 41
        TabOrder = 1
        OnMouseWheel = ScrollBoxMouseWheel
      end
    end
    object O_Programie_TabSheet: TTabSheet
      Caption = 'O programie'
      ImageIndex = 6
      object O_Programie_Label: TLabel
        Left = 0
        Top = 0
        Width = 342
        Height = 234
        Align = alTop
        Caption = 
          'Statki z Eris Kallisti Dyskordia'#13#10'wersja 2021.02.13.'#13#10'W produkcj' +
          'i.'#13#10#13#10'MIT License'#13#10#13#10'Copyright (c) 2017 Jacek Mulawka'#13#10#13#10'j.mulaw' +
          'ka@interia.pl'#13#10#13#10'https://github.com/jacek-mulawka'#13#10#13#10#13#10'Program j' +
          'est darmowy, udost'#281'pniony w postaci takiej jakiej jest wraz ze w' +
          'szystkimi b'#322#281'dami. U'#380'ytkownik zyskuje dost'#281'p do programu, u'#380'ywa ' +
          'programu na w'#322'asne ryzyko i ponosi wy'#322#261'czn'#261' odpowiedzialno'#347#263' za ' +
          'wszelkie szkody (w'#322'asne i niew'#322'asne) materialne i niematerialne ' +
          'oraz utrat'#281' danych w zwi'#261'zku z u'#380'ywaniem programu.'
        WordWrap = True
      end
    end
  end
  object Gra_GLScene: TGLScene
    Left = 40
    Top = 25
    object GLSkyDome1: TGLSkyDome
      Direction.Coordinates = {000000000000803F0000000000000000}
      Position.Coordinates = {00000000000040C0000000000000803F}
      Up.Coordinates = {0000000000000000000080BF00000000}
      Bands = <
        item
          StartColor.Color = {0000803F0000803F0000803F0000803F}
          StopAngle = 15.000000000000000000
          StopColor.Color = {0000000000000000F6281C3F0000803F}
        end
        item
          StartAngle = 15.000000000000000000
          StartColor.Color = {0000000000000000F6281C3F0000803F}
          StopAngle = 90.000000000000000000
          StopColor.Color = {938C0C3E938C0C3E938E0E3F0000803F}
          Stacks = 4
        end>
      Stars = <>
    end
    object Gra_GLLightSource: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000000000007A44000000000000803F}
      LightStyle = lsOmni
      SpotCutOff = 180.000000000000000000
    end
    object Gra_GLCamera: TGLCamera
      DepthOfView = 10000.000000000000000000
      FocalLength = 50.000000000000000000
      Position.Coordinates = {0000000000000040000020410000803F}
    end
    object Zero_GLSphere: TGLSphere
      Visible = False
      Pickable = False
      Radius = 0.500000000000000000
    end
    object X_Lewo_GLCube: TGLCube
      Position.Coordinates = {000020C100000000000000000000803F}
      Visible = False
      Pickable = False
      CubeSize = {0000803F000020410000803F}
    end
    object Z_Tył_GLCone1: TGLCone
      Position.Coordinates = {00000000000000000000A0400000803F}
      Scale.Coordinates = {0000803FCDCCCC3D0000803F00000000}
      Visible = False
      Pickable = False
      BottomRadius = 0.500000000000000000
      Height = 1.000000000000000000
    end
    object Woda_GLPlane: TGLPlane
      Material.FrontProperties.Diffuse.Color = {EBE0E03E9A93133FE4DB5B3F0000803F}
      Direction.Coordinates = {000000000000803F0000000000000000}
      Up.Coordinates = {0000000000000000000080BF00000000}
      Pickable = False
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      BehavioursData = {
        0458434F4C02010201060D54474C42436F6C6C6973696F6E0202020012000000
        00020006164772615F474C436F6C6C6973696F6E4D616E6167657202030200}
    end
    object Dno_GLPlane: TGLPlane
      Material.FrontProperties.Diffuse.Color = {8FC2353F6666263FB81E853E0000803F}
      Direction.Coordinates = {000000000000803F0000000000000000}
      Position.Coordinates = {00000000000020C1000000000000803F}
      Up.Coordinates = {0000000000000000000080BF00000000}
      Height = 1.000000000000000000
      Width = 1.000000000000000000
    end
    object GLWaterPlane1: TGLWaterPlane
      Scale.Coordinates = {0000C8420000803F0000C84200000000}
      Visible = False
      RainTimeInterval = 100
      RainForce = 25.000000000000000000
      Viscosity = 1.000000000000000000
      Elastic = 10.000000000000000000
      Resolution = 256
      SimulationFrequency = 30.000000000000000000
    end
    object Gra_Obiekty_GLDummyCube: TGLDummyCube
      Pickable = False
      CubeSize = 1.000000000000000000
    end
    object Woda_Kolizje_GLCube: TGLCube
      Visible = False
      Pickable = False
      BehavioursData = {
        0458434F4C02010201060D54474C42436F6C6C6973696F6E0202020012000000
        00020006164772615F474C436F6C6C6973696F6E4D616E6167657202030200}
      CubeSize = {0000803F0AD7233C0000803F}
    end
    object Dno_Kolizje_GLCube: TGLCube
      Visible = False
      Pickable = False
      BehavioursData = {
        0458434F4C02010201060D54474C42436F6C6C6973696F6E0202020012000000
        00020006164772615F474C436F6C6C6973696F6E4D616E6167657202030200}
      CubeSize = {0000803F0AD7233C0000803F}
    end
    object GLLines1: TGLLines
      Direction.Coordinates = {0000000000000000000080BF00000000}
      Visible = False
      Pickable = False
      LineWidth = 100.000000000000000000
      Nodes = <>
      Options = []
    end
    object GLLines2: TGLLines
      Direction.Coordinates = {0000000000000000000080BF00000000}
      Visible = False
      Pickable = False
      LineColor.Color = {EBE0E03EE4DB5B3F9A93133F0000803F}
      LineWidth = 100.000000000000000000
      Nodes = <>
      Options = []
    end
    object GLLines3: TGLLines
      Direction.Coordinates = {0000000000000000000080BF00000000}
      Visible = False
      Pickable = False
      LineColor.Color = {ACC8483EACC8483ECDCC4C3F0000803F}
      LineWidth = 100.000000000000000000
      Nodes = <>
      Options = []
    end
    object Celownicza_GLSphere: TGLSphere
      Material.FrontProperties.Emission.Color = {CFBC3C3EA19E9E3ECFBC3C3E0000803F}
      Visible = False
      Pickable = False
      Radius = 0.500000000000000000
    end
    object Celowniczy_GLDummyCube: TGLDummyCube
      Pickable = False
      CubeSize = 0.250000000000000000
      VisibleAtRunTime = True
    end
    object GLParticleFXRenderer1: TGLParticleFXRenderer
    end
    object Informacje_Główne_GLHUDText: TGLHUDText
      Pickable = False
      BitmapFont = GLWindowsBitmapFont1
      Text = 'aaa'
      Rotation = 0.000000000000000000
    end
    object Informacje_Dodatkowe_GLHUDText: TGLHUDText
      Position.Coordinates = {0000964300009643000000000000803F}
      Pickable = False
      BitmapFont = GLWindowsBitmapFont1
      Text = 'bbb'
      Rotation = 0.000000000000000000
      Alignment = taRightJustify
      Layout = tlBottom
      ModulateColor.Color = {6666663FC3F5683F48E17A3F0000803F}
    end
    object GLArrowLine_Żółta: TGLArrowLine
      Material.FrontProperties.Emission.Color = {E4DB5B3FE4DB5B3FEBE0E03E0000803F}
      Position.Coordinates = {0000000000004040000000000000803F}
      Visible = False
      Pickable = False
      BottomRadius = 0.100000001490116100
      Height = 1.000000000000000000
      TopRadius = 0.100000001490116100
      TopArrowHeadHeight = 0.500000000000000000
      TopArrowHeadRadius = 0.200000002980232200
      BottomArrowHeadHeight = 0.500000000000000000
      BottomArrowHeadRadius = 0.200000002980232200
    end
    object GLArrowLine_Zielona: TGLArrowLine
      Material.FrontProperties.Emission.Color = {8A8F0F3FBEBC3C3F8A8F0F3F0000803F}
      Position.Coordinates = {0000000000008040000000000000803F}
      Visible = False
      Pickable = False
      BottomRadius = 0.100000001490116100
      Height = 1.000000000000000000
      TopRadius = 0.100000001490116100
      TopArrowHeadHeight = 0.500000000000000000
      TopArrowHeadRadius = 0.200000002980232200
      BottomArrowHeadHeight = 0.500000000000000000
      BottomArrowHeadRadius = 0.200000002980232200
    end
  end
  object Gra_GLCadencer: TGLCadencer
    Scene = Gra_GLScene
    SleepLength = -10
    OnProgress = Gra_GLCadencerProgress
    Left = 40
    Top = 80
  end
  object Gra_GLUserInterface: TGLUserInterface
    MouseSpeed = 10.000000000000000000
    GLNavigator = Gra_GLNavigator
    Left = 40
    Top = 190
  end
  object Gra_GLNavigator: TGLNavigator
    VirtualUp.Coordinates = {000000000000803F0000000000000000}
    MovingObject = Gra_GLCamera
    UseVirtualUp = True
    Left = 40
    Top = 135
  end
  object GLWindowsBitmapFont1: TGLWindowsBitmapFont
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Georgia'
    Font.Style = []
    Left = 160
    Top = 250
  end
  object Czas_Bezwzględny_Timer: TTimer
    Enabled = False
    OnTimer = Czas_Bezwzględny_TimerTimer
    Left = 555
    Top = 10
  end
  object IdTCPServer1: TIdTCPServer
    Bindings = <>
    DefaultPort = 0
    OnConnect = IdTCPServer1Connect
    OnDisconnect = IdTCPServer1Disconnect
    OnExecute = IdTCPServer1Execute
    Left = 481
    Top = 81
  end
  object IdTCPClient1: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 577
    Top = 81
  end
  object Klient_IdTCP_Czyta_Timer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Klient_IdTCP_Czyta_TimerTimer
    Left = 551
    Top = 195
  end
  object Serwer_Wysyła_Timer: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Serwer_Wysyła_TimerTimer
    Left = 420
    Top = 195
  end
  object Gra_GLCollisionManager: TGLCollisionManager
    OnCollision = Gra_GLCollisionManagerCollision
    Left = 40
    Top = 250
  end
  object GLCollisionManager2: TGLCollisionManager
    OnCollision = GLCollisionManager2Collision
    Left = 225
    Top = 120
  end
  object Efekt__Wpadnięcie_Do_Wody_0_GLFireFXManager: TGLFireFXManager
    FireDir.Coordinates = {000000009A99993E0000000000000000}
    InitialDir.Coordinates = {00000000CDCC4C3E0000000000000000}
    Cadencer = Gra_GLCadencer
    MaxParticles = 128
    ParticleSize = 0.150000005960464500
    InnerColor.Color = {00000000F8FEFE3E0000803F0000803F}
    OuterColor.Color = {EBE0E03EE4DB5B3FE4DB5B3F0000803F}
    FireDensity = 0.600000023841857900
    FireEvaporation = 0.860000014305114700
    ParticleLife = 2
    FireBurst = 1.000000000000000000
    FireRadius = 0.100000001490116100
    Disabled = False
    Paused = False
    ParticleInterval = 0.039999999105930330
    UseInterval = True
    Left = 395
    Top = 411
  end
  object Efekt__Wpadnięcie_Do_Wody_GLPolygonPFXManager: TGLPolygonPFXManager
    Cadencer = Gra_GLCadencer
    Renderer = GLParticleFXRenderer1
    Friction = 1.000000000000000000
    NbSides = 9
    ParticleSize = 0.200000002980232200
    ColorInner.Color = {00000000000000001283203F0000803F}
    LifeColors = <
      item
        ColorInner.Color = {0000803F0000803F0000803F9A99193F}
        LifeTime = 2.500000000000000000
        SizeScale = 1.000000000000000000
      end
      item
        LifeTime = 3.500000000000000000
        SizeScale = 1.000000000000000000
      end>
    Left = 240
    Top = 391
  end
  object Efekt__Ogień_GLFireFXManager: TGLFireFXManager
    Cadencer = Gra_GLCadencer
    ParticleSize = 0.100000001490116100
    FireDensity = 0.500000000000000000
    FireEvaporation = 0.860000014305114700
    ParticleLife = 1
    FireBurst = 1.000000000000000000
    FireRadius = 0.100000001490116100
    Disabled = False
    Paused = False
    ParticleInterval = 0.009999999776482582
    UseInterval = True
    Left = 300
    Top = 336
  end
  object Efekt__Dym_GLPerlinPFXManager: TGLPerlinPFXManager
    Cadencer = Gra_GLCadencer
    Renderer = GLParticleFXRenderer1
    Acceleration.Coordinates = {000000000000803F0000000000000000}
    Friction = 1.000000000000000000
    Smoothness = 20.000000000000000000
    Brightness = 2.000000000000000000
    Gamma = 1.000000000000000000
    NoiseScale = 10
    NoiseAmplitude = 5
    ParticleSize = 1.200000047683716000
    ColorInner.Color = {00000000000000000000000000000000}
    LifeColors = <
      item
        ColorInner.Color = {2FDDA43E2FDDA43E2FDDA43E0000803F}
        LifeTime = 1.000000000000000000
        SizeScale = 1.000000000000000000
        RotateAngle = 2.000000000000000000
      end
      item
        LifeTime = 3.000000000000000000
        SizeScale = 1.000000000000000000
        RotateAngle = 90.000000000000000000
      end>
    Left = 81
    Top = 336
  end
  object Efekt__Mgła_GLPerlinPFXManager: TGLPerlinPFXManager
    Cadencer = Gra_GLCadencer
    Renderer = GLParticleFXRenderer1
    Friction = 1.000000000000000000
    Smoothness = 1.000000000000000000
    Brightness = 0.100000001490116100
    Gamma = 0.500000000000000000
    NoiseSeed = 53434
    NoiseAmplitude = 70
    ParticleSize = 10.000000000000000000
    ColorInner.Color = {00000000000000000000000000000000}
    LifeColors = <
      item
        ColorInner.Color = {DF4F4D3FDF4F4D3FDF4F4D3F0000803F}
        LifeTime = 1.000000000000000000
        SizeScale = 1.100000023841858000
        RotateAngle = 10.000000000000000000
      end
      item
        ColorInner.Color = {3789213F3789213F3789213F0000803F}
        LifeTime = 2.000000000000000000
        SizeScale = 1.200000047683716000
        RotateAngle = 20.000000000000000000
      end
      item
        ColorInner.Color = {08ACDC3E08ACDC3E08ACDC3E0000803F}
        LifeTime = 3.000000000000000000
        SizeScale = 1.299999952316284000
        RotateAngle = 30.000000000000000000
      end
      item
        ColorInner.Color = {17D94E3E17D94E3E17D94E3E0000803F}
        LifeTime = 4.000000000000000000
        SizeScale = 1.399999976158142000
        RotateAngle = 40.000000000000000000
      end
      item
        ColorInner.Color = {0000803F0000803F0000803F00000000}
        LifeTime = 5.000000000000000000
        SizeScale = 1.500000000000000000
        RotateAngle = 50.000000000000000000
      end>
    Left = 190
    Top = 316
  end
  object Efekt__Smuga_GLPerlinPFXManager: TGLPerlinPFXManager
    Cadencer = Gra_GLCadencer
    Renderer = GLParticleFXRenderer1
    Friction = 1.000000000000000000
    Smoothness = 20.000000000000000000
    Brightness = 2.000000000000000000
    Gamma = 1.000000000000000000
    NoiseScale = 10
    NoiseAmplitude = 5
    ParticleSize = 1.200000047683716000
    ColorInner.Color = {00000000000000000000000000000000}
    LifeColors = <
      item
        ColorInner.Color = {2FDDA43E2FDDA43E2FDDA43E0000803F}
        LifeTime = 1.000000000000000000
        SizeScale = 1.000000000000000000
        RotateAngle = 2.000000000000000000
      end
      item
        LifeTime = 3.000000000000000000
        SizeScale = 1.000000000000000000
        RotateAngle = 90.000000000000000000
      end>
    Left = 81
    Top = 411
  end
  object IdUDPServer1: TIdUDPServer
    Bindings = <>
    DefaultPort = 0
    OnUDPRead = IdUDPServer1UDPRead
    Left = 481
    Top = 135
  end
  object IdUDPClient1: TIdUDPClient
    Port = 0
    Left = 577
    Top = 135
  end
  object Klient_IdUDP_Czyta_Timer: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Klient_IdUDP_Czyta_TimerTimer
    Left = 551
    Top = 255
  end
  object Serwer_Klient_Odłączenie_Timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Serwer_Klient_Odłączenie_TimerTimer
    Left = 393
    Top = 255
  end
  object Klient_Wysyła_Timer: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Klient_Wysyła_TimerTimer
    Left = 551
    Top = 320
  end
  object Radar_Timer: TTimer
    Enabled = False
    OnTimer = Radar_TimerTimer
    Left = 676
    Top = 445
  end
  object Informacje_Dodatkowe_Timer: TTimer
    Enabled = False
    OnTimer = Informacje_Dodatkowe_TimerTimer
    Left = 558
    Top = 445
  end
  object Radar_GLScene: TGLScene
    Left = 140
    Top = 745
    object Radar_GLLightSource: TGLLightSource
      ConstAttenuation = 1.000000000000000000
      Position.Coordinates = {0000000000007A44000000000000803F}
      SpotCutOff = 180.000000000000000000
    end
    object Radar_0_GLSphere: TGLSphere
      Material.FrontProperties.Ambient.Color = {00000000000000000000000000000000}
      Material.FrontProperties.Diffuse.Color = {6666663FC3F5683F48E17A3F0000803F}
      Material.FrontProperties.Emission.Color = {00000000000000000000000000000000}
      Position.Coordinates = {0000000000000000000080BF0000803F}
      Radius = 0.500000000000000000
    end
    object Radar_Tło_GLPlane: TGLPlane
      Material.FrontProperties.Ambient.Color = {00000000000000000000000000000000}
      Material.FrontProperties.Diffuse.Color = {938C0C3EDCD6D63E938E0E3F0000803F}
      Material.FrontProperties.Emission.Color = {00000000000000000000000000000000}
      Direction.Coordinates = {000000000000803F0000000000000000}
      Up.Coordinates = {0000000000000000000080BF00000000}
      Height = 100.000000000000000000
      Width = 100.000000000000000000
    end
    object Radar_Ślady_GLDummyCube: TGLDummyCube
      CubeSize = 1.000000000000000000
    end
    object Radar_Obiekty_GLDummyCube: TGLDummyCube
      CubeSize = 1.000000000000000000
    end
    object Radar_Statek_GLDummyCube: TGLDummyCube
      CubeSize = 1.000000000000000000
      object Radar_GLCamera: TGLCamera
        DepthOfView = 10000.000000000000000000
        FocalLength = 50.000000000000000000
        CameraStyle = csInfinitePerspective
        Position.Coordinates = {0000000000002041000000000000803F}
        Direction.Coordinates = {00000000000080BF0000000000000000}
        Up.Coordinates = {00000000000000000000803F00000000}
      end
      object Radar_Statek_GLFrustrum: TGLFrustrum
        Material.FrontProperties.Ambient.Color = {00000000000000000000000000000000}
        Material.FrontProperties.Diffuse.Color = {00000000000000000000000000000000}
        Material.FrontProperties.Emission.Color = {A7AD2D3FEAEA6A3FEAEA6A3F0000803F}
        Direction.Coordinates = {004474180000803F2EBD3BB300000000}
        PitchAngle = 90.000000000000000000
        RollAngle = 180.000000000000000000
        Scale.Coordinates = {0000003F0000803F0000803F00000000}
        Up.Coordinates = {2EBDBB332EBD3B330000803F00000000}
        FrustrumSize = {0000803F0000803F0000803F0000803F}
      end
      object Radio_Zasięg_GLDisk: TGLDisk
        Material.FrontProperties.Ambient.Color = {00000000000000000000000000000000}
        Material.FrontProperties.Diffuse.Color = {00000000000000000000000000000000}
        Material.FrontProperties.Emission.Color = {D9D8D83ED9D8D83EE1E0E03D0000803F}
        Material.PolygonMode = pmLines
        Direction.Coordinates = {000000000000803F0000000000000000}
        Up.Coordinates = {0000000000000000000080BF00000000}
        Loops = 1
        OuterRadius = 1.000000000000000000
        Slices = 9
        SweepAngle = 360.000000000000000000
      end
      object Radar_Zasięg_GLDisk: TGLDisk
        Material.FrontProperties.Ambient.Color = {00000000000000000000000000000000}
        Material.FrontProperties.Diffuse.Color = {938C0C3EDCD6D63E938E0E3F0000803F}
        Material.FrontProperties.Emission.Color = {00000000000000000000000000000000}
        Material.PolygonMode = pmLines
        Direction.Coordinates = {000000000000803F0000000000000000}
        Up.Coordinates = {0000000000000000000080BF00000000}
        Loops = 1
        OuterRadius = 1.000000000000000000
        SweepAngle = 360.000000000000000000
      end
    end
  end
end
