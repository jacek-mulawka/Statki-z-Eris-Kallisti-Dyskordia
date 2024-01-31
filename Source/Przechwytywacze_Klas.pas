unit Przechwytywacze_Klas;{12.Gru.2022}

  // Interceptors.

interface

uses
  GLS.SceneViewer, Sounds.OpenAL, Sounds.OpenALImport, System.Classes, Vcl.Grids;

type
  TGLSceneViewer = class( GLS.SceneViewer.TGLSceneViewer )
  public
    skupienie_ustawione : boolean;
    constructor Create( AOwner: TComponent );
  end;//---//TGLSceneViewer

  //TGLSMOpenAL_2 = class ( TGLSMOpenAL )
  //public
  //  procedure PauseSource(aSource : TGLBaseSoundSource; paused : Boolean);
  //end;//---//TGLSMOpenAL_2

  TGLSMOpenAL = class ( Sounds.OpenAL.TGLSMOpenAL )
  public
    pauza : boolean;
    constructor Create( AOwner: TComponent );

    procedure Pauza_Ustaw();
  end;//---//TGLSMOpenAL

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

////PauseSource().
//procedure TGLSMOpenAL_2.PauseSource(aSource : TGLBaseSoundSource; paused : Boolean);
//begin
//
//   if not paused then begin
//        //alSourceRewind(aSource.managerTag);
//        alSourcePlay(aSource.ManagerTag); // uses OpenAL.
//   end else
//        alSourcePause(aSource.ManagerTag); // uses OpenAL.
//
//
//
//  // Przyk�ad wywo�ania.
//
//  //for i := 0 to GLSMOpenAL1.Sources.Count - 1 do
//  //  if not GLSMOpenAL1.Sources[ i ].Pause then
//  //    TGLSMOpenAL_2(GLSMOpenAL1).PauseSource( GLSMOpenAL1.Sources[ i ], 1 = 2 );
//
//end;//---//PauseSource().

//Konstruktor klasy TGLSMOpenAL.
constructor TGLSMOpenAL.Create( AOwner: TComponent );
begin

  inherited Create( AOwner );

  Self.pauza := false;

end;//---//Konstruktor klasy TGLSMOpenAL.

//Pauza_Ustaw().
procedure TGLSMOpenAL.Pauza_Ustaw();
var
  i : integer;
begin

  // W klasie �r�d�owej TGLSMOpenAL (GLSMOpenAL.pas) funkcja PauseSource() jest oznaczona jako protected
  // i przy wy��czaniu pauzy przewija odtwarzany d�wi�k na pocz�tek.

  for i := 0 to Self.Sources.Count - 1 do
    if Self.pauza then
      begin

        if not Self.Sources[ i ].Pause then
          Sounds.OpenALImport.alSourcePause(Self.Sources[ i ].ManagerTag);

      end
    else//if Self.pauza then
      begin

        if not Self.Sources[ i ].Pause then
          Sounds.OpenALImport.alSourcePlay(Self.Sources[ i ].ManagerTag);

      end;
    //---//if Self.pauza then

end;//---//Pauza_Ustaw().

//Konstruktor klasy TStringGrid.
constructor TStringGrid.Create( AOwner: TComponent );
begin

  inherited Create( AOwner );

  Self.kolumna_sortowania_indeks := 0;

end;//---//Konstruktor klasy TStringGrid.

end.
