unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
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
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3Click(Sender: TObject);

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
    znachenie1:boolean;
    znachenie14:boolean;
    znachenie17:boolean;
    znachenie18:boolean;
    znachenie13:boolean;
    znachenie11:boolean;
    znachenie15:boolean;
  public

  end;

var
  Form3: TForm3;
  d2:array[1..8] of boolean;

implementation
uses unit2;
{$R *.lfm}

{ TForm3 }






procedure tform3.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if d2[1]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie11:=true;
  end
  else znachenie11:=false;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin

end;

procedure tform3.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if znachenie11 then
  begin
     (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цкетру фигурки
     (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
    end;
end;

procedure tform3.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie11:=false;
end;

procedure TForm3.Image3Click(Sender: TObject);
begin

end;


procedure tform3.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d2[3]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie13:=true;
  end
  else znachenie13:=false;
end;

procedure tform3.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie13 then
  begin
     (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цкетру фигурки
     (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
    end;
end;

procedure tform3.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie13:=false;
end;



procedure tform3.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d2[4]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront;
  znachenie14:=true;
 end
 else znachenie14:=false;
end;

procedure tform3.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie14 then
 begin
    (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цеyтру фигурки
    (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
   end;
end;

procedure tform3.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    znachenie14:=false;
  end;


procedure tform3.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d2[5]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie15:=true;
  end
  else znachenie15:=false;
end;

procedure tform3.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie15 then
 begin
    (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по центру фигурки
    (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
   end
end;

procedure tform3.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie15:=false;
end;

procedure tform3.image6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if d2[6]<>false then
  if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie1:=true;
  end
  else znachenie1:=false;
  end;

procedure tform3.image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie1 then
begin
   (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2);
   (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
  end
end;

procedure tform3.image6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

begin
  znachenie1:=false;
end;


procedure tform3.Image7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if d2[7]<>false then
 if Button=mbLeft then begin
   (Sender as TImage).BringToFront;
   znachenie17:=true;
  end
  else znachenie17:=false;
end;

procedure tform3.Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie17 then
  begin
     (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цвету фигурки
     (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
    end
end;

procedure tform3.Image7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie17:=false;
end;



procedure tform3.Image8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d2[8]<>false then
  if Button=mbLeft then begin
  (Sender as TImage).BringToFront;
  znachenie18:=true;
 end
 else znachenie18:=false;
end;

procedure tform3.Image8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie18 then
begin
   (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2);
   (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
  end
end;

procedure tform3.Image8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie18:=false;
end;


procedure tform3.Timer1Timer(Sender: TObject);
var i,fr:integer;
 figurki:array[1..7,1..2] of integer;
  begin
   if d2[7]=false then
    figurki[1,1]:= 8; figurki[1,2]:=216;                     {216 8
   336 168
    160 224
    336 600
    0 7
     48 858
    336 408
      }
    figurki[2,1]:= 168; figurki[2,2]:=336;
    figurki[3,1]:= 224; figurki[3,2]:=160;
    figurki[4,1]:= 600; figurki[4,2]:=336;
    figurki[5,1]:= 7; figurki[5,2]:=0;
    figurki[6,1]:= 858; figurki[6,2]:=48;
    figurki[7,1]:= 408; figurki[7,2]:=336;
    fr:=10;
if ((form3.image6.left>figurki[5,1]-fr) and (form3.image6.left<figurki[5,1]+fr)) and ((form3.image6.top>figurki[5,2]-fr) and (form3.image6.top<figurki[5,2]+fr)) then
begin
 form3.image6.left:=figurki[5,1];
 form3.image6.top:=figurki[5,2];
 d2[6]:=false;
 end;
 if ((form3.image7.left>figurki[6,1]-fr) and (form3.image7.left<figurki[6,1]+fr)) and ((form3.image7.top>figurki[6,2]-fr) and (form3.image7.top<figurki[6,2]+fr)) then
begin
 form3.image7.left:=figurki[6,1];
 form3.image7.top:=figurki[6,2];
 d2[7]:=false;
 end;
 if ((form3.image8.left>figurki[7,1]-fr) and (form3.image8.left<figurki[7,1]+fr)) and ((form3.image8.top>figurki[7,2]-fr) and (form3.image8.top<figurki[7,2]+fr)) then
begin
 form3.image8.left:=figurki[7,1];
 form3.image8.top:=figurki[7,2];
 d2[8]:=false;
 end;
 if ((form3.image1.left>figurki[1,1]-fr) and (form3.image1.left<figurki[1,1]+fr)) and ((form3.image1.top>figurki[1,2]-fr) and (form3.image1.top<figurki[1,2]+fr)) then
begin
 form3.image1.left:=figurki[1,1];
 form3.image1.top:=figurki[1,2];
 d2[1]:=false;
 end;
 if ((form3.image3.left>figurki[2,1]-fr) and (form3.image3.left<figurki[2,1]+fr)) and ((form3.image3.top>figurki[2,2]-fr) and (form3.image3.top<figurki[2,2]+fr)) then
begin
 form3.image3.left:=figurki[2,1];
 form3.image3.top:=figurki[2,2];
 d2[3]:=false;
 end;
 if ((form3.image4.left>figurki[3,1]-fr) and (form3.image4.left<figurki[3,1]+fr)) and ((form3.image4.top>figurki[3,2]-fr) and (form3.image4.top<figurki[3,2]+fr)) then
begin
 form3.image4.left:=figurki[3,1];
 form3.image4.top:=figurki[3,2];
 d2[4]:=false;
 end;
 if ((form3.image5.left>figurki[4,1]-fr) and (form3.image5.left<figurki[4,1]+fr)) and ((form3.image5.top>figurki[4,2]-fr) and (form3.image5.top<figurki[4,2]+fr)) then
begin
 form3.image5.left:=figurki[4,1];
 form3.image5.top:=figurki[4,2];
 d2[5]:=false;
 end;
if (d2[1]=false) and (d2[3]=false) and  (d2[4]=false) and (d2[5]=false) and (d2[6]=false) and (d2[7]=false) and (d2[8]=false) then begin form3.hide; form2.show; timer1.enabled:=false; end;

end;




   {216 8
   336 168
    160 224
    336 600
    0 7
     48 858
    336 408
      }

end.
end;


end.

