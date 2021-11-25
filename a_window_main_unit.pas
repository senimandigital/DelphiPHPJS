unit a_window_main_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw;

type
  Ta_window_main = class(TForm)
    a_window_main_webbrowser: TWebBrowser;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  a_window_main: Ta_window_main;
  var_SERVER: array of Real;

implementation

{$R *.dfm}

procedure Ta_window_main.FormCreate(Sender: TObject);
begin
  a_window_main.Width := Screen.Width;
  a_window_main.Height := Screen.Width;

  a_window_main_webbrowser.Navigate( GetCurrentDir + '/Templates/application/main.htm');
end;

procedure Ta_window_main.FormResize(Sender: TObject);
begin
  a_window_main_webbrowser.Height := a_window_main.ClientHeight;
  a_window_main_webbrowser.Width := a_window_main.ClientWidth ;
end;

end.
