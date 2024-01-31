unit Klasy_Dodatkowe;{17.PaŸ.2022}

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
    l¹d__ro : boolean;

    utworzenie_czas__ro : Int64;

    amunicja_rodzaj__ro : Typy_Wspolne.TAmunicja_Rodzaj;

    obiekt_kszta³t : TGLCustomSceneObject;

    constructor Create( AOwner : TComponent; AParent: TGLBaseSceneObject; l¹d_obiekt_wzorcowy_gl_custom_scene_object_f : TGLCustomSceneObject; const korekcja_wielkoœci_obiektu_f : real = 1 );
    destructor Destroy(); override;

    procedure Œlad_Wielkoœæ_Zmieñ( const korekcja_wielkoœci_obiektu_f : real );
  end;//---//TRadar_Obiekt

implementation


//Konstruktor klasy TRadar_Obiekt.
constructor TRadar_Obiekt.Create( AOwner : TComponent; AParent: TGLBaseSceneObject; l¹d_obiekt_wzorcowy_gl_custom_scene_object_f : TGLCustomSceneObject; const korekcja_wielkoœci_obiektu_f : real = 1 );
begin

  inherited Create( AOwner );

  Self.Parent := AParent;
  Self.amunicja_rodzaj__ro := Typy_Wspolne.ar_Brak;
  Self.l¹d__ro := false;
  Self.utworzenie_czas__ro := 0;

  if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f <> nil then
    begin

      if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLCapsule then
        Self.obiekt_kszta³t := TGLCapsule.Create( Self )
      else
      if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLCone then
        Self.obiekt_kszta³t := TGLCone.Create( Self )
      else
      if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLCube then
        Self.obiekt_kszta³t := TGLCube.Create( Self )
      else
      if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLCylinder then
        Self.obiekt_kszta³t := TGLCylinder.Create( Self )
      else
      if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLFrustrum then
        begin

          Self.obiekt_kszta³t := TGLFrustrum.Create( Self );
          TGLFrustrum(obiekt_kszta³t).Height := TGLFrustrum(l¹d_obiekt_wzorcowy_gl_custom_scene_object_f).Height;

        end
      else//if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLFrustrum then
      if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLTorus then
        begin

          Self.obiekt_kszta³t := TGLTorus.Create( Self );
          TGLTorus(obiekt_kszta³t).MajorRadius := TGLTorus(l¹d_obiekt_wzorcowy_gl_custom_scene_object_f).MajorRadius;
          TGLTorus(obiekt_kszta³t).MinorRadius := TGLTorus(l¹d_obiekt_wzorcowy_gl_custom_scene_object_f).MinorRadius;

        end
      else//if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f is TGLTorus then
        Self.obiekt_kszta³t := TGLSphere.Create( Self ); // Dla AOwner zg³asza b³¹d 'Exception EInvalidPointer (...) Invalid pointer operation.' w destruktorze przy FreeAndNil.

    end
  else//if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f <> nil then
    Self.obiekt_kszta³t := TGLSphere.Create( Self ); // Dla AOwner zg³asza b³¹d 'Exception EInvalidPointer (...) Invalid pointer operation.' w destruktorze przy FreeAndNil.


  Self.obiekt_kszta³t.Parent := Self;
  Self.obiekt_kszta³t.Pickable := false;


  if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f = nil then
    begin

      // Jako œlad (amunicji, statku).

      Œlad_Wielkoœæ_Zmieñ( korekcja_wielkoœci_obiektu_f );
      Self.obiekt_kszta³t.Material.FrontProperties.Ambient.Color := GLS.Color.clrTransparent;
      Self.obiekt_kszta³t.Material.FrontProperties.Emission.Color := GLS.Color.clrTransparent;
      Self.obiekt_kszta³t.Material.PolygonMode := GLS.State.pmPoints;
      TGLSphere(Self.obiekt_kszta³t).Slices := 4;
      TGLSphere(Self.obiekt_kszta³t).Stacks := 4;

    end
  else//if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f = nil then
    begin

      // Jako l¹d.

      Self.obiekt_kszta³t.Material.FrontProperties.Ambient.Color := GLS.Color.clrDarkBrown;
      Self.obiekt_kszta³t.Material.FrontProperties.Diffuse.Color := GLS.Color.clrVeryDarkBrown;
      Self.obiekt_kszta³t.Material.FrontProperties.Emission.Color := GLS.Color.clrTransparent;
      Self.l¹d__ro := true;

    end;
  //---//if l¹d_obiekt_wzorcowy_gl_custom_scene_object_f = nil then

end;//---//Konstruktor klasy TRadar_Obiekt.

//Destruktor klasy TRadar_Obiekt.
destructor TRadar_Obiekt.Destroy();
begin

  FreeAndNil( Self.obiekt_kszta³t );

  inherited;

end;//---//Destruktor klasy TRadar_Obiekt.

//Funkcja Œlad_Wielkoœæ_Zmieñ().
procedure TRadar_Obiekt.Œlad_Wielkoœæ_Zmieñ( const korekcja_wielkoœci_obiektu_f : real );
begin

  if Self.obiekt_kszta³t is TGLSphere then
    TGLSphere(Self.obiekt_kszta³t).Radius := 5 * korekcja_wielkoœci_obiektu_f;

end;//---//Funkcja Œlad_Wielkoœæ_Zmieñ().

end.
