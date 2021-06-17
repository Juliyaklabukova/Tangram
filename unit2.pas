unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, unit4, unit5, Unit6;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
uses unit1,unit3;
{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form4.show;   form4.timer1.enabled:=true;  Form2.hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form3.Show; form3.timer1.enabled:=true; form2.Hide;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
   Form5.Show; form5.timer1.enabled:=true; form2.Hide;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Form1.show; form2.Hide;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

end.

