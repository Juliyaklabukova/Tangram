unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Timer1: TTimer;
    procedure Image1Click(Sender: TObject);
    procedure image6Click(Sender: TObject);
    procedure image6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure image6MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure image6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }


procedure TForm4.Image1Click(Sender: TObject);
begin

end;

procedure TForm4.image6Click(Sender: TObject);
begin

end;
procedure TForm4.image6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var x0, y0:integer; //x0, y0 координаты начального положения перемещаемой картинки
  znachenie:boolean; //znachenie помогает отличить перемещение мыши от попытки сдвинуть картинку(true-перемещение началось)
begin
  if Button=mbLeft then begin
  x0:=image6.Left;
  y0:=image6.Top;
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie:=true;
  end
  else znachenie:=false;
  end;

procedure TForm4.image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var znachenie:boolean;
  x0, y0:integer;
begin
 if znachenie then with TImage(Sender) do
begin
  left:=left+x-x0;
  top:=top+y-y0
  end
end;

procedure TForm4.image6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var znachenie:boolean;
begin
  znachenie:=false;
end;

procedure TForm4.Image7Click(Sender: TObject);
begin

end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin

end;

end.


   {200 536
   304 456
   184 0
   -32 440
    32 0
    72 288
    88 552  }
procedure TForm4.Image7Click(Sender: TObject);
begin

end;

procedure proverka_mesta();
var i:integer;
 figurki:array[1..7,1..2] of integer;
  begin
    figurki[1,1]:= 200; figurki[1,2]:=536;
    figurki[2,1]:= 304; figurki[2,2]:=456;
    figurki[3,1]:= 184; figurki[3,2]:=0;
    figurki[4,1]:= -32; figurki[4,2]:=440;
    figurki[5,1]:= 32; figurki[5,2]:=0;
    figurki[6,1]:= 72; figurki[6,2]:=288;
    figurki[7,1]:= 88; figurki[7,2]:=552;

if ((form4.image6.left>figurki[5,1]-5) and (form4.image6.left<figurki[5,1]+5)) and ((form4.image6.top>figurki[5,2]-5) and (form4.image6.top<figurki[5,2]+5)) then
begin
  form4.image6.left:=figurki[5,1];
  form4.image6.top:=figurki[5,2];
  end;

end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
  proverka_mesta();
end;

end.

