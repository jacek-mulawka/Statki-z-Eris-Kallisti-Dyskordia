program Statki_pr;

uses
  Vcl.Forms,
  Statki in 'Statki.pas' {Statki_Form};

{$R *.res}

begin

  ReportMemoryLeaksOnShutdown := DebugHook <> 0;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.HintHidePause := 30000;

  Application.CreateForm( TStatki_Form, Statki_Form );

  Application.Run();

end.
