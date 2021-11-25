program DelphiPHPJS;

uses
  Forms,
  a_window_main_unit in 'a_window_main_unit.pas' {a_window_main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Ta_window_main, a_window_main);
  Application.Run;
end.
