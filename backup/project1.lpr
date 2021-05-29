program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, Unit2, Unit4, Unit5, Unit6
  { you can add units after this };

{$R *.res}
var i:integer;
begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
    for i:=1 to 8 do
  d[i]:=true;
    form4.timer1.enabled:=true;
    Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
