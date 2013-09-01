program CS2Assist;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {FormMain},
  Unit1 in 'Unit1.pas' {Form1},
  CS2 in 'CS2.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
