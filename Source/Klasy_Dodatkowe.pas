unit Klasy_Dodatkowe;{17.Pa�.2022}

interface

uses
  GLS.Objects, GLS.GeomObjects, GLS.Scene, GLS.Color, GLS.State,
  System.Classes, System.SysUtils, Vcl.StdCtrls,

  Typy_Wspolne;

type
  TKlawisz_Konfiguracja_CheckBox = class( TCheckBox )
  public
    klawisz_rodzaj : TShiftState;
  end;//---//TKlawisz_Konfiguracja_CheckBox

  //TRadar_Obiekt = class( TGLSphere )
  TRadar_Obiekt = class( TGLDummyCube )
  public
    l�d__ro : boolean;

    utworzenie_czas__ro : Int64;

    amunicja_rodzaj__ro : Typy_Wspolne.TAmunicja_Rodzaj;

    obiekt_kszta�t : TGLCustomSceneObject;

    constructor Create( AOwner : TComponent; AParent: TGLBaseSceneObject; l�d_obiekt_wzorcowy_gl_custom_scene_object_f : TGLCustomSceneObject; const korekcja_wielko�ci_obiektu_f : real = 1 );
    destructor Destroy(); override;

    procedure �lad_Wielko��_Zmie�( const korekcja_wielko�ci_obiektu_f : real );
  end;//---//TRadar_Obiekt

implementation


//Konstruktor klasy TRadar_Obiekt.
constructor TRadar_Obiekt.Create( AOwner : TComponent; AParent: TGLBaseSceneObject; l�d_obiekt_wzorcowy_gl_custom_scene_object_f : TGLCustomSceneObject; const korekcja_wielko�ci_obiektu_f : real = 1 );
begin

  inherited Create( AOwner );

  Self.Parent := AParent;
  Self.amunicja_rodzaj__ro := Typy_Wspolne.ar_Brak;
  Self.l�d__ro := false;
  Self.utworzenie_czas__ro := 0;

  if l�d_obiekt_wzorcowy_gl_custom_scene_object_f <> nil then
    begin

      if l�d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLCapsule then
        Self.obiekt_kszta�t := TGLCapsule.Create( Self )
      else
      if l�d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLCone then
        Self.obiekt_kszta�t := TGLCone.Create( Self )
      else
      if l�d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLCube then
        Self.obiekt_kszta�t := TGLCube.Create( Self )
      else
      if l�d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLCylinder then
        Self.obiekt_kszta�t := TGLCylinder.Create( Self )
      else
      if l�d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLFrustrum then
        begin

          Self.obiekt_kszta�t := TGLFrustrum.Create( Self );
          TGLFrustrum(obiekt_kszta�t).Height := TGLFrustrum(l�d_obiekt_wzorcowy_gl_custom_scene_object_f).Height;

        end
      else//if l�d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLFrustrum then
      if l�d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLTorus then
        begin

          Self.obiekt_kszta�t := TGLTorus.Create( Self );
          TGLTorus(obiekt_kszta�t).MajorRadius := TGLTorus(l�d_obiekt_wzorcowy_gl_custom_scene_object_f).MajorRadius;
          TGLTorus(obiekt_kszta�t).MinorRadius := TGLTorus(l�d_obiekt_wzorcowy_gl_custom_scene_object_f).MinorRadius;

        end
      else//if l�d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLTorus then
        Self.obiekt_kszta�t := TGLSphere.Create( Self ); // Dla AOwner zg�asza b��d 'Exception EInvalidPointer (...) Invalid pointer operation.' w destruktorze przy FreeAndNil.

    end
  else//if l�d_obiekt_wzorcowy_gl_custom_scene_object_f <> nil then
    Self.obiekt_kszta�t := TGLSphere.Create( Self ); // Dla AOwner zg�asza b��d 'Exception EInvalidPointer (...) Invalid pointer operation.' w destruktorze przy FreeAndNil.


  Self.obiekt_kszta�t.Parent := Self;
  Self.obiekt_kszta�t.Pickable := false;


  if l�d_obiekt_wzorcowy_gl_custom_scene_object_f = nil then
    begin

      // Jako �lad (amunicji, statku).

      �lad_Wielko��_Zmie�( korekcja_wielko�ci_obiektu_f );
      Self.obiekt_kszta�t.Material.FrontProperties.Ambient.Color := GLS.Color.clrTransparent;
      Self.obiekt_kszta�t.Material.FrontProperties.Emission.Color := GLS.Color.clrTransparent;
      Self.obiekt_kszta�t.Material.PolygonMode := GLS.State.pmPoints;
      TGLSphere(Self.obiekt_kszta�t).Slices := 4;
      TGLSphere(Self.obiekt_kszta�t).Stacks := 4;

    end
  else//if l�d_obiekt_wzorcowy_gl_custom_scene_object_f = nil then
    begin

      // Jako l�d.

      Self.obiekt_kszta�t.Material.FrontProperties.Ambient.Color := GLS.Color.clrDarkBrown;
      Self.obiekt_kszta�t.Material.FrontProperties.Diffuse.Color := GLS.Color.clrVeryDarkBrown;
      Self.obiekt_kszta�t.Material.FrontProperties.Emission.Color := GLS.Color.clrTransparent;
      Self.l�d__ro := true;

    end;
  //---//if l�d_obiekt_wzorcowy_gl_custom_scene_object_f = nil then

end;//---//Konstruktor klasy TRadar_Obiekt.

//Destruktor klasy TRadar_Obiekt.
destructor TRadar_Obiekt.Destroy();
begin

  FreeAndNil( Self.obiekt_kszta�t );

  inherited;

end;//---//Destruktor klasy TRadar_Obiekt.

//Funkcja �lad_Wielko��_Zmie�().
procedure TRadar_Obiekt.�lad_Wielko��_Zmie�( const korekcja_wielko�ci_obiektu_f : real );
begin

  if Self.obiekt_kszta�t is TGLSphere then
    TGLSphere(Self.obiekt_kszta�t).Radius := 5 * korekcja_wielko�ci_obiektu_f;

end;//---//Funkcja �lad_Wielko��_Zmie�().

end.
