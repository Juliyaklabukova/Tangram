program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, Unit2, Unit4, Unit5, Unit3, Unit6;

{$R *.res}
var i:integer;
begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
      for i:=1 to 8 do  begin
  d1[i]:=true;
  d2[i]:=true;
  d3[i]:=true;
      end;



  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
