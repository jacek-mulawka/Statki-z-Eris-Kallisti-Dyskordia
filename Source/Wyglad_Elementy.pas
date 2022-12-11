unit Wyglad_Elementy;

  // W tych funkcjach uwzglêdniæ wszystkie typy tutaj wystêpuj¹ce.

  // zt_1 := Wyglad_Elementy.F_1( TGLCustomSceneObject(object_f) ) - odczyt wartoœci z obiektu, który nie jest obiektem Wyglad_Elementy nie powinien nic zepsuæ (otrzyma siê chyba domyœlna pust¹ wartoœæ).
  // Wyglad_Elementy.F_1( TGLCustomSceneObject(object_f), zt_1 ) - zapis wartoœci do obiektu, który nie jest obiektem Wyglad_Elementy mo¿e zmodyfikowaæ nieodpowiedni¹ czêœæ pamiêci i coœ uszkodziæ.

interface

uses
  GLObjects, GLGeomObjects, GLScene,
  System.Classes;

type
  TObiekt_Rodzaj = ( or_Brak, or_Amunicja, or_Amunicja__Obra¿enia_Zasiêg, or_Kontener_Prymitywów, or_L¹d, or_£apacz_Samolotów, or_Statek, or_Wzorzec ); // or_Wzorzec - obiekt bêd¹cy wzorcem w pêtlach.

  TSt_GLCapsule = class( TGLCapsule )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCapsule

  TSt_GLCone = class( TGLCone )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCone

  TSt_GLCube = class( TGLCube )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCube

  TSt_GLCylinder = class( TGLCylinder )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCylinder

  TSt_GLDummyCube = class( TGLDummyCube )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    radar_ignoruje__przeka¿_potomkom, // Czy wartoœæ ustawiona dla rodzica ma zostaæ ustawiona potomkom (domyœlnie potomkowie s¹ zarz¹dzani wed³ug ich w³asnych definicji).
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLDummyCube

  TSt_GLFrustrum = class( TGLFrustrum )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLFrustrum

  TSt_GLSphere = class( TGLSphere )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLSphere

  TSt_GLTorus = class( TGLTorus )
  public
    dziób,
    radar,
    radar_ignoruje, // Obiekt nie bêdzie rysowany na radarze (zbyt wiele 'ma³ych' elementów l¹du spowalnia odœwie¿anie radaru).,
    œwiat³o,
    œwiat³o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp³yw__amunicja_uzupe³nianie,
    kolizja_wp³yw__obra¿enia,
    kolizja_wp³yw__prêdkoœæ,
    punkty_¿ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLTorus


// W tych funkcjach uwzglêdniæ wszystkie typy tutaj wystêpuj¹ce.

function Dziób( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Punkty_¯ycia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Radar( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Radar_Ignoruje( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Radar_Ignoruje__Przeka¿_Potomkom( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Œwiat³o( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Œwiat³o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject ) : Int64; overload;
function Kolizja_Wp³yw__Amunicja_Uzupe³nianie( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Kolizja_Wp³yw__Obra¿enia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Kolizja_Wp³yw__Prêdkoœæ( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject ) : TObiekt_Rodzaj; overload;

procedure Dziób( const gl_custom_scene_object_f : TGLCustomSceneObject; const dziób_f : boolean ); overload;
procedure Punkty_¯ycia( const gl_custom_scene_object_f : TGLCustomSceneObject; const punkty_¿ycia_f : real ); overload;
procedure Radar( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_f : boolean ); overload;
procedure Radar_Ignoruje( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_ignoruje_f : boolean ); overload;
procedure Radar_Ignoruje__Przeka¿_Potomkom( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_ignoruje__przeka¿_potomkom_f : boolean ); overload;
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
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLCapsule.

//Konstruktor klasy TSt_GLCone.
constructor TSt_GLCone.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLCone.

//Konstruktor klasy TSt_GLCube.
constructor TSt_GLCube.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLCube.

//Konstruktor klasy TSt_GLCylinder.
constructor TSt_GLCylinder.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLCylinder.

//Konstruktor klasy TSt_GLDummyCube.
constructor TSt_GLDummyCube.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.radar_ignoruje__przeka¿_potomkom := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLDummyCube.

//Konstruktor klasy TSt_GLFrustrum.
constructor TSt_GLFrustrum.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLFrustrum.

//Konstruktor klasy TSt_GLSphere.
constructor TSt_GLSphere.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLSphere.

//Konstruktor klasy TSt_GLTorus.
constructor TSt_GLTorus.Create( AOwner : TComponent );
begin

  inherited;

  Self.dziób := false;
  Self.radar := false;
  Self.radar_ignoruje := false;
  Self.œwiat³o := false;
  Self.œwiat³o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp³yw__amunicja_uzupe³nianie := 0;
  Self.kolizja_wp³yw__obra¿enia := 100;
  Self.kolizja_wp³yw__prêdkoœæ := 100;
  Self.punkty_¿ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

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
