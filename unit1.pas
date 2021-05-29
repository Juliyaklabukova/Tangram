unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, unit2, unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.Show; Form1.hide;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form1.close;
end;

end.

