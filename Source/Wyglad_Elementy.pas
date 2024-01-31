unit Wyglad_Elementy;

  // W tych funkcjach uwzglêdniæ wszystkie typy tutaj wystêpuj¹ce.

  // zt_1 := Wyglad_Elementy.F_1( TGLCustomSceneObject(object_f) ) - odczyt wartoœci z obiektu, który nie jest obiektem Wyglad_Elementy nie powinien nic zepsuæ (otrzyma siê chyba domyœlna pust¹ wartoœæ).
  // Wyglad_Elementy.F_1( TGLCustomSceneObject(object_f), zt_1 ) - zapis wartoœci do obiektu, który nie jest obiektem Wyglad_Elementy mo¿e zmodyfikowaæ nieodpowiedni¹ czêœæ pamiêci i coœ uszkodziæ.

interface

uses
  GLS.Objects, GLS.GeomObjects, GLS.Scene,
  System.Classes;

type
  TArray_Of_Integer = array of integer;

  TObiekt_Rodzaj = ( or_Brak, or_Amunicja, or_Amunicja__Obra¿enia_Zasiêg, or_DŸwiêk_Emiter, or_Kontener_Prymitywów, or_L¹d, or_£apacz_Samolotów, or_Statek, or_Wzorzec ); // or_Wzorzec - obiekt bêd¹cy wzorcem w pêtlach.

  TSt_GLCapsule = class( TGLCapsule )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).
    œwiat³a_miganie,
    œwiat³a_miganie__œwiat³o_w³¹czone,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    dŸwiêki__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku.
    dŸwiêki__opóŸnienie_losowe, // Ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku. Wartoœæ losowana z zakresu dŸwiêki__losowoœæ.
    œwiat³a_miganie__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile razy ma byæ wyd³u¿ony pierwszy krok migniêcia.
    œwiat³a_miganie__opóŸnienie_losowe, // Ile razy pierwszy krok migniêcia zostanie wyd³u¿ony. Wartoœæ losowana z zakresu œwiat³a_miganie__losowoœæ.
    œwiat³a_miganie__tabela_czasów_indeks
      : integer;

    identyfikator_elementu,
    œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    dŸwiêki__zasiêg_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    dŸwiêk_nazwa : string;

    œwiat³a_miganie__tabela_czasów_milisekundy_t : TArray_Of_Integer; // Kolejne odstêpy pomiêdzy zgaszeniami i zapaleniami œwiat³a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCapsule

  TSt_GLCone = class( TGLCone )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³a_miganie,
    œwiat³a_miganie__œwiat³o_w³¹czone,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    dŸwiêki__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku.
    dŸwiêki__opóŸnienie_losowe, // Ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku. Wartoœæ losowana z zakresu dŸwiêki__losowoœæ.
    œwiat³a_miganie__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile razy ma byæ wyd³u¿ony pierwszy krok migniêcia.
    œwiat³a_miganie__opóŸnienie_losowe, // Ile razy pierwszy krok migniêcia zostanie wyd³u¿ony. Wartoœæ losowana z zakresu œwiat³a_miganie__losowoœæ.
    œwiat³a_miganie__tabela_czasów_indeks
      : integer;

    identyfikator_elementu,
    œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    dŸwiêki__zasiêg_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    dŸwiêk_nazwa : string;

    œwiat³a_miganie__tabela_czasów_milisekundy_t : TArray_Of_Integer; // Kolejne odstêpy pomiêdzy zgaszeniami i zapaleniami œwiat³a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCone

  TSt_GLCube = class( TGLCube )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³a_miganie,
    œwiat³a_miganie__œwiat³o_w³¹czone,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    dŸwiêki__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku.
    dŸwiêki__opóŸnienie_losowe, // Ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku. Wartoœæ losowana z zakresu dŸwiêki__losowoœæ.
    œwiat³a_miganie__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile razy ma byæ wyd³u¿ony pierwszy krok migniêcia.
    œwiat³a_miganie__opóŸnienie_losowe, // Ile razy pierwszy krok migniêcia zostanie wyd³u¿ony. Wartoœæ losowana z zakresu œwiat³a_miganie__losowoœæ.
    œwiat³a_miganie__tabela_czasów_indeks
      : integer;

    identyfikator_elementu,
    œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    dŸwiêki__zasiêg_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    dŸwiêk_nazwa : string;

    œwiat³a_miganie__tabela_czasów_milisekundy_t : TArray_Of_Integer; // Kolejne odstêpy pomiêdzy zgaszeniami i zapaleniami œwiat³a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCube

  TSt_GLCylinder = class( TGLCylinder )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³a_miganie,
    œwiat³a_miganie__œwiat³o_w³¹czone,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    dŸwiêki__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku.
    dŸwiêki__opóŸnienie_losowe, // Ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku. Wartoœæ losowana z zakresu dŸwiêki__losowoœæ.
    œwiat³a_miganie__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile razy ma byæ wyd³u¿ony pierwszy krok migniêcia.
    œwiat³a_miganie__opóŸnienie_losowe, // Ile razy pierwszy krok migniêcia zostanie wyd³u¿ony. Wartoœæ losowana z zakresu œwiat³a_miganie__losowoœæ.
    œwiat³a_miganie__tabela_czasów_indeks
      : integer;

    identyfikator_elementu,
    œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    dŸwiêki__zasiêg_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    dŸwiêk_nazwa : string;

    œwiat³a_miganie__tabela_czasów_milisekundy_t : TArray_Of_Integer; // Kolejne odstêpy pomiêdzy zgaszeniami i zapaleniami œwiat³a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCylinder

  TSt_GLDummyCube = class( TGLDummyCube )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    radar_ignoruje__przeka¿_potomkom, // Czy wartoœæ ustawiona dla rodzica ma zostaæ ustawiona potomkom (domyœlnie potomkowie s¹ zarz¹dzani wed³ug ich w³asnych definicji).
    œwiat³a_miganie,
    œwiat³a_miganie__œwiat³o_w³¹czone,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    dŸwiêki__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku.
    dŸwiêki__opóŸnienie_losowe, // Ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku. Wartoœæ losowana z zakresu dŸwiêki__losowoœæ.
    œwiat³a_miganie__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile razy ma byæ wyd³u¿ony pierwszy krok migniêcia.
    œwiat³a_miganie__opóŸnienie_losowe, // Ile razy pierwszy krok migniêcia zostanie wyd³u¿ony. Wartoœæ losowana z zakresu œwiat³a_miganie__losowoœæ.
    œwiat³a_miganie__tabela_czasów_indeks
      : integer;

    identyfikator_elementu,
    œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    dŸwiêki__zasiêg_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    dŸwiêk_nazwa : string;

    œwiat³a_miganie__tabela_czasów_milisekundy_t : TArray_Of_Integer; // Kolejne odstêpy pomiêdzy zgaszeniami i zapaleniami œwiat³a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLDummyCube

  TSt_GLFrustrum = class( TGLFrustrum )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³a_miganie,
    œwiat³a_miganie__œwiat³o_w³¹czone,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    dŸwiêki__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku.
    dŸwiêki__opóŸnienie_losowe, // Ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku. Wartoœæ losowana z zakresu dŸwiêki__losowoœæ.
    œwiat³a_miganie__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile razy ma byæ wyd³u¿ony pierwszy krok migniêcia.
    œwiat³a_miganie__opóŸnienie_losowe, // Ile razy pierwszy krok migniêcia zostanie wyd³u¿ony. Wartoœæ losowana z zakresu œwiat³a_miganie__losowoœæ.
    œwiat³a_miganie__tabela_czasów_indeks
      : integer;

    identyfikator_elementu,
    œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    dŸwiêki__zasiêg_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    dŸwiêk_nazwa : string;

    œwiat³a_miganie__tabela_czasów_milisekundy_t : TArray_Of_Integer; // Kolejne odstêpy pomiêdzy zgaszeniami i zapaleniami œwiat³a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLFrustrum

  TSt_GLSphere = class( TGLSphere )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³a_miganie,
    œwiat³a_miganie__œwiat³o_w³¹czone,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    dŸwiêki__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku.
    dŸwiêki__opóŸnienie_losowe, // Ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku. Wartoœæ losowana z zakresu dŸwiêki__losowoœæ.
    œwiat³a_miganie__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile razy ma byæ wyd³u¿ony pierwszy krok migniêcia.
    œwiat³a_miganie__opóŸnienie_losowe, // Ile razy pierwszy krok migniêcia zostanie wyd³u¿ony. Wartoœæ losowana z zakresu œwiat³a_miganie__losowoœæ.
    œwiat³a_miganie__tabela_czasów_indeks
      : integer;

    identyfikator_elementu,
    œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    dŸwiêki__zasiêg_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    dŸwiêk_nazwa : string;

    œwiat³a_miganie__tabela_czasów_milisekundy_t : TArray_Of_Integer; // Kolejne odstêpy pomiêdzy zgaszeniami i zapaleniami œwiat³a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLSphere

  TSt_GLTorus = class( TGLTorus )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³a_miganie,
    œwiat³a_miganie__œwiat³o_w³¹czone,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    dŸwiêki__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku.
    dŸwiêki__opóŸnienie_losowe, // Ile cykli uruchomiania dŸwiêków zostanie opóŸnione w³¹czenie tego dŸwiêku. Wartoœæ losowana z zakresu dŸwiêki__losowoœæ.
    œwiat³a_miganie__losowoœæ, // Z jakiego zakresu mo¿na losowaæ ile razy ma byæ wyd³u¿ony pierwszy krok migniêcia.
    œwiat³a_miganie__opóŸnienie_losowe, // Ile razy pierwszy krok migniêcia zostanie wyd³u¿ony. Wartoœæ losowana z zakresu œwiat³a_miganie__losowoœæ.
    œwiat³a_miganie__tabela_czasów_indeks
      : integer;

    identyfikator_elementu,
    œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
      : Int64;

    dŸwiêki__zasiêg_minimalny, // TGLBSoundEmitter.Source.MinDistance.
    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    dŸwiêk_nazwa : string;

    œwiat³a_miganie__tabela_czasów_milisekundy_t : TArray_Of_Integer; // Kolejne odstêpy pomiêdzy zgaszeniami i zapaleniami œwiat³a.

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLTorus


// W tych funkcjach uwzglêdniæ wszystkie typy tutaj wystêpuj¹ce.

function Dziób( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function DŸwiêk_Nazwa( const gl_custom_scene_object_f : TGLCustomSceneObject ) : string; overload;
function DŸwiêki__Losowoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
function DŸwiêki__OpóŸnienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
function DŸwiêki__Zasiêg_Minimalny( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Punkty_¯ycia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Radar( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Radar_Ignoruje( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Radar_Ignoruje__Przeka¿_Potomkom( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Œwiat³a_Miganie( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Œwiat³a_Miganie__Czas_Do_Zmiany( const gl_custom_scene_object_f : TGLCustomSceneObject; const tabela_indeks_zwiêksz_f : boolean = false ) : integer; overload;
function Œwiat³a_Miganie__Czas_Przeliczenia_Ostatniego( const gl_custom_scene_object_f : TGLCustomSceneObject ) : Int64; overload;
function Œwiat³a_Miganie__Losowoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
function Œwiat³a_Miganie__OpóŸnienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
function Œwiat³a_Miganie__Œwiat³o_W³¹czone( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Œwiat³o( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Œwiat³o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject ) : Int64; overload;
function Kolizja_Wp³yw__Amunicja_Uzupe³nianie( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Kolizja_Wp³yw__Obra¿enia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Kolizja_Wp³yw__Prêdkoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject ) : TObiekt_Rodzaj; overload;

procedure Dziób( const gl_custom_scene_object_f : TGLCustomSceneObject; const dziób_f : boolean ); overload;
procedure DŸwiêk_Nazwa( const gl_custom_scene_object_f : TGLCustomSceneObject; const dŸwiêk_nazwa_f : string ); overload;
procedure DŸwiêki__Losowoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject; const dŸwiêki__losowoœæ_f : integer ); overload;
procedure DŸwiêki__OpóŸnienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const dŸwiêki__opóŸnienie_losowe_f : integer ); overload;
procedure DŸwiêki__OpóŸnienie_Losowe__Wylicz( const gl_custom_scene_object_f : TGLCustomSceneObject );
procedure DŸwiêki__Zasiêg_Minimalny( const gl_custom_scene_object_f : TGLCustomSceneObject; const dŸwiêki__zasiêg_minimalny_f : real ); overload;
procedure Punkty_¯ycia( const gl_custom_scene_object_f : TGLCustomSceneObject; const punkty_¿ycia_f : real ); overload;
procedure Radar( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_f : boolean ); overload;
procedure Radar_Ignoruje( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_ignoruje_f : boolean ); overload;
procedure Radar_Ignoruje__Przeka¿_Potomkom( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_ignoruje__przeka¿_potomkom_f : boolean ); overload;
procedure Œwiat³a_Miganie( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³a_miganie_f : boolean ); overload;
procedure Œwiat³a_Miganie__Czas_Do_Zmiany( const gl_custom_scene_object_f : TGLCustomSceneObject; const czas_do_zmiany_milisekundy_f : integer ); overload;
procedure Œwiat³a_Miganie__Czas_Przeliczenia_Ostatniego( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f : Int64 ); overload;
procedure Œwiat³a_Miganie__Losowoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³a_miganie__losowoœæ_f : integer ); overload;
procedure Œwiat³a_Miganie__OpóŸnienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³a_miganie__opóŸnienie_losowe_f : integer ); overload;
procedure Œwiat³a_Miganie__OpóŸnienie_Losowe__Wylicz( const gl_custom_scene_object_f : TGLCustomSceneObject );
procedure Œwiat³a_Miganie__Œwiat³o_W³¹czone( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³a_miganie__œwiat³o_w³¹czone_f : boolean ); overload;
procedure Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw( const gl_custom_scene_object__docelowy_f, gl_custom_scene_object__Ÿród³owy_f : TGLCustomSceneObject );
procedure Œwiat³o( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³o_f : boolean ); overload;
procedure Œwiat³o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³o_dodatkowe_f : boolean ); overload;
procedure Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject; const identyfikator_elementu_f : Int64 ); overload;
procedure Kolizja_Wp³yw__Amunicja_Uzupe³nianie( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp³yw__amunicja_uzupe³nianie_f : real ); overload;
procedure Kolizja_Wp³yw__Obra¿enia( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp³yw__obra¿enia_f : real ); overload;
procedure Kolizja_Wp³yw__Prêdkoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp³yw__prêdkoœæ_f : real ); overload;
procedure Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject; const obiekt_rodzaj_f : TObiekt_Rodzaj ); overload;

implementation


//Konstruktor klasy TSt_GLCapsule.
constructor TSt_GLCapsule.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³a_miganie := false;
  Self.œwiat³a_miganie__œwiat³o_w³¹czone := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.dŸwiêki__losowoœæ := 0;
  Self.dŸwiêki__opóŸnienie_losowe := 0;
  Self.dŸwiêki__zasiêg_minimalny := -1;
  Self.œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.œwiat³a_miganie__losowoœæ := 0;
  Self.œwiat³a_miganie__opóŸnienie_losowe := 0;
  Self.œwiat³a_miganie__tabela_czasów_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.dŸwiêk_nazwa := '';

  SetLength( Self.œwiat³a_miganie__tabela_czasów_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLCapsule.

//Konstruktor klasy TSt_GLCone.
constructor TSt_GLCone.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³a_miganie := false;
  Self.œwiat³a_miganie__œwiat³o_w³¹czone := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.dŸwiêki__losowoœæ := 0;
  Self.dŸwiêki__opóŸnienie_losowe := 0;
  Self.dŸwiêki__zasiêg_minimalny := -1;
  Self.œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.œwiat³a_miganie__losowoœæ := 0;
  Self.œwiat³a_miganie__opóŸnienie_losowe := 0;
  Self.œwiat³a_miganie__tabela_czasów_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.dŸwiêk_nazwa := '';

  SetLength( Self.œwiat³a_miganie__tabela_czasów_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLCone.

//Konstruktor klasy TSt_GLCube.
constructor TSt_GLCube.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³a_miganie := false;
  Self.œwiat³a_miganie__œwiat³o_w³¹czone := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.dŸwiêki__losowoœæ := 0;
  Self.dŸwiêki__opóŸnienie_losowe := 0;
  Self.dŸwiêki__zasiêg_minimalny := -1;
  Self.œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.œwiat³a_miganie__losowoœæ := 0;
  Self.œwiat³a_miganie__opóŸnienie_losowe := 0;
  Self.œwiat³a_miganie__tabela_czasów_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.dŸwiêk_nazwa := '';

  SetLength( Self.œwiat³a_miganie__tabela_czasów_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLCube.

//Konstruktor klasy TSt_GLCylinder.
constructor TSt_GLCylinder.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³a_miganie := false;
  Self.œwiat³a_miganie__œwiat³o_w³¹czone := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.dŸwiêki__losowoœæ := 0;
  Self.dŸwiêki__opóŸnienie_losowe := 0;
  Self.dŸwiêki__zasiêg_minimalny := -1;
  Self.œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.œwiat³a_miganie__losowoœæ := 0;
  Self.œwiat³a_miganie__opóŸnienie_losowe := 0;
  Self.œwiat³a_miganie__tabela_czasów_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.dŸwiêk_nazwa := '';

  SetLength( Self.œwiat³a_miganie__tabela_czasów_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLCylinder.

//Konstruktor klasy TSt_GLDummyCube.
constructor TSt_GLDummyCube.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.radar_ignoruje__przeka¿_potomkom := false;
  Self.œwiat³a_miganie := false;
  Self.œwiat³a_miganie__œwiat³o_w³¹czone := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.dŸwiêki__losowoœæ := 0;
  Self.dŸwiêki__opóŸnienie_losowe := 0;
  Self.dŸwiêki__zasiêg_minimalny := -1;
  Self.œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.œwiat³a_miganie__losowoœæ := 0;
  Self.œwiat³a_miganie__opóŸnienie_losowe := 0;
  Self.œwiat³a_miganie__tabela_czasów_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.dŸwiêk_nazwa := '';

  SetLength( Self.œwiat³a_miganie__tabela_czasów_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLDummyCube.

//Konstruktor klasy TSt_GLFrustrum.
constructor TSt_GLFrustrum.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³a_miganie := false;
  Self.œwiat³a_miganie__œwiat³o_w³¹czone := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.dŸwiêki__losowoœæ := 0;
  Self.dŸwiêki__opóŸnienie_losowe := 0;
  Self.dŸwiêki__zasiêg_minimalny := -1;
  Self.œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.œwiat³a_miganie__losowoœæ := 0;
  Self.œwiat³a_miganie__opóŸnienie_losowe := 0;
  Self.œwiat³a_miganie__tabela_czasów_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.dŸwiêk_nazwa := '';

  SetLength( Self.œwiat³a_miganie__tabela_czasów_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLFrustrum.

//Konstruktor klasy TSt_GLSphere.
constructor TSt_GLSphere.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³a_miganie := false;
  Self.œwiat³a_miganie__œwiat³o_w³¹czone := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.dŸwiêki__losowoœæ := 0;
  Self.dŸwiêki__opóŸnienie_losowe := 0;
  Self.dŸwiêki__zasiêg_minimalny := -1;
  Self.œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.œwiat³a_miganie__losowoœæ := 0;
  Self.œwiat³a_miganie__opóŸnienie_losowe := 0;
  Self.œwiat³a_miganie__tabela_czasów_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.dŸwiêk_nazwa := '';

  SetLength( Self.œwiat³a_miganie__tabela_czasów_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLSphere.

//Konstruktor klasy TSt_GLTorus.
constructor TSt_GLTorus.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³a_miganie := false;
  Self.œwiat³a_miganie__œwiat³o_w³¹czone := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.dŸwiêki__losowoœæ := 0;
  Self.dŸwiêki__opóŸnienie_losowe := 0;
  Self.dŸwiêki__zasiêg_minimalny := -1;
  Self.œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := 0;
  Self.œwiat³a_miganie__losowoœæ := 0;
  Self.œwiat³a_miganie__opóŸnienie_losowe := 0;
  Self.œwiat³a_miganie__tabela_czasów_indeks := 0;
  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

  Self.dŸwiêk_nazwa := '';

  SetLength( Self.œwiat³a_miganie__tabela_czasów_milisekundy_t, 0 );

end;//---//Konstruktor klasy TSt_GLTorus.

//Funkcja Dziób().
function Dziób( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).dziób
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).dziób
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).dziób
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).dziób
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).dziób
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).dziób
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).dziób
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).dziób;

end;//---//Funkcja Dziób().

//Funkcja DŸwiêk_Nazwa().
function DŸwiêk_Nazwa( const gl_custom_scene_object_f : TGLCustomSceneObject ) : string; overload;
begin

  Result := '';

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).dŸwiêk_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).dŸwiêk_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).dŸwiêk_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).dŸwiêk_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).dŸwiêk_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).dŸwiêk_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).dŸwiêk_nazwa
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).dŸwiêk_nazwa;

end;//---//Funkcja DŸwiêk_Nazwa().

//Funkcja DŸwiêki__Losowoœæ().
function DŸwiêki__Losowoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).dŸwiêki__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).dŸwiêki__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).dŸwiêki__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).dŸwiêki__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).dŸwiêki__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).dŸwiêki__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).dŸwiêki__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).dŸwiêki__losowoœæ;

end;//---//Funkcja DŸwiêki__Losowoœæ().

//Funkcja DŸwiêki__OpóŸnienie_Losowe().
function DŸwiêki__OpóŸnienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe;

end;//---//Funkcja DŸwiêki__OpóŸnienie_Losowe().

//Funkcja DŸwiêki__Zasiêg_Minimalny().
function DŸwiêki__Zasiêg_Minimalny( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
begin

  Result := -1;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny;

end;//---//Funkcja DŸwiêki__Zasiêg_Minimalny().

//Funkcja Punkty_¯ycia().
function Punkty_¯ycia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
begin

  Result := -1;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).punkty_¿ycia
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).punkty_¿ycia
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).punkty_¿ycia
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).punkty_¿ycia
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).punkty_¿ycia
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).punkty_¿ycia
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).punkty_¿ycia
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).punkty_¿ycia;

end;//---//Funkcja Punkty_¯ycia().

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

//Funkcja Radar_Ignoruje__Przeka¿_Potomkom().
function Radar_Ignoruje__Przeka¿_Potomkom( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).radar_ignoruje__przeka¿_potomkom;

end;//---//Funkcja Radar_Ignoruje__Przeka¿_Potomkom().

//Funkcja Œwiat³a_Miganie().
function Œwiat³a_Miganie( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie;

end;//---//Funkcja Œwiat³a_Miganie().

//Funkcja Œwiat³a_Miganie__Czas_Do_Zmiany().
function Œwiat³a_Miganie__Czas_Do_Zmiany( const gl_custom_scene_object_f : TGLCustomSceneObject; const tabela_indeks_zwiêksz_f : boolean = false ) : integer;

  //Funkcja Œwiat³a_Miganie__Czas_Do_Zmiany_L() w Œwiat³a_Miganie__Czas_Do_Zmiany().
  function Œwiat³a_Miganie__Czas_Do_Zmiany_L( var œwiat³a_miganie__tabela_czasów_milisekundy_t_f : TArray_Of_Integer; var œwiat³a_miganie__opóŸnienie_losowe_f, œwiat³a_miganie__tabela_czasów_indeks_f : integer; const tabela_indeks_zwiêksz_f_f : boolean ) : integer;
  begin

    Result := 1000;


    if Length( œwiat³a_miganie__tabela_czasów_milisekundy_t_f ) <= 0 then
      Exit;


    if tabela_indeks_zwiêksz_f_f then
      œwiat³a_miganie__tabela_czasów_indeks_f := œwiat³a_miganie__tabela_czasów_indeks_f + 1;


    if   ( œwiat³a_miganie__tabela_czasów_indeks_f < 0 )
      or (  œwiat³a_miganie__tabela_czasów_indeks_f >= Length( œwiat³a_miganie__tabela_czasów_milisekundy_t_f )  ) then
      œwiat³a_miganie__tabela_czasów_indeks_f := 0;

    Result := œwiat³a_miganie__tabela_czasów_milisekundy_t_f[ œwiat³a_miganie__tabela_czasów_indeks_f ];

  end;//---//Funkcja Œwiat³a_Miganie__Czas_Do_Zmiany_L() w Œwiat³a_Miganie__Czas_Do_Zmiany().

begin//Funkcja Œwiat³a_Miganie__Czas_Do_Zmiany().

  Result := 1000;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe, TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_indeks, tabela_indeks_zwiêksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe, TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_indeks, tabela_indeks_zwiêksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe, TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_indeks, tabela_indeks_zwiêksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe, TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_indeks, tabela_indeks_zwiêksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe, TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_indeks, tabela_indeks_zwiêksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe, TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_indeks, tabela_indeks_zwiêksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe, TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_indeks, tabela_indeks_zwiêksz_f )
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe, TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_indeks, tabela_indeks_zwiêksz_f );

end;//---//Funkcja Œwiat³a_Miganie__Czas_Do_Zmiany().

//Funkcja Œwiat³a_Miganie__Czas_Przeliczenia_Ostatniego().
function Œwiat³a_Miganie__Czas_Przeliczenia_Ostatniego( const gl_custom_scene_object_f : TGLCustomSceneObject ) : Int64;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i;

end;//---//Funkcja Œwiat³a_Miganie__Czas_Przeliczenia_Ostatniego().

//Funkcja Œwiat³a_Miganie__Losowoœæ().
function Œwiat³a_Miganie__Losowoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ;

end;//---//Funkcja Œwiat³a_Miganie__Losowoœæ().

//Funkcja Œwiat³a_Miganie__OpóŸnienie_Losowe().
function Œwiat³a_Miganie__OpóŸnienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : integer; overload;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe;

end;//---//Funkcja Œwiat³a_Miganie__OpóŸnienie_Losowe().

//Funkcja Œwiat³a_Miganie__Œwiat³o_W³¹czone().
function Œwiat³a_Miganie__Œwiat³o_W³¹czone( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone;

end;//---//Funkcja Œwiat³a_Miganie__Œwiat³o_W³¹czone().

//Funkcja Œwiat³o().
function Œwiat³o( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).œwiat³o
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).œwiat³o
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).œwiat³o
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).œwiat³o
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³o
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³o
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).œwiat³o
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).œwiat³o;

end;//---//Funkcja Œwiat³o().

//Funkcja Œwiat³o_Dodatkowe().
function Œwiat³o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).œwiat³o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).œwiat³o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).œwiat³o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).œwiat³o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).œwiat³o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).œwiat³o_dodatkowe;

end;//---//Funkcja Œwiat³o_Dodatkowe().

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

//Funkcja Kolizja_Wp³yw__Amunicja_Uzupe³nianie().
function Kolizja_Wp³yw__Amunicja_Uzupe³nianie( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie;

end;//---//Funkcja Kolizja_Wp³yw__Amunicja_Uzupe³nianie().

//Funkcja Kolizja_Wp³yw__Obra¿enia().
function Kolizja_Wp³yw__Obra¿enia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia;

end;//---//Funkcja Kolizja_Wp³yw__Obra¿enia().

//Funkcja Kolizja_Wp³yw__Prêdkoœæ().
function Kolizja_Wp³yw__Prêdkoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ;

end;//---//Funkcja Kolizja_Wp³yw__Prêdkoœæ().

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

//Funkcja Dziób().
procedure Dziób( const gl_custom_scene_object_f : TGLCustomSceneObject; const dziób_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).dziób := dziób_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).dziób := dziób_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).dziób := dziób_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).dziób := dziób_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).dziób := dziób_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).dziób := dziób_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).dziób := dziób_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).dziób := dziób_f;

end;//---//Funkcja Dziób().

//Funkcja DŸwiêk_Nazwa().
procedure DŸwiêk_Nazwa( const gl_custom_scene_object_f : TGLCustomSceneObject; const dŸwiêk_nazwa_f : string ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).dŸwiêk_nazwa := dŸwiêk_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).dŸwiêk_nazwa := dŸwiêk_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).dŸwiêk_nazwa := dŸwiêk_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).dŸwiêk_nazwa := dŸwiêk_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).dŸwiêk_nazwa := dŸwiêk_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).dŸwiêk_nazwa := dŸwiêk_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).dŸwiêk_nazwa := dŸwiêk_nazwa_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).dŸwiêk_nazwa := dŸwiêk_nazwa_f;

end;//---//Funkcja DŸwiêk_Nazwa().

//Funkcja DŸwiêki__Losowoœæ().
procedure DŸwiêki__Losowoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject; const dŸwiêki__losowoœæ_f : integer ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).dŸwiêki__losowoœæ := dŸwiêki__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).dŸwiêki__losowoœæ := dŸwiêki__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).dŸwiêki__losowoœæ := dŸwiêki__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).dŸwiêki__losowoœæ := dŸwiêki__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).dŸwiêki__losowoœæ := dŸwiêki__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).dŸwiêki__losowoœæ := dŸwiêki__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).dŸwiêki__losowoœæ := dŸwiêki__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).dŸwiêki__losowoœæ := dŸwiêki__losowoœæ_f;

end;//---//Funkcja DŸwiêki__Losowoœæ().

//Funkcja DŸwiêki__OpóŸnienie_Losowe().
procedure DŸwiêki__OpóŸnienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const dŸwiêki__opóŸnienie_losowe_f : integer ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe := dŸwiêki__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe := dŸwiêki__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe := dŸwiêki__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe := dŸwiêki__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe := dŸwiêki__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe := dŸwiêki__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe := dŸwiêki__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).dŸwiêki__opóŸnienie_losowe := dŸwiêki__opóŸnienie_losowe_f;

end;//---//Funkcja DŸwiêki__OpóŸnienie_Losowe().

//Funkcja Œwiat³a_Miganie__Œwiat³o_W³¹czone().
procedure DŸwiêki__OpóŸnienie_Losowe__Wylicz( const gl_custom_scene_object_f : TGLCustomSceneObject );
var
  zti : integer;
begin

  zti := Wyglad_Elementy.DŸwiêki__Losowoœæ( gl_custom_scene_object_f );
  zti := Random( zti );
  Wyglad_Elementy.DŸwiêki__OpóŸnienie_Losowe( gl_custom_scene_object_f, zti );

end;//---//Funkcja Œwiat³a_Miganie__OpóŸnienie_Losowe().

//Funkcja DŸwiêki__Zasiêg_Minimalny().
procedure DŸwiêki__Zasiêg_Minimalny( const gl_custom_scene_object_f : TGLCustomSceneObject; const dŸwiêki__zasiêg_minimalny_f : real ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny := dŸwiêki__zasiêg_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny := dŸwiêki__zasiêg_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny := dŸwiêki__zasiêg_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny := dŸwiêki__zasiêg_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny := dŸwiêki__zasiêg_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny := dŸwiêki__zasiêg_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny := dŸwiêki__zasiêg_minimalny_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).dŸwiêki__zasiêg_minimalny := dŸwiêki__zasiêg_minimalny_f;

end;//---//Funkcja DŸwiêki__Zasiêg_Minimalny().

//Funkcja Punkty_¯ycia().
procedure Punkty_¯ycia( const gl_custom_scene_object_f : TGLCustomSceneObject; const punkty_¿ycia_f : real ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).punkty_¿ycia := punkty_¿ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).punkty_¿ycia := punkty_¿ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).punkty_¿ycia := punkty_¿ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).punkty_¿ycia := punkty_¿ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).punkty_¿ycia := punkty_¿ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).punkty_¿ycia := punkty_¿ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).punkty_¿ycia := punkty_¿ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).punkty_¿ycia := punkty_¿ycia_f;

end;//---//Funkcja Punkty_¯ycia().

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

//Funkcja Radar_Ignoruje__Przeka¿_Potomkom().
procedure Radar_Ignoruje__Przeka¿_Potomkom( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_ignoruje__przeka¿_potomkom_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).radar_ignoruje__przeka¿_potomkom := radar_ignoruje__przeka¿_potomkom_f;

end;//---//Funkcja Radar_Ignoruje__Przeka¿_Potomkom().

//Funkcja Œwiat³a_Miganie().
procedure Œwiat³a_Miganie( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³a_miganie_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie := œwiat³a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie := œwiat³a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie := œwiat³a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie := œwiat³a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie := œwiat³a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie := œwiat³a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie := œwiat³a_miganie_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie := œwiat³a_miganie_f;

end;//---//Funkcja Œwiat³a_Miganie().

//Funkcja Œwiat³a_Miganie__Czas_Do_Zmiany().
procedure Œwiat³a_Miganie__Czas_Do_Zmiany( const gl_custom_scene_object_f : TGLCustomSceneObject; const czas_do_zmiany_milisekundy_f : integer );

  //Funkcja Œwiat³a_Miganie__Czas_Do_Zmiany_L() w Œwiat³a_Miganie__Czas_Do_Zmiany().
  procedure Œwiat³a_Miganie__Czas_Do_Zmiany_L( var œwiat³a_miganie__tabela_czasów_milisekundy_t_f : TArray_Of_Integer; const czas_do_zmiany_milisekundy_f_f : integer );
  var
    zti : integer;
  begin

    zti := Length( œwiat³a_miganie__tabela_czasów_milisekundy_t_f );
    SetLength( œwiat³a_miganie__tabela_czasów_milisekundy_t_f, zti + 1 );
    œwiat³a_miganie__tabela_czasów_milisekundy_t_f[ zti ] := czas_do_zmiany_milisekundy_f_f;

  end;//---//Funkcja Œwiat³a_Miganie__Czas_Do_Zmiany_L() w Œwiat³a_Miganie__Czas_Do_Zmiany().

begin//Funkcja Œwiat³a_Miganie__Czas_Do_Zmiany().

  //
  // Funkcja dopisuje kolejn¹ wartoœæ do tabeli.
  //

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, czas_do_zmiany_milisekundy_f )
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Œwiat³a_Miganie__Czas_Do_Zmiany_L( TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, czas_do_zmiany_milisekundy_f );

end;//---//Funkcja Œwiat³a_Miganie__Czas_Do_Zmiany().

//Funkcja Œwiat³a_Miganie__Czas_Przeliczenia_Ostatniego().
procedure Œwiat³a_Miganie__Czas_Przeliczenia_Ostatniego( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f : Int64 );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i := œwiat³a_miganie__czas_przeliczenia_ostatniego_milisekundy_i_f;

end;//---//Funkcja Œwiat³a_Miganie__Czas_Przeliczenia_Ostatniego().

//Funkcja Œwiat³a_Miganie__Losowoœæ().
procedure Œwiat³a_Miganie__Losowoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³a_miganie__losowoœæ_f : integer ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ := œwiat³a_miganie__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ := œwiat³a_miganie__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ := œwiat³a_miganie__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ := œwiat³a_miganie__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ := œwiat³a_miganie__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ := œwiat³a_miganie__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ := œwiat³a_miganie__losowoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__losowoœæ := œwiat³a_miganie__losowoœæ_f;

end;//---//Funkcja Œwiat³a_Miganie__Losowoœæ().

//Funkcja Œwiat³a_Miganie__OpóŸnienie_Losowe().
procedure Œwiat³a_Miganie__OpóŸnienie_Losowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³a_miganie__opóŸnienie_losowe_f : integer ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe := œwiat³a_miganie__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe := œwiat³a_miganie__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe := œwiat³a_miganie__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe := œwiat³a_miganie__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe := œwiat³a_miganie__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe := œwiat³a_miganie__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe := œwiat³a_miganie__opóŸnienie_losowe_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__opóŸnienie_losowe := œwiat³a_miganie__opóŸnienie_losowe_f;

end;//---//Funkcja Œwiat³a_Miganie__OpóŸnienie_Losowe().

//Funkcja Œwiat³a_Miganie__Œwiat³o_W³¹czone().
procedure Œwiat³a_Miganie__OpóŸnienie_Losowe__Wylicz( const gl_custom_scene_object_f : TGLCustomSceneObject );
var
  zti : integer;
begin

  zti := Wyglad_Elementy.Œwiat³a_Miganie__Losowoœæ( gl_custom_scene_object_f );
  zti := Random( zti );
  Wyglad_Elementy.Œwiat³a_Miganie__OpóŸnienie_Losowe( gl_custom_scene_object_f, zti );

end;//---//Funkcja Œwiat³a_Miganie__OpóŸnienie_Losowe().

//Funkcja Œwiat³a_Miganie__Œwiat³o_W³¹czone().
procedure Œwiat³a_Miganie__Œwiat³o_W³¹czone( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³a_miganie__œwiat³o_w³¹czone_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone := œwiat³a_miganie__œwiat³o_w³¹czone_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone := œwiat³a_miganie__œwiat³o_w³¹czone_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone := œwiat³a_miganie__œwiat³o_w³¹czone_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone := œwiat³a_miganie__œwiat³o_w³¹czone_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone := œwiat³a_miganie__œwiat³o_w³¹czone_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone := œwiat³a_miganie__œwiat³o_w³¹czone_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone := œwiat³a_miganie__œwiat³o_w³¹czone_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).œwiat³a_miganie__œwiat³o_w³¹czone := œwiat³a_miganie__œwiat³o_w³¹czone_f;

end;//---//Funkcja Œwiat³a_Miganie__Œwiat³o_W³¹czone().

//Funkcja Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw().
procedure Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw( const gl_custom_scene_object__docelowy_f, gl_custom_scene_object__Ÿród³owy_f : TGLCustomSceneObject );

  //Funkcja Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L() w Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw().
  procedure Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L( var œwiat³a_miganie__tabela_czasów_milisekundy__docelowa_t_f : TArray_Of_Integer; const œwiat³a_miganie__tabela_czasów_milisekundy__Ÿród³owa_t_f : TArray_Of_Integer );
  var
    i : integer;
  begin

    SetLength( œwiat³a_miganie__tabela_czasów_milisekundy__docelowa_t_f, 0 );
    SetLength(  œwiat³a_miganie__tabela_czasów_milisekundy__docelowa_t_f, Length( œwiat³a_miganie__tabela_czasów_milisekundy__Ÿród³owa_t_f )  );

    for i := 0 to Length( œwiat³a_miganie__tabela_czasów_milisekundy__Ÿród³owa_t_f ) - 1 do
      œwiat³a_miganie__tabela_czasów_milisekundy__docelowa_t_f[ i ] := œwiat³a_miganie__tabela_czasów_milisekundy__Ÿród³owa_t_f[ i ];

  end;//---//Funkcja Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L() w Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw().

begin//Funkcja Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw().

  //
  // Funkcja kopiuje wartoœci tabeli z obiektu Ÿród³owego do obiektu docelowego.
  //
  // Obiekt Ÿród³owy i docelowy powinny byæ tego samego typu.
  //

  if   ( gl_custom_scene_object__docelowy_f = nil )
    or (  not Assigned( gl_custom_scene_object__docelowy_f )  )
    or ( gl_custom_scene_object__Ÿród³owy_f = nil )
    or (  not Assigned( gl_custom_scene_object__Ÿród³owy_f )  ) then
    Exit;

  if    ( gl_custom_scene_object__docelowy_f is TSt_GLCapsule )
    and ( gl_custom_scene_object__Ÿród³owy_f is TSt_GLCapsule ) then
    Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L( TSt_GLCapsule(gl_custom_scene_object__docelowy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLCapsule(gl_custom_scene_object__Ÿród³owy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLCone )
    and ( gl_custom_scene_object__Ÿród³owy_f is TSt_GLCone ) then
    Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L( TSt_GLCone(gl_custom_scene_object__docelowy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLCone(gl_custom_scene_object__Ÿród³owy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLCube )
    and ( gl_custom_scene_object__Ÿród³owy_f is TSt_GLCube ) then
    Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L( TSt_GLCube(gl_custom_scene_object__docelowy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLCube(gl_custom_scene_object__Ÿród³owy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLCylinder )
    and ( gl_custom_scene_object__Ÿród³owy_f is TSt_GLCylinder ) then
    Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L( TSt_GLCylinder(gl_custom_scene_object__docelowy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLCylinder(gl_custom_scene_object__Ÿród³owy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLDummyCube )
    and ( gl_custom_scene_object__Ÿród³owy_f is TSt_GLDummyCube ) then
    Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L( TSt_GLDummyCube(gl_custom_scene_object__docelowy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLDummyCube(gl_custom_scene_object__Ÿród³owy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLFrustrum )
    and ( gl_custom_scene_object__Ÿród³owy_f is TSt_GLFrustrum ) then
    Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L( TSt_GLFrustrum(gl_custom_scene_object__docelowy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLFrustrum(gl_custom_scene_object__Ÿród³owy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLSphere )
    and ( gl_custom_scene_object__Ÿród³owy_f is TSt_GLSphere ) then
    Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L( TSt_GLSphere(gl_custom_scene_object__docelowy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLSphere(gl_custom_scene_object__Ÿród³owy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t )
  else
  if    ( gl_custom_scene_object__docelowy_f is TSt_GLTorus )
    and ( gl_custom_scene_object__Ÿród³owy_f is TSt_GLTorus ) then
    Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw_L( TSt_GLTorus(gl_custom_scene_object__docelowy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t, TSt_GLTorus(gl_custom_scene_object__Ÿród³owy_f).œwiat³a_miganie__tabela_czasów_milisekundy_t );

end;//---//Funkcja Œwiat³a_Miganie__Tabela_Czasów_Wartoœci_Ustaw().

//Funkcja Œwiat³o().
procedure Œwiat³o( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³o_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).œwiat³o := œwiat³o_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).œwiat³o := œwiat³o_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).œwiat³o := œwiat³o_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).œwiat³o := œwiat³o_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³o := œwiat³o_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³o := œwiat³o_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).œwiat³o := œwiat³o_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).œwiat³o := œwiat³o_f;

end;//---//Funkcja Œwiat³o().

//Funkcja Œwiat³o_Dodatkowe().
procedure Œwiat³o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const œwiat³o_dodatkowe_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).œwiat³o_dodatkowe := œwiat³o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).œwiat³o_dodatkowe := œwiat³o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).œwiat³o_dodatkowe := œwiat³o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).œwiat³o_dodatkowe := œwiat³o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).œwiat³o_dodatkowe := œwiat³o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).œwiat³o_dodatkowe := œwiat³o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).œwiat³o_dodatkowe := œwiat³o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).œwiat³o_dodatkowe := œwiat³o_dodatkowe_f;

end;//---//Funkcja Œwiat³o_Dodatkowe().

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

//Funkcja Kolizja_Wp³yw__Amunicja_Uzupe³nianie().
procedure Kolizja_Wp³yw__Amunicja_Uzupe³nianie( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp³yw__amunicja_uzupe³nianie_f : real ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie := kolizja_wp³yw__amunicja_uzupe³nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie := kolizja_wp³yw__amunicja_uzupe³nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie := kolizja_wp³yw__amunicja_uzupe³nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie := kolizja_wp³yw__amunicja_uzupe³nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie := kolizja_wp³yw__amunicja_uzupe³nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie := kolizja_wp³yw__amunicja_uzupe³nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie := kolizja_wp³yw__amunicja_uzupe³nianie_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp³yw__amunicja_uzupe³nianie := kolizja_wp³yw__amunicja_uzupe³nianie_f;

end;//---//Funkcja Kolizja_Wp³yw__Amunicja_Uzupe³nianie().

//Funkcja Kolizja_Wp³yw__Obra¿enia().
procedure Kolizja_Wp³yw__Obra¿enia( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp³yw__obra¿enia_f : real );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia := kolizja_wp³yw__obra¿enia_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia := kolizja_wp³yw__obra¿enia_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia := kolizja_wp³yw__obra¿enia_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia := kolizja_wp³yw__obra¿enia_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia := kolizja_wp³yw__obra¿enia_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia := kolizja_wp³yw__obra¿enia_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia := kolizja_wp³yw__obra¿enia_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp³yw__obra¿enia := kolizja_wp³yw__obra¿enia_f;

end;//---//Funkcja Kolizja_Wp³yw__Obra¿enia().

//Funkcja Kolizja_Wp³yw__Prêdkoœæ().
procedure Kolizja_Wp³yw__Prêdkoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp³yw__prêdkoœæ_f : real );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ := kolizja_wp³yw__prêdkoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ := kolizja_wp³yw__prêdkoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ := kolizja_wp³yw__prêdkoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ := kolizja_wp³yw__prêdkoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ := kolizja_wp³yw__prêdkoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ := kolizja_wp³yw__prêdkoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ := kolizja_wp³yw__prêdkoœæ_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp³yw__prêdkoœæ := kolizja_wp³yw__prêdkoœæ_f;

end;//---//Funkcja Kolizja_Wp³yw__Prêdkoœæ().

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
