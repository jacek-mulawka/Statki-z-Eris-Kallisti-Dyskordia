program Statki_pr;

uses
  Vcl.Forms,
  Statki in 'Statki.pas' {Statki_Form},
  Klasy_Dodatkowe in 'Klasy_Dodatkowe.pas',
  Przechwytywacze_Klas in 'Przechwytywacze_Klas.pas',
  Typy_Wspolne in 'Typy_Wspolne.pas',
  Wyglad_Elementy in 'Wyglad_Elementy.pas';

{$R *.res}

begin

  ReportMemoryLeaksOnShutdown := DebugHook <> 0;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.HintHidePause := 30000;

  Application.CreateForm( TStatki_Form, Statki_Form );
  Application.Run();

end.
