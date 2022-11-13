unit Klasy_Dodatkowe;{17.Paü.2022}

interface

uses
  GLObjects,
  System.Classes,

  Typy_Wspolne;

type
  TRadar_Obiekt = class( TGLSphere )
  public
    lπd__ro : boolean;

    utworzenie_czas__ro : Int64;

    amunicja_rodzaj__ro : Typy_Wspolne.TAmunicja_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLSphere

implementation


//Konstruktor klasy TRadar_Obiekt.
constructor TRadar_Obiekt.Create( AOwner : TComponent );
begin

  inherited;


  Self.amunicja_rodzaj__ro := Typy_Wspolne.ar_Brak;
  Self.lπd__ro := false;
  Self.utworzenie_czas__ro := 0;

end;//---//Konstruktor klasy TRadar_Obiekt.

end.
