unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

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

    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure image6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure image6MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure image6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure Image7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image7MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure Image8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image8MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
  private
    znachenie:boolean;
    znachenie4:boolean;
    znachenie7:boolean;
    znachenie8:boolean;
    znachenie3:boolean;
    znachenie1:boolean;
    znachenie5:boolean;
  public

  end;

var
  Form4: TForm4;
  d1:array[1.. 8] of boolean;

implementation
uses unit2;

{$R *.lfm}

{ TForm4 }






procedure TForm4.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if d1[1]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie1:=true;
  end
  else znachenie1:=false;
end;

procedure TForm4.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if znachenie1 then
  begin
     (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цкетру фигурки
     (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
    end
end;

procedure TForm4.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie1:=false;
end;



procedure TForm4.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d1[3]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie3:=true;
  end
  else znachenie3:=false;
end;

procedure TForm4.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie3 then
  begin
     (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цкетру фигурки
     (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
    end
end;

procedure TForm4.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie3:=false;
end;


procedure TForm4.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d1[4]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront;
  znachenie4:=true;
 end
 else znachenie4:=false;
end;

procedure TForm4.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie4 then
 begin
    (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цеyтру фигурки
    (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
   end
end;

procedure TForm4.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    znachenie4:=false;
  end;

procedure TForm4.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d1[5]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie5:=true;
  end
  else znachenie5:=false;
end;

procedure TForm4.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie5 then
 begin
    (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по центру фигурки
    (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
   end
end;

procedure TForm4.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie5:=false;
end;


procedure TForm4.image6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if d1[6]<>false then
  if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie:=true;
  end
  else znachenie:=false;
  end;

procedure TForm4.image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie then
begin
   (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2);
   (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
  end
end;

procedure TForm4.image6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

begin
  znachenie:=false;
end;



procedure TForm4.Image7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if d1[7]<>false then
 if Button=mbLeft then begin
   (Sender as TImage).BringToFront;
   znachenie7:=true;
  end
  else znachenie7:=false;
end;

procedure TForm4.Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie7 then
  begin
     (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цвету фигурки
     (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
    end
end;

procedure TForm4.Image7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie7:=false;
end;



procedure TForm4.Image8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d1[8]<>false then
  if Button=mbLeft then begin
  (Sender as TImage).BringToFront;
  znachenie8:=true;
 end
 else znachenie8:=false;
end;

procedure TForm4.Image8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie8 then
begin
   (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2);
   (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
  end
end;

procedure TForm4.Image8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie8:=false;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
var i,fr:integer;
 figurki:array[1..7,1..2] of integer;
  begin
   if d1[7]=false then
    figurki[1,1]:= 200; figurki[1,2]:=536;
    figurki[2,1]:= 304; figurki[2,2]:=456;
    figurki[3,1]:= 184; figurki[3,2]:=0;
    figurki[4,1]:= -32; figurki[4,2]:=440;
    figurki[5,1]:= 32; figurki[5,2]:=0;
    figurki[6,1]:= 72; figurki[6,2]:=288;
    figurki[7,1]:= 88; figurki[7,2]:=552;
    fr:=10;
if ((form4.image6.left>figurki[5,1]-fr) and (form4.image6.left<figurki[5,1]+fr)) and ((form4.image6.top>figurki[5,2]-fr) and (form4.image6.top<figurki[5,2]+fr)) then
begin
 form4.image6.left:=figurki[5,1];
 form4.image6.top:=figurki[5,2];
 d1[6]:=false;
 end;
 if ((form4.image7.left>figurki[6,1]-fr) and (form4.image7.left<figurki[6,1]+fr)) and ((form4.image7.top>figurki[6,2]-fr) and (form4.image7.top<figurki[6,2]+fr)) then
begin
 form4.image7.left:=figurki[6,1];
 form4.image7.top:=figurki[6,2];
 d1[7]:=false;
 end;
 if ((form4.image8.left>figurki[7,1]-fr) and (form4.image8.left<figurki[7,1]+fr)) and ((form4.image8.top>figurki[7,2]-fr) and (form4.image8.top<figurki[7,2]+fr)) then
begin
 form4.image8.left:=figurki[7,1];
 form4.image8.top:=figurki[7,2];
 d1[8]:=false;
 end;
 if ((form4.image1.left>figurki[1,1]-fr) and (form4.image1.left<figurki[1,1]+fr)) and ((form4.image1.top>figurki[1,2]-fr) and (form4.image1.top<figurki[1,2]+fr)) then
begin
 form4.image1.left:=figurki[1,1];
 form4.image1.top:=figurki[1,2];
 d1[1]:=false;
 end;
 if ((form4.image3.left>figurki[2,1]-fr) and (form4.image3.left<figurki[2,1]+fr)) and ((form4.image3.top>figurki[2,2]-fr) and (form4.image3.top<figurki[2,2]+fr)) then
begin
 form4.image3.left:=figurki[2,1];
 form4.image3.top:=figurki[2,2];
 d1[3]:=false;
 end;
 if ((form4.image4.left>figurki[3,1]-fr) and (form4.image4.left<figurki[3,1]+fr)) and ((form4.image4.top>figurki[3,2]-fr) and (form4.image4.top<figurki[3,2]+fr)) then
begin
 form4.image4.left:=figurki[3,1];
 form4.image4.top:=figurki[3,2];
 d1[4]:=false;
 end;
 if ((form4.image5.left>figurki[4,1]-fr) and (form4.image5.left<figurki[4,1]+fr)) and ((form4.image5.top>figurki[4,2]-fr) and (form4.image5.top<figurki[4,2]+fr)) then
begin
 form4.image5.left:=figurki[4,1];
 form4.image5.top:=figurki[4,2];
 d1[5]:=false;
 end;
if (d1[1]=false) and (d1[3]=false) and  (d1[4]=false) and (d1[5]=false) and (d1[6]=false) and (d1[7]=false) and (d1[8]=false) then begin form4.hide; form2.show;  timer1.enabled:=false; end;

end;




   {200 536
   304 456
   184 0
   -32 440
    32 0
    72 288
    88 552  }

end.
end;


end.

