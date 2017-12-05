program POEntry;

uses
  Vcl.Forms,
  FrmMainU in 'src\FrmMainU.pas' {FrmMain},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Vapor');
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
