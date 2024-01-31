unit Wyglad_Elementy;

  // W tych funkcjach uwzgl�dni� wszystkie typy tutaj wyst�puj�ce.

  // zt_1 := Wyglad_Elementy.F_1( TGLCustomSceneObject(object_f) ) - odczyt warto�ci z obiektu, kt�ry nie jest obiektem Wyglad_Elementy nie powinien nic zepsu� (otrzyma si� chyba domy�lna pust� warto��).
  // Wyglad_Elementy.F_1( TGLCustomSceneObject(object_f), zt_1 ) - zapis warto�ci do obiektu, kt�ry nie jest obiektem Wyglad_Elementy mo�e zmodyfikowa� nieodpowiedni� cz�� pami�ci i co� uszkodzi�.

interface

uses
  GLS.Objects, GLS.GeomObjects, GLS.Scene,
  System.Classes;

type
  TArray_Of_Integer = array of integer;

  TObiekt_Rodzaj = ( or_Brak, or_Amunicja, or_Amunicja__Obra�enia_Zasi�g, or_D�wi�k_Emiter, or_Kontener_Prymityw�w, or_L�d, or_�apacz_Samolot�w, or_Statek, or_Wzorzec ); // or_Wzorzec - obiekt b�d�cy wzorcem w p�tlach.

  TSt_GLCapsule = class( TGLCapsule )
  public
    dzi�b,
    radar,
    radar_ignoruje, // Obiekt nie b�dzie rysowany na radarze (zbyt wiele 'ma�ych' element�w l�du spowalnia od�wie�anie radaru).
    �wiat�a_miganie,
    �wiat�a_miganie__�wiat�o_w��czone,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    d�wi�ki__losowo��, // Z jakiego zakresu mo�na losowa� ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku.
    d�wi�ki__op�nienie_losowe, // Ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku. Warto�� losowana z zakresu d�wi�ki__losowo��.
    �wiat�a_miganie__losowo��, // Z jakiego zakresu mo�na losowa� ile razy ma by� wyd�u�ony pierwszy krok migni�cia.
    �wiat�a_miganie__op�nienie_losowe, // Ile razy pierwszy krok migni�cia zostanie wyd�u�ony. Warto�� losowana z zakresu �wiat�a_miganie__losowo��.
    �wiat�a_miganie__tabela_czas�w_indeks
      : integer;

    identyfikator_elementu,
    �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    d�wi�ki__zasi�g_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp�yw__amunicja_uzupe�nianie,
    kolizja_wp�yw__obra�enia,
    kolizja_wp�yw__pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    d�wi�k_nazwa : string;

    �wiat�a_miganie__tabela_czas�w_milisekundy_t : TArray_Of_Integer; // Kolejne odst�py pomi�dzy zgaszeniami i zapaleniami �wiat�a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCapsule

  TSt_GLCone = class( TGLCone )
  public
    dzi�b,
    radar,
    radar_ignoruje, // Obiekt nie b�dzie rysowany na radarze (zbyt wiele 'ma�ych' element�w l�du spowalnia od�wie�anie radaru).,
    �wiat�a_miganie,
    �wiat�a_miganie__�wiat�o_w��czone,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    d�wi�ki__losowo��, // Z jakiego zakresu mo�na losowa� ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku.
    d�wi�ki__op�nienie_losowe, // Ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku. Warto�� losowana z zakresu d�wi�ki__losowo��.
    �wiat�a_miganie__losowo��, // Z jakiego zakresu mo�na losowa� ile razy ma by� wyd�u�ony pierwszy krok migni�cia.
    �wiat�a_miganie__op�nienie_losowe, // Ile razy pierwszy krok migni�cia zostanie wyd�u�ony. Warto�� losowana z zakresu �wiat�a_miganie__losowo��.
    �wiat�a_miganie__tabela_czas�w_indeks
      : integer;

    identyfikator_elementu,
    �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    d�wi�ki__zasi�g_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp�yw__amunicja_uzupe�nianie,
    kolizja_wp�yw__obra�enia,
    kolizja_wp�yw__pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    d�wi�k_nazwa : string;

    �wiat�a_miganie__tabela_czas�w_milisekundy_t : TArray_Of_Integer; // Kolejne odst�py pomi�dzy zgaszeniami i zapaleniami �wiat�a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCone

  TSt_GLCube = class( TGLCube )
  public
    dzi�b,
    radar,
    radar_ignoruje, // Obiekt nie b�dzie rysowany na radarze (zbyt wiele 'ma�ych' element�w l�du spowalnia od�wie�anie radaru).,
    �wiat�a_miganie,
    �wiat�a_miganie__�wiat�o_w��czone,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    d�wi�ki__losowo��, // Z jakiego zakresu mo�na losowa� ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku.
    d�wi�ki__op�nienie_losowe, // Ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku. Warto�� losowana z zakresu d�wi�ki__losowo��.
    �wiat�a_miganie__losowo��, // Z jakiego zakresu mo�na losowa� ile razy ma by� wyd�u�ony pierwszy krok migni�cia.
    �wiat�a_miganie__op�nienie_losowe, // Ile razy pierwszy krok migni�cia zostanie wyd�u�ony. Warto�� losowana z zakresu �wiat�a_miganie__losowo��.
    �wiat�a_miganie__tabela_czas�w_indeks
      : integer;

    identyfikator_elementu,
    �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    d�wi�ki__zasi�g_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp�yw__amunicja_uzupe�nianie,
    kolizja_wp�yw__obra�enia,
    kolizja_wp�yw__pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    d�wi�k_nazwa : string;

    �wiat�a_miganie__tabela_czas�w_milisekundy_t : TArray_Of_Integer; // Kolejne odst�py pomi�dzy zgaszeniami i zapaleniami �wiat�a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCube

  TSt_GLCylinder = class( TGLCylinder )
  public
    dzi�b,
    radar,
    radar_ignoruje, // Obiekt nie b�dzie rysowany na radarze (zbyt wiele 'ma�ych' element�w l�du spowalnia od�wie�anie radaru).,
    �wiat�a_miganie,
    �wiat�a_miganie__�wiat�o_w��czone,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    d�wi�ki__losowo��, // Z jakiego zakresu mo�na losowa� ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku.
    d�wi�ki__op�nienie_losowe, // Ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku. Warto�� losowana z zakresu d�wi�ki__losowo��.
    �wiat�a_miganie__losowo��, // Z jakiego zakresu mo�na losowa� ile razy ma by� wyd�u�ony pierwszy krok migni�cia.
    �wiat�a_miganie__op�nienie_losowe, // Ile razy pierwszy krok migni�cia zostanie wyd�u�ony. Warto�� losowana z zakresu �wiat�a_miganie__losowo��.
    �wiat�a_miganie__tabela_czas�w_indeks
      : integer;

    identyfikator_elementu,
    �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    d�wi�ki__zasi�g_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp�yw__amunicja_uzupe�nianie,
    kolizja_wp�yw__obra�enia,
    kolizja_wp�yw__pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    d�wi�k_nazwa : string;

    �wiat�a_miganie__tabela_czas�w_milisekundy_t : TArray_Of_Integer; // Kolejne odst�py pomi�dzy zgaszeniami i zapaleniami �wiat�a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCylinder

  TSt_GLDummyCube = class( TGLDummyCube )
  public
    dzi�b,
    radar,
    radar_ignoruje, // Obiekt nie b�dzie rysowany na radarze (zbyt wiele 'ma�ych' element�w l�du spowalnia od�wie�anie radaru).,
    radar_ignoruje__przeka�_potomkom, // Czy warto�� ustawiona dla rodzica ma zosta� ustawiona potomkom (domy�lnie potomkowie s� zarz�dzani wed�ug ich w�asnych definicji).
    �wiat�a_miganie,
    �wiat�a_miganie__�wiat�o_w��czone,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    d�wi�ki__losowo��, // Z jakiego zakresu mo�na losowa� ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku.
    d�wi�ki__op�nienie_losowe, // Ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku. Warto�� losowana z zakresu d�wi�ki__losowo��.
    �wiat�a_miganie__losowo��, // Z jakiego zakresu mo�na losowa� ile razy ma by� wyd�u�ony pierwszy krok migni�cia.
    �wiat�a_miganie__op�nienie_losowe, // Ile razy pierwszy krok migni�cia zostanie wyd�u�ony. Warto�� losowana z zakresu �wiat�a_miganie__losowo��.
    �wiat�a_miganie__tabela_czas�w_indeks
      : integer;

    identyfikator_elementu,
    �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    d�wi�ki__zasi�g_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp�yw__amunicja_uzupe�nianie,
    kolizja_wp�yw__obra�enia,
    kolizja_wp�yw__pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    d�wi�k_nazwa : string;

    �wiat�a_miganie__tabela_czas�w_milisekundy_t : TArray_Of_Integer; // Kolejne odst�py pomi�dzy zgaszeniami i zapaleniami �wiat�a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLDummyCube

  TSt_GLFrustrum = class( TGLFrustrum )
  public
    dzi�b,
    radar,
    radar_ignoruje, // Obiekt nie b�dzie rysowany na radarze (zbyt wiele 'ma�ych' element�w l�du spowalnia od�wie�anie radaru).,
    �wiat�a_miganie,
    �wiat�a_miganie__�wiat�o_w��czone,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    d�wi�ki__losowo��, // Z jakiego zakresu mo�na losowa� ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku.
    d�wi�ki__op�nienie_losowe, // Ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku. Warto�� losowana z zakresu d�wi�ki__losowo��.
    �wiat�a_miganie__losowo��, // Z jakiego zakresu mo�na losowa� ile razy ma by� wyd�u�ony pierwszy krok migni�cia.
    �wiat�a_miganie__op�nienie_losowe, // Ile razy pierwszy krok migni�cia zostanie wyd�u�ony. Warto�� losowana z zakresu �wiat�a_miganie__losowo��.
    �wiat�a_miganie__tabela_czas�w_indeks
      : integer;

    identyfikator_elementu,
    �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    d�wi�ki__zasi�g_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp�yw__amunicja_uzupe�nianie,
    kolizja_wp�yw__obra�enia,
    kolizja_wp�yw__pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    d�wi�k_nazwa : string;

    �wiat�a_miganie__tabela_czas�w_milisekundy_t : TArray_Of_Integer; // Kolejne odst�py pomi�dzy zgaszeniami i zapaleniami �wiat�a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLFrustrum

  TSt_GLSphere = class( TGLSphere )
  public
    dzi�b,
    radar,
    radar_ignoruje, // Obiekt nie b�dzie rysowany na radarze (zbyt wiele 'ma�ych' element�w l�du spowalnia od�wie�anie radaru).,
    �wiat�a_miganie,
    �wiat�a_miganie__�wiat�o_w��czone,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    d�wi�ki__losowo��, // Z jakiego zakresu mo�na losowa� ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku.
    d�wi�ki__op�nienie_losowe, // Ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku. Warto�� losowana z zakresu d�wi�ki__losowo��.
    �wiat�a_miganie__losowo��, // Z jakiego zakresu mo�na losowa� ile razy ma by� wyd�u�ony pierwszy krok migni�cia.
    �wiat�a_miganie__op�nienie_losowe, // Ile razy pierwszy krok migni�cia zostanie wyd�u�ony. Warto�� losowana z zakresu �wiat�a_miganie__losowo��.
    �wiat�a_miganie__tabela_czas�w_indeks
      : integer;

    identyfikator_elementu,
    �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    d�wi�ki__zasi�g_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp�yw__amunicja_uzupe�nianie,
    kolizja_wp�yw__obra�enia,
    kolizja_wp�yw__pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    d�wi�k_nazwa : string;

    �wiat�a_miganie__tabela_czas�w_milisekundy_t : TArray_Of_Integer; // Kolejne odst�py pomi�dzy zgaszeniami i zapaleniami �wiat�a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLSphere

  TSt_GLTorus = class( TGLTorus )
  public
    dzi�b,
    radar,
    radar_ignoruje, // Obiekt nie b�dzie rysowany na radarze (zbyt wiele 'ma�ych' element�w l�du spowalnia od�wie�anie radaru).,
    �wiat�a_miganie,
    �wiat�a_miganie__�wiat�o_w��czone,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    d�wi�ki__losowo��, // Z jakiego zakresu mo�na losowa� ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku.
    d�wi�ki__op�nienie_losowe, // Ile cykli uruchomiania d�wi�k�w zostanie op�nione w��czenie tego d�wi�ku. Warto�� losowana z zakresu d�wi�ki__losowo��.
    �wiat�a_miganie__losowo��, // Z jakiego zakresu mo�na losowa� ile razy ma by� wyd�u�ony pierwszy krok migni�cia.
    �wiat�a_miganie__op�nienie_losowe, // Ile razy pierwszy krok migni�cia zostanie wyd�u�ony. Warto�� losowana z zakresu �wiat�a_miganie__losowo��.
    �wiat�a_miganie__tabela_czas�w_indeks
      : integer;

    identyfikator_elementu,
    �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    d�wi�ki__zasi�g_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp�yw__amunicja_uzupe�nianie,
    kolizja_wp�yw__obra�enia,
    kolizja_wp�yw__pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    d�wi�k_nazwa : string;

    �wiat�a_miganie__tabela_czas�w_milisekundy_t : TArray_Of_Integer; // Kolejne odst�py pomi�dzy zgaszeniami i zapaleniami �wiat�a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLTorus


// W tych funkcjach uwzgl�dni� wszystkie typy tutaj wyst�puj�ce.

function Dzi�b( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function D�wi�k_Nazwa( const gl_custom_scene_object_f : TGLCustomSceneObject ) : string; overload;
function D�wi�ki__Losowo��( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
function D�wi�ki__Op�nienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
function D�wi�ki__Zasi�g_Minimalny( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Punkty_�ycia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Radar( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Radar_Ignoruje( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Radar_Ignoruje__Przeka�_Potomkom( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function �wiat�a_Miganie( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function �wiat�a_Miganie__Czas_Do_Zmiany( const gl_custom_scene_object_f : TGLCustomSceneObject; const tabela_indeks_zwi�ksz_f : boolean = false ) : integer; overload;
function �wiat�a_Miganie__Czas_Przeliczenia_Ostatniego( const gl_custom_scene_object_f : TGLCustomSceneObject ) : Int64; overload;
function �wiat�a_Miganie__Losowo��( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
function �wiat�a_Miganie__Op�nienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
function �wiat�a_Miganie__�wiat�o_W��czone( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function �wiat�o( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function �wiat�o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject ) : Int64; overload;
function Kolizja_Wp�yw__Amunicja_Uzupe�nianie( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Kolizja_Wp�yw__Obra�enia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Kolizja_Wp�yw__Pr�dko��( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject ) : TObiekt_Rodzaj; overload;

procedure Dzi�b( const gl_custom_scene_object_f : TGLCustomSceneObject; const dzi�b_f : boolean ); overload;
procedure D�wi�k_Nazwa( const gl_custom_scene_object_f : TGLCustomSceneObject; const d�wi�k_nazwa_f : string ); overload;
procedure D�wi�ki__Losowo��( const gl_custom_scene_object_f : TGLCustomSceneObject; const d�wi�ki__losowo��_f : integer ); overload;
procedure D�wi�ki__Op�nienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const d�wi�ki__op�nienie_losowe_f : integer ); overload;
procedure D�wi�ki__Op�nienie_Losowe__Wylicz( const gl_custom_scene_object_f : TGLCustomSceneObject );
procedure D�wi�ki__Zasi�g_Minimalny( const gl_custom_scene_object_f : TGLCustomSceneObject; const d�wi�ki__zasi�g_minimalny_f : real ); overload;
procedure Punkty_�ycia( const gl_custom_scene_object_f : TGLCustomSceneObject; const punkty_�ycia_f : real ); overload;
procedure Radar( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_f : boolean ); overload;
procedure Radar_Ignoruje( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_ignoruje_f : boolean ); overload;
procedure Radar_Ignoruje__Przeka�_Potomkom( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_ignoruje__przeka�_potomkom_f : boolean ); overload;
procedure �wiat�a_Miganie( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�a_miganie_f : boolean ); overload;
procedure �wiat�a_Miganie__Czas_Do_Zmiany( const gl_custom_scene_object_f : TGLCustomSceneObject; const czas_do_zmiany_milisekundy_f : integer ); overload;
procedure �wiat�a_Miganie__Czas_Przeliczenia_Ostatniego( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f : Int64 ); overload;
procedure �wiat�a_Miganie__Losowo��( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�a_miganie__losowo��_f : integer ); overload;
procedure �wiat�a_Miganie__Op�nienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�a_miganie__op�nienie_losowe_f : integer ); overload;
procedure �wiat�a_Miganie__Op�nienie_Losowe__Wylicz( const gl_custom_scene_object_f : TGLCustomSceneObject );
procedure �wiat�a_Miganie__�wiat�o_W��czone( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�a_miganie__�wiat�o_w��czone_f : boolean ); overload;
procedure �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw( const gl_custom_scene_object__docelowy_f, gl_custom_scene_object__�r�d�owy_f : TGLCustomSceneObject );
procedure �wiat�o( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�o_f : boolean ); overload;
procedure �wiat�o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�o_dodatkowe_f : boolean ); overload;
procedure Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject; const identyfikator_elementu_f : Int64 ); overload;
procedure Kolizja_Wp�yw__Amunicja_Uzupe�nianie( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp�yw__amunicja_uzupe�nianie_f : real ); overload;
procedure Kolizja_Wp�yw__Obra�enia( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp�yw__obra�enia_f : real ); overload;
procedure Kolizja_Wp�yw__Pr�dko��( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp�yw__pr�dko��_f : real ); overload;
procedure Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject; const obiekt_rodzaj_f : TObiekt_Rodzaj ); overload;

implementation


//Konstruktor klasy TSt_GLCapsule.
constructor TSt_GLCapsule.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.�wiat�a_miganie := false;
  Self.�wiat�a_miganie__�wiat�o_w��czone := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.d�wi�ki__losowo�� := 0;
  Self.d�wi�ki__op�nienie_losowe := 0;
  Self.d�wi�ki__zasi�g_minimalny := -1;
  Self.�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.�wiat�a_miganie__losowo�� := 0;
  Self.�wiat�a_miganie__op�nienie_losowe := 0;
  Self.�wiat�a_miganie__tabela_czas�w_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw__amunicja_uzupe�nianie := 0;
  Self.kolizja_wp�yw__obra�enia := 100;
  Self.kolizja_wp�yw__pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.d�wi�k_nazwa := '';

  SetLength( Self.�wiat�a_miganie__tabela_czas�w_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLCapsule.

//Konstruktor klasy TSt_GLCone.
constructor TSt_GLCone.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.�wiat�a_miganie := false;
  Self.�wiat�a_miganie__�wiat�o_w��czone := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.d�wi�ki__losowo�� := 0;
  Self.d�wi�ki__op�nienie_losowe := 0;
  Self.d�wi�ki__zasi�g_minimalny := -1;
  Self.�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.�wiat�a_miganie__losowo�� := 0;
  Self.�wiat�a_miganie__op�nienie_losowe := 0;
  Self.�wiat�a_miganie__tabela_czas�w_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw__amunicja_uzupe�nianie := 0;
  Self.kolizja_wp�yw__obra�enia := 100;
  Self.kolizja_wp�yw__pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.d�wi�k_nazwa := '';

  SetLength( Self.�wiat�a_miganie__tabela_czas�w_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLCone.

//Konstruktor klasy TSt_GLCube.
constructor TSt_GLCube.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.�wiat�a_miganie := false;
  Self.�wiat�a_miganie__�wiat�o_w��czone := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.d�wi�ki__losowo�� := 0;
  Self.d�wi�ki__op�nienie_losowe := 0;
  Self.d�wi�ki__zasi�g_minimalny := -1;
  Self.�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.�wiat�a_miganie__losowo�� := 0;
  Self.�wiat�a_miganie__op�nienie_losowe := 0;
  Self.�wiat�a_miganie__tabela_czas�w_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw__amunicja_uzupe�nianie := 0;
  Self.kolizja_wp�yw__obra�enia := 100;
  Self.kolizja_wp�yw__pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.d�wi�k_nazwa := '';

  SetLength( Self.�wiat�a_miganie__tabela_czas�w_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLCube.

//Konstruktor klasy TSt_GLCylinder.
constructor TSt_GLCylinder.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.�wiat�a_miganie := false;
  Self.�wiat�a_miganie__�wiat�o_w��czone := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.d�wi�ki__losowo�� := 0;
  Self.d�wi�ki__op�nienie_losowe := 0;
  Self.d�wi�ki__zasi�g_minimalny := -1;
  Self.�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.�wiat�a_miganie__losowo�� := 0;
  Self.�wiat�a_miganie__op�nienie_losowe := 0;
  Self.�wiat�a_miganie__tabela_czas�w_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw__amunicja_uzupe�nianie := 0;
  Self.kolizja_wp�yw__obra�enia := 100;
  Self.kolizja_wp�yw__pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.d�wi�k_nazwa := '';

  SetLength( Self.�wiat�a_miganie__tabela_czas�w_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLCylinder.

//Konstruktor klasy TSt_GLDummyCube.
constructor TSt_GLDummyCube.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.radar_ignoruje__przeka�_potomkom := false;
  Self.�wiat�a_miganie := false;
  Self.�wiat�a_miganie__�wiat�o_w��czone := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.d�wi�ki__losowo�� := 0;
  Self.d�wi�ki__op�nienie_losowe := 0;
  Self.d�wi�ki__zasi�g_minimalny := -1;
  Self.�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.�wiat�a_miganie__losowo�� := 0;
  Self.�wiat�a_miganie__op�nienie_losowe := 0;
  Self.�wiat�a_miganie__tabela_czas�w_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw__amunicja_uzupe�nianie := 0;
  Self.kolizja_wp�yw__obra�enia := 100;
  Self.kolizja_wp�yw__pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.d�wi�k_nazwa := '';

  SetLength( Self.�wiat�a_miganie__tabela_czas�w_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLDummyCube.

//Konstruktor klasy TSt_GLFrustrum.
constructor TSt_GLFrustrum.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.�wiat�a_miganie := false;
  Self.�wiat�a_miganie__�wiat�o_w��czone := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.d�wi�ki__losowo�� := 0;
  Self.d�wi�ki__op�nienie_losowe := 0;
  Self.d�wi�ki__zasi�g_minimalny := -1;
  Self.�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.�wiat�a_miganie__losowo�� := 0;
  Self.�wiat�a_miganie__op�nienie_losowe := 0;
  Self.�wiat�a_miganie__tabela_czas�w_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw__amunicja_uzupe�nianie := 0;
  Self.kolizja_wp�yw__obra�enia := 100;
  Self.kolizja_wp�yw__pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.d�wi�k_nazwa := '';

  SetLength( Self.�wiat�a_miganie__tabela_czas�w_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLFrustrum.

//Konstruktor klasy TSt_GLSphere.
constructor TSt_GLSphere.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.�wiat�a_miganie := false;
  Self.�wiat�a_miganie__�wiat�o_w��czone := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.d�wi�ki__losowo�� := 0;
  Self.d�wi�ki__op�nienie_losowe := 0;
  Self.d�wi�ki__zasi�g_minimalny := -1;
  Self.�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.�wiat�a_miganie__losowo�� := 0;
  Self.�wiat�a_miganie__op�nienie_losowe := 0;
  Self.�wiat�a_miganie__tabela_czas�w_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw__amunicja_uzupe�nianie := 0;
  Self.kolizja_wp�yw__obra�enia := 100;
  Self.kolizja_wp�yw__pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.d�wi�k_nazwa := '';

  SetLength( Self.�wiat�a_miganie__tabela_czas�w_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLSphere.

//Konstruktor klasy TSt_GLTorus.
constructor TSt_GLTorus.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.�wiat�a_miganie := false;
  Self.�wiat�a_miganie__�wiat�o_w��czone := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.d�wi�ki__losowo�� := 0;
  Self.d�wi�ki__op�nienie_losowe := 0;
  Self.d�wi�ki__zasi�g_minimalny := -1;
  Self.�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.�wiat�a_miganie__losowo�� := 0;
  Self.�wiat�a_miganie__op�nienie_losowe := 0;
  Self.�wiat�a_miganie__tabela_czas�w_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw__amunicja_uzupe�nianie := 0;
  Self.kolizja_wp�yw__obra�enia := 100;
  Self.kolizja_wp�yw__pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.d�wi�k_nazwa := '';

  SetLength( Self.�wiat�a_miganie__tabela_czas�w_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLTorus.

//Funkcja Dzi�b().
function Dzi�b( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).dzi�b;

end;//---//Funkcja Dzi�b().

//Funkcja D�wi�k_Nazwa().
function D�wi�k_Nazwa( const gl_custom_scene_object_f : TGLCustomSceneObject ) : string; overload;
begin

  Result := '';

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).d�wi�k_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).d�wi�k_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).d�wi�k_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).d�wi�k_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).d�wi�k_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).d�wi�k_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).d�wi�k_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).d�wi�k_nazwa;

end;//---//Funkcja D�wi�k_Nazwa().

//Funkcja D�wi�ki__Losowo��().
function D�wi�ki__Losowo��( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).d�wi�ki__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).d�wi�ki__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).d�wi�ki__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).d�wi�ki__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).d�wi�ki__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).d�wi�ki__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).d�wi�ki__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).d�wi�ki__losowo��;

end;//---//Funkcja D�wi�ki__Losowo��().

//Funkcja D�wi�ki__Op�nienie_Losowe().
function D�wi�ki__Op�nienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe;

end;//---//Funkcja D�wi�ki__Op�nienie_Losowe().

//Funkcja D�wi�ki__Zasi�g_Minimalny().
function D�wi�ki__Zasi�g_Minimalny( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
begin

  Result := -1;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny;

end;//---//Funkcja D�wi�ki__Zasi�g_Minimalny().

//Funkcja Punkty_�ycia().
function Punkty_�ycia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
begin

  Result := -1;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).punkty_�ycia;

end;//---//Funkcja Punkty_�ycia().

//Funkcja Radar().
function Radar( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).radar;

end;//---//Funkcja Radar().

//Funkcja Radar_Ignoruje().
function Radar_Ignoruje( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).radar_ignoruje
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).radar_ignoruje
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).radar_ignoruje
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).radar_ignoruje
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).radar_ignoruje
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).radar_ignoruje
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).radar_ignoruje
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).radar_ignoruje;

end;//---//Funkcja Radar_Ignoruje().

//Funkcja Radar_Ignoruje__Przeka�_Potomkom().
function Radar_Ignoruje__Przeka�_Potomkom( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).radar_ignoruje__przeka�_potomkom;

end;//---//Funkcja Radar_Ignoruje__Przeka�_Potomkom().

//Funkcja �wiat�a_Miganie().
function �wiat�a_Miganie( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie;

end;//---//Funkcja �wiat�a_Miganie().

//Funkcja �wiat�a_Miganie__Czas_Do_Zmiany().
function �wiat�a_Miganie__Czas_Do_Zmiany( const gl_custom_scene_object_f : TGLCustomSceneObject; const tabela_indeks_zwi�ksz_f : boolean = false ) : integer;

  //Funkcja �wiat�a_Miganie__Czas_Do_Zmiany_L() w �wiat�a_Miganie__Czas_Do_Zmiany().
  function �wiat�a_Miganie__Czas_Do_Zmiany_L( var �wiat�a_miganie__tabela_czas�w_milisekundy_t_f : TArray_Of_Integer; var �wiat�a_miganie__op�nienie_losowe_f, �wiat�a_miganie__tabela_czas�w_indeks_f : integer; const tabela_indeks_zwi�ksz_f_f : boolean ) : integer;
  begin

    Result := 1000;


    if Length( �wiat�a_miganie__tabela_czas�w_milisekundy_t_f ) <= 0 then
      Exit;


    if tabela_indeks_zwi�ksz_f_f then
      �wiat�a_miganie__tabela_czas�w_indeks_f := �wiat�a_miganie__tabela_czas�w_indeks_f + 1;


    if   ( �wiat�a_miganie__tabela_czas�w_indeks_f < 0 )
      or (  �wiat�a_miganie__tabela_czas�w_indeks_f >= Length( �wiat�a_miganie__tabela_czas�w_milisekundy_t_f )  ) then
      �wiat�a_miganie__tabela_czas�w_indeks_f := 0;

    Result := �wiat�a_miganie__tabela_czas�w_milisekundy_t_f[ �wiat�a_miganie__tabela_czas�w_indeks_f ];

  end;//---//Funkcja �wiat�a_Miganie__Czas_Do_Zmiany_L() w �wiat�a_Miganie__Czas_Do_Zmiany().

begin//Funkcja �wiat�a_Miganie__Czas_Do_Zmiany().

  Result := 1000;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe, TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_indeks, tabela_indeks_zwi�ksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe, TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_indeks, tabela_indeks_zwi�ksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe, TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_indeks, tabela_indeks_zwi�ksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe, TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_indeks, tabela_indeks_zwi�ksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe, TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_indeks, tabela_indeks_zwi�ksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe, TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_indeks, tabela_indeks_zwi�ksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe, TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_indeks, tabela_indeks_zwi�ksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe, TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_indeks, tabela_indeks_zwi�ksz_f );

end;//---//Funkcja �wiat�a_Miganie__Czas_Do_Zmiany().

//Funkcja �wiat�a_Miganie__Czas_Przeliczenia_Ostatniego().
function �wiat�a_Miganie__Czas_Przeliczenia_Ostatniego( const gl_custom_scene_object_f : TGLCustomSceneObject ) : Int64;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i;

end;//---//Funkcja �wiat�a_Miganie__Czas_Przeliczenia_Ostatniego().

//Funkcja �wiat�a_Miganie__Losowo��().
function �wiat�a_Miganie__Losowo��( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__losowo��
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__losowo��;

end;//---//Funkcja �wiat�a_Miganie__Losowo��().

//Funkcja �wiat�a_Miganie__Op�nienie_Losowe().
function �wiat�a_Miganie__Op�nienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe;

end;//---//Funkcja �wiat�a_Miganie__Op�nienie_Losowe().

//Funkcja �wiat�a_Miganie__�wiat�o_W��czone().
function �wiat�a_Miganie__�wiat�o_W��czone( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone;

end;//---//Funkcja �wiat�a_Miganie__�wiat�o_W��czone().

//Funkcja �wiat�o().
function �wiat�o( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).�wiat�o;

end;//---//Funkcja �wiat�o().

//Funkcja �wiat�o_Dodatkowe().
function �wiat�o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).�wiat�o_dodatkowe;

end;//---//Funkcja �wiat�o_Dodatkowe().

//Funkcja Identyfikator_Elementu().
function Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject ) : Int64;
begin

  Result := -1;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).identyfikator_elementu;

end;//---//Funkcja Identyfikator_Elementu().

//Funkcja Kolizja_Wp�yw__Amunicja_Uzupe�nianie().
function Kolizja_Wp�yw__Amunicja_Uzupe�nianie( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie;

end;//---//Funkcja Kolizja_Wp�yw__Amunicja_Uzupe�nianie().

//Funkcja Kolizja_Wp�yw__Obra�enia().
function Kolizja_Wp�yw__Obra�enia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia;

end;//---//Funkcja Kolizja_Wp�yw__Obra�enia().

//Funkcja Kolizja_Wp�yw__Pr�dko��().
function Kolizja_Wp�yw__Pr�dko��( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko��;

end;//---//Funkcja Kolizja_Wp�yw__Pr�dko��().

//Funkcja Obiekt_Rodzaj().
function Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject ) : TObiekt_Rodzaj;
begin

  Result := or_Brak;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).obiekt_rodzaj;

end;//---//Funkcja Obiekt_Rodzaj().

//Funkcja Dzi�b().
procedure Dzi�b( const gl_custom_scene_object_f : TGLCustomSceneObject; const dzi�b_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).dzi�b := dzi�b_f;

end;//---//Funkcja Dzi�b().

//Funkcja D�wi�k_Nazwa().
procedure D�wi�k_Nazwa( const gl_custom_scene_object_f : TGLCustomSceneObject; const d�wi�k_nazwa_f : string ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).d�wi�k_nazwa := d�wi�k_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).d�wi�k_nazwa := d�wi�k_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).d�wi�k_nazwa := d�wi�k_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).d�wi�k_nazwa := d�wi�k_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).d�wi�k_nazwa := d�wi�k_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).d�wi�k_nazwa := d�wi�k_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).d�wi�k_nazwa := d�wi�k_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).d�wi�k_nazwa := d�wi�k_nazwa_f;

end;//---//Funkcja D�wi�k_Nazwa().

//Funkcja D�wi�ki__Losowo��().
procedure D�wi�ki__Losowo��( const gl_custom_scene_object_f : TGLCustomSceneObject; const d�wi�ki__losowo��_f : integer ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).d�wi�ki__losowo�� := d�wi�ki__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).d�wi�ki__losowo�� := d�wi�ki__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).d�wi�ki__losowo�� := d�wi�ki__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).d�wi�ki__losowo�� := d�wi�ki__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).d�wi�ki__losowo�� := d�wi�ki__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).d�wi�ki__losowo�� := d�wi�ki__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).d�wi�ki__losowo�� := d�wi�ki__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).d�wi�ki__losowo�� := d�wi�ki__losowo��_f;

end;//---//Funkcja D�wi�ki__Losowo��().

//Funkcja D�wi�ki__Op�nienie_Losowe().
procedure D�wi�ki__Op�nienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const d�wi�ki__op�nienie_losowe_f : integer ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe := d�wi�ki__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe := d�wi�ki__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe := d�wi�ki__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe := d�wi�ki__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe := d�wi�ki__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe := d�wi�ki__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe := d�wi�ki__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).d�wi�ki__op�nienie_losowe := d�wi�ki__op�nienie_losowe_f;

end;//---//Funkcja D�wi�ki__Op�nienie_Losowe().

//Funkcja �wiat�a_Miganie__�wiat�o_W��czone().
procedure D�wi�ki__Op�nienie_Losowe__Wylicz( const gl_custom_scene_object_f : TGLCustomSceneObject );
var
  zti : integer;
begin

  zti := Wyglad_Elementy.D�wi�ki__Losowo��( gl_custom_scene_object_f );
  zti := Random( zti );
  Wyglad_Elementy.D�wi�ki__Op�nienie_Losowe( gl_custom_scene_object_f, zti );

end;//---//Funkcja �wiat�a_Miganie__Op�nienie_Losowe().

//Funkcja D�wi�ki__Zasi�g_Minimalny().
procedure D�wi�ki__Zasi�g_Minimalny( const gl_custom_scene_object_f : TGLCustomSceneObject; const d�wi�ki__zasi�g_minimalny_f : real ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny := d�wi�ki__zasi�g_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny := d�wi�ki__zasi�g_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny := d�wi�ki__zasi�g_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny := d�wi�ki__zasi�g_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny := d�wi�ki__zasi�g_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny := d�wi�ki__zasi�g_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny := d�wi�ki__zasi�g_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).d�wi�ki__zasi�g_minimalny := d�wi�ki__zasi�g_minimalny_f;

end;//---//Funkcja D�wi�ki__Zasi�g_Minimalny().

//Funkcja Punkty_�ycia().
procedure Punkty_�ycia( const gl_custom_scene_object_f : TGLCustomSceneObject; const punkty_�ycia_f : real ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f;

end;//---//Funkcja Punkty_�ycia().

//Funkcja Radar().
procedure Radar( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).radar := radar_f;

end;//---//Funkcja Radar().

//Funkcja Radar_Ignoruje().
procedure Radar_Ignoruje( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_ignoruje_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).radar_ignoruje := radar_ignoruje_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).radar_ignoruje := radar_ignoruje_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).radar_ignoruje := radar_ignoruje_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).radar_ignoruje := radar_ignoruje_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).radar_ignoruje := radar_ignoruje_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).radar_ignoruje := radar_ignoruje_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).radar_ignoruje := radar_ignoruje_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).radar_ignoruje := radar_ignoruje_f;

end;//---//Funkcja Radar_Ignoruje().

//Funkcja Radar_Ignoruje__Przeka�_Potomkom().
procedure Radar_Ignoruje__Przeka�_Potomkom( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_ignoruje__przeka�_potomkom_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).radar_ignoruje__przeka�_potomkom := radar_ignoruje__przeka�_potomkom_f;

end;//---//Funkcja Radar_Ignoruje__Przeka�_Potomkom().

//Funkcja �wiat�a_Miganie().
procedure �wiat�a_Miganie( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�a_miganie_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie := �wiat�a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie := �wiat�a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie := �wiat�a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie := �wiat�a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie := �wiat�a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie := �wiat�a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie := �wiat�a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie := �wiat�a_miganie_f;

end;//---//Funkcja �wiat�a_Miganie().

//Funkcja �wiat�a_Miganie__Czas_Do_Zmiany().
procedure �wiat�a_Miganie__Czas_Do_Zmiany( const gl_custom_scene_object_f : TGLCustomSceneObject; const czas_do_zmiany_milisekundy_f : integer );

  //Funkcja �wiat�a_Miganie__Czas_Do_Zmiany_L() w �wiat�a_Miganie__Czas_Do_Zmiany().
  procedure �wiat�a_Miganie__Czas_Do_Zmiany_L( var �wiat�a_miganie__tabela_czas�w_milisekundy_t_f : TArray_Of_Integer; const czas_do_zmiany_milisekundy_f_f : integer );
  var
    zti : integer;
  begin

    zti := Length( �wiat�a_miganie__tabela_czas�w_milisekundy_t_f );
    SetLength( �wiat�a_miganie__tabela_czas�w_milisekundy_t_f, zti + 1 );
    �wiat�a_miganie__tabela_czas�w_milisekundy_t_f[ zti ] := czas_do_zmiany_milisekundy_f_f;

  end;//---//Funkcja �wiat�a_Miganie__Czas_Do_Zmiany_L() w �wiat�a_Miganie__Czas_Do_Zmiany().

begin//Funkcja �wiat�a_Miganie__Czas_Do_Zmiany().

  //
  // Funkcja dopisuje kolejn� warto�� do tabeli.
  //

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    �wiat�a_Miganie__Czas_Do_Zmiany_L( TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, czas_do_zmiany_milisekundy_f );

end;//---//Funkcja �wiat�a_Miganie__Czas_Do_Zmiany().

//Funkcja �wiat�a_Miganie__Czas_Przeliczenia_Ostatniego().
procedure �wiat�a_Miganie__Czas_Przeliczenia_Ostatniego( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f : Int64 );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := �wiat�a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f;

end;//---//Funkcja �wiat�a_Miganie__Czas_Przeliczenia_Ostatniego().

//Funkcja �wiat�a_Miganie__Losowo��().
procedure �wiat�a_Miganie__Losowo��( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�a_miganie__losowo��_f : integer ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__losowo�� := �wiat�a_miganie__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__losowo�� := �wiat�a_miganie__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__losowo�� := �wiat�a_miganie__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__losowo�� := �wiat�a_miganie__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__losowo�� := �wiat�a_miganie__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__losowo�� := �wiat�a_miganie__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__losowo�� := �wiat�a_miganie__losowo��_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__losowo�� := �wiat�a_miganie__losowo��_f;

end;//---//Funkcja �wiat�a_Miganie__Losowo��().

//Funkcja �wiat�a_Miganie__Op�nienie_Losowe().
procedure �wiat�a_Miganie__Op�nienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�a_miganie__op�nienie_losowe_f : integer ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe := �wiat�a_miganie__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe := �wiat�a_miganie__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe := �wiat�a_miganie__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe := �wiat�a_miganie__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe := �wiat�a_miganie__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe := �wiat�a_miganie__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe := �wiat�a_miganie__op�nienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__op�nienie_losowe := �wiat�a_miganie__op�nienie_losowe_f;

end;//---//Funkcja �wiat�a_Miganie__Op�nienie_Losowe().

//Funkcja �wiat�a_Miganie__�wiat�o_W��czone().
procedure �wiat�a_Miganie__Op�nienie_Losowe__Wylicz( const gl_custom_scene_object_f : TGLCustomSceneObject );
var
  zti : integer;
begin

  zti := Wyglad_Elementy.�wiat�a_Miganie__Losowo��( gl_custom_scene_object_f );
  zti := Random( zti );
  Wyglad_Elementy.�wiat�a_Miganie__Op�nienie_Losowe( gl_custom_scene_object_f, zti );

end;//---//Funkcja �wiat�a_Miganie__Op�nienie_Losowe().

//Funkcja �wiat�a_Miganie__�wiat�o_W��czone().
procedure �wiat�a_Miganie__�wiat�o_W��czone( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�a_miganie__�wiat�o_w��czone_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone := �wiat�a_miganie__�wiat�o_w��czone_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone := �wiat�a_miganie__�wiat�o_w��czone_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone := �wiat�a_miganie__�wiat�o_w��czone_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone := �wiat�a_miganie__�wiat�o_w��czone_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone := �wiat�a_miganie__�wiat�o_w��czone_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone := �wiat�a_miganie__�wiat�o_w��czone_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone := �wiat�a_miganie__�wiat�o_w��czone_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).�wiat�a_miganie__�wiat�o_w��czone := �wiat�a_miganie__�wiat�o_w��czone_f;

end;//---//Funkcja �wiat�a_Miganie__�wiat�o_W��czone().

//Funkcja �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw().
procedure �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw( const gl_custom_scene_object__docelowy_f, gl_custom_scene_object__�r�d�owy_f : TGLCustomSceneObject );

  //Funkcja �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L() w �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw().
  procedure �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L( var �wiat�a_miganie__tabela_czas�w_milisekundy__docelowa_t_f : TArray_Of_Integer; const �wiat�a_miganie__tabela_czas�w_milisekundy__�r�d�owa_t_f : TArray_Of_Integer );
  var
    i : integer;
  begin

    SetLength( �wiat�a_miganie__tabela_czas�w_milisekundy__docelowa_t_f, 0 );
    SetLength(  �wiat�a_miganie__tabela_czas�w_milisekundy__docelowa_t_f, Length( �wiat�a_miganie__tabela_czas�w_milisekundy__�r�d�owa_t_f )  );

    for i := 0 to Length( �wiat�a_miganie__tabela_czas�w_milisekundy__�r�d�owa_t_f ) - 1 do
      �wiat�a_miganie__tabela_czas�w_milisekundy__docelowa_t_f[ i ] := �wiat�a_miganie__tabela_czas�w_milisekundy__�r�d�owa_t_f[ i ];

  end;//---//Funkcja �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L() w �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw().

begin//Funkcja �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw().

  //
  // Funkcja kopiuje warto�ci tabeli z obiektu �r�d�owego do obiektu docelowego.
  //
  // Obiekt �r�d�owy i docelowy powinny by� tego samego typu.
  //

  if   ( gl_custom_scene_object__docelowy_f = nil )
    or (  not Assigned( gl_custom_scene_object__docelowy_f )  )
    or ( gl_custom_scene_object__�r�d�owy_f = nil )
    or (  not Assigned( gl_custom_scene_object__�r�d�owy_f )  ) then
    Exit;

  if    ( gl_custom_scene_object__docelowy_f is TSt_GLCapsule )
    and ( gl_custom_scene_object__�r�d�owy_f is TSt_GLCapsule ) then
    �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L( TSt_GLCapsule(gl_custom_scene_object__docelowy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLCapsule(gl_custom_scene_object__�r�d�owy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLCone )
    and ( gl_custom_scene_object__�r�d�owy_f is TSt_GLCone ) then
    �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L( TSt_GLCone(gl_custom_scene_object__docelowy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLCone(gl_custom_scene_object__�r�d�owy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLCube )
    and ( gl_custom_scene_object__�r�d�owy_f is TSt_GLCube ) then
    �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L( TSt_GLCube(gl_custom_scene_object__docelowy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLCube(gl_custom_scene_object__�r�d�owy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLCylinder )
    and ( gl_custom_scene_object__�r�d�owy_f is TSt_GLCylinder ) then
    �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L( TSt_GLCylinder(gl_custom_scene_object__docelowy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLCylinder(gl_custom_scene_object__�r�d�owy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLDummyCube )
    and ( gl_custom_scene_object__�r�d�owy_f is TSt_GLDummyCube ) then
    �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L( TSt_GLDummyCube(gl_custom_scene_object__docelowy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLDummyCube(gl_custom_scene_object__�r�d�owy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLFrustrum )
    and ( gl_custom_scene_object__�r�d�owy_f is TSt_GLFrustrum ) then
    �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L( TSt_GLFrustrum(gl_custom_scene_object__docelowy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLFrustrum(gl_custom_scene_object__�r�d�owy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLSphere )
    and ( gl_custom_scene_object__�r�d�owy_f is TSt_GLSphere ) then
    �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L( TSt_GLSphere(gl_custom_scene_object__docelowy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLSphere(gl_custom_scene_object__�r�d�owy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLTorus )
    and ( gl_custom_scene_object__�r�d�owy_f is TSt_GLTorus ) then
    �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw_L( TSt_GLTorus(gl_custom_scene_object__docelowy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t, TSt_GLTorus(gl_custom_scene_object__�r�d�owy_f).�wiat�a_miganie__tabela_czas�w_milisekundy_t );

end;//---//Funkcja �wiat�a_Miganie__Tabela_Czas�w_Warto�ci_Ustaw().

//Funkcja �wiat�o().
procedure �wiat�o( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�o_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).�wiat�o := �wiat�o_f;

end;//---//Funkcja �wiat�o().

//Funkcja �wiat�o_Dodatkowe().
procedure �wiat�o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�o_dodatkowe_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f;

end;//---//Funkcja �wiat�o_Dodatkowe().

//Funkcja Identyfikator_Elementu().
procedure Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject; const identyfikator_elementu_f : Int64 );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f;

end;//---//Funkcja Identyfikator_Elementu().

//Funkcja Kolizja_Wp�yw__Amunicja_Uzupe�nianie().
procedure Kolizja_Wp�yw__Amunicja_Uzupe�nianie( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp�yw__amunicja_uzupe�nianie_f : real ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie := kolizja_wp�yw__amunicja_uzupe�nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie := kolizja_wp�yw__amunicja_uzupe�nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie := kolizja_wp�yw__amunicja_uzupe�nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie := kolizja_wp�yw__amunicja_uzupe�nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie := kolizja_wp�yw__amunicja_uzupe�nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie := kolizja_wp�yw__amunicja_uzupe�nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie := kolizja_wp�yw__amunicja_uzupe�nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp�yw__amunicja_uzupe�nianie := kolizja_wp�yw__amunicja_uzupe�nianie_f;

end;//---//Funkcja Kolizja_Wp�yw__Amunicja_Uzupe�nianie().

//Funkcja Kolizja_Wp�yw__Obra�enia().
procedure Kolizja_Wp�yw__Obra�enia( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp�yw__obra�enia_f : real );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia := kolizja_wp�yw__obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia := kolizja_wp�yw__obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia := kolizja_wp�yw__obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia := kolizja_wp�yw__obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia := kolizja_wp�yw__obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia := kolizja_wp�yw__obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia := kolizja_wp�yw__obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp�yw__obra�enia := kolizja_wp�yw__obra�enia_f;

end;//---//Funkcja Kolizja_Wp�yw__Obra�enia().

//Funkcja Kolizja_Wp�yw__Pr�dko��().
procedure Kolizja_Wp�yw__Pr�dko��( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp�yw__pr�dko��_f : real );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko�� := kolizja_wp�yw__pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko�� := kolizja_wp�yw__pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko�� := kolizja_wp�yw__pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko�� := kolizja_wp�yw__pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko�� := kolizja_wp�yw__pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko�� := kolizja_wp�yw__pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko�� := kolizja_wp�yw__pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp�yw__pr�dko�� := kolizja_wp�yw__pr�dko��_f;

end;//---//Funkcja Kolizja_Wp�yw__Pr�dko��().

//Funkcja Obiekt_Rodzaj().
procedure Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject; const obiekt_rodzaj_f : TObiekt_Rodzaj );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f;

end;//---//Funkcja Obiekt_Rodzaj().

end.
