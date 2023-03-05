unit Przechwytywacze_Klas;{12.Gru.2022}

  // Interceptors.

interface

uses
  GLWin32Viewer, System.Classes, Vcl.Grids;

type
  TGLSceneViewer = class( GLWin32Viewer.TGLSceneViewer )
  public
    skupienie_ustawione : boolean;
    constructor Create( AOwner: TComponent );
  end;//---//TGLSceneViewer

  TStringGrid = class( Vcl.Grids.TStringGrid )
  public
    kolumna_sortowania_indeks : integer;
    constructor Create( AOwner: TComponent );
  end;//---//TStringGrid

implementation


//Konstruktor klasy TGLSceneViewer.
constructor TGLSceneViewer.Create( AOwner: TComponent );
begin

  inherited Create( AOwner );

  Self.skupienie_ustawione := false;

end;//---//Konstruktor klasy TGLSceneViewer.

//Konstruktor klasy TStringGrid.
constructor TStringGrid.Create( AOwner: TComponent );
begin

  inherited Create( AOwner );

  Self.kolumna_sortowania_indeks := 0;

end;//---//Konstruktor klasy TStringGrid.

end.
