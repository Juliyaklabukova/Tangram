unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
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
    znachenie3:boolean;
    znachenie34:boolean;
    znachenie37:boolean;
    znachenie38:boolean;
    znachenie33:boolean;
    znachenie31:boolean;
    znachenie35:boolean;
  public

  end;

var
  Form5: TForm5;
   d3:array[1.. 8] of boolean;
implementation
  uses unit2;
{$R *.lfm}

{ TForm5 }

procedure tform5.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if d3[1]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie31:=true;
  end
  else znachenie31:=false;
end;

procedure TForm5.Image1Click(Sender: TObject);
begin

end;



procedure tform5.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if znachenie31 then
  begin
     (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цкетру фигурки
     (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
    end;
end;

procedure tform5.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie31:=false;
end;




procedure tform5.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d3[3]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie33:=true;
  end
  else znachenie33:=false;
end;

procedure tform5.Image3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie33 then
  begin
     (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цкетру фигурки
     (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
    end;
end;

procedure tform5.Image3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie33:=false;
end;



procedure tform5.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d3[4]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront;
  znachenie34:=true;
 end
 else znachenie34:=false;
end;

procedure tform5.Image4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie34 then
 begin
    (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цеyтру фигурки
    (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
   end;
end;

procedure tform5.Image4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    znachenie34:=false;
  end;


procedure tform5.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d3[5]<>false then
 if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie35:=true;
  end
  else znachenie35:=false;
end;

procedure tform5.Image5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie35 then
 begin
    (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по центру фигурки
    (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
   end
end;

procedure tform5.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie35:=false;
end;

procedure tform5.image6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if d3[6]<>false then
  if Button=mbLeft then begin
  (Sender as TImage).BringToFront; //процедура выдвигает компонент, в котором произошло событие, на передний план
  znachenie3:=true;
  end
  else znachenie3:=false;
  end;

procedure tform5.image6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie3 then
begin
   (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2);
   (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
  end
end;

procedure tform5.image6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);

begin
  znachenie3:=false;
end;


procedure tform5.Image7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if d3[7]<>false then
 if Button=mbLeft then begin
   (Sender as TImage).BringToFront;
   znachenie37:=true;
  end
  else znachenie37:=false;
end;

procedure tform5.Image7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie37 then
  begin
     (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цвету фигурки
     (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
    end
end;

procedure tform5.Image7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie37:=false;
end;



procedure tform5.Image8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if d3[8]<>false then
  if Button=mbLeft then begin
  (Sender as TImage).BringToFront;
  znachenie38:=true;
 end
 else znachenie38:=false;
end;

procedure tform5.Image8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if znachenie38 then
begin
   (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2);
   (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
  end
end;

procedure tform5.Image8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie38:=false;
end;


procedure tform5.Timer1Timer(Sender: TObject);
var i,fr:integer;
 figurki:array[1..7,1..2] of integer;
  begin
   if d3[7]=false then
    figurki[1,1]:= 8; figurki[1,2]:=8;                          {8 8
   8 232
   8 224
    688 168
    624 543
     456 395
    696 0
      }
    figurki[2,1]:= 8; figurki[2,2]:=232;
    figurki[3,1]:= 8; figurki[3,2]:=224;
    figurki[4,1]:= 688; figurki[4,2]:=168;
    figurki[5,1]:= 624; figurki[5,2]:=543;
    figurki[6,1]:= 456; figurki[6,2]:=395;
    figurki[7,1]:= 696; figurki[7,2]:=0;
    fr:=10;
if ((form5.image6.left>figurki[5,1]-fr) and (form5.image6.left<figurki[5,1]+fr)) and ((form5.image6.top>figurki[5,2]-fr) and (form5.image6.top<figurki[5,2]+fr)) then
begin
 form5.image6.left:=figurki[5,1];
 form5.image6.top:=figurki[5,2];
 d3[6]:=false;
 end;
 if ((form5.image7.left>figurki[6,1]-fr) and (form5.image7.left<figurki[6,1]+fr)) and ((form5.image7.top>figurki[6,2]-fr) and (form5.image7.top<figurki[6,2]+fr)) then
begin
 form5.image7.left:=figurki[6,1];
 form5.image7.top:=figurki[6,2];
 d3[7]:=false;
 end;
 if ((form5.image8.left>figurki[7,1]-fr) and (form5.image8.left<figurki[7,1]+fr)) and ((form5.image8.top>figurki[7,2]-fr) and (form5.image8.top<figurki[7,2]+fr)) then
begin
 form5.image8.left:=figurki[7,1];
 form5.image8.top:=figurki[7,2];
 d3[8]:=false;
 end;
 if ((form5.image1.left>figurki[1,1]-fr) and (form5.image1.left<figurki[1,1]+fr)) and ((form5.image1.top>figurki[1,2]-fr) and (form5.image1.top<figurki[1,2]+fr)) then
begin
 form5.image1.left:=figurki[1,1];
 form5.image1.top:=figurki[1,2];
 d3[1]:=false;
 end;
 if ((form5.image3.left>figurki[2,1]-fr) and (form5.image3.left<figurki[2,1]+fr)) and ((form5.image3.top>figurki[2,2]-fr) and (form5.image3.top<figurki[2,2]+fr)) then
begin
 form5.image3.left:=figurki[2,1];
 form5.image3.top:=figurki[2,2];
 d3[3]:=false;
 end;
 if ((form5.image4.left>figurki[3,1]-fr) and (form5.image4.left<figurki[3,1]+fr)) and ((form5.image4.top>figurki[3,2]-fr) and (form5.image4.top<figurki[3,2]+fr)) then
begin
 form5.image4.left:=figurki[3,1];
 form5.image4.top:=figurki[3,2];
 d3[4]:=false;
 end;
 if ((form5.image5.left>figurki[4,1]-fr) and (form5.image5.left<figurki[4,1]+fr)) and ((form5.image5.top>figurki[4,2]-fr) and (form5.image5.top<figurki[4,2]+fr)) then
begin
 form5.image5.left:=figurki[4,1];
 form5.image5.top:=figurki[4,2];
 d3[5]:=false;
 end;
if (d3[1]=false) and (d3[3]=false) and  (d3[4]=false) and (d3[5]=false) and (d3[6]=false) and (d3[7]=false) and (d3[8]=false) then begin form5.hide; form2.show; timer1.enabled:=false; end;
end;




   {8 8
   8 232
   8 224
    688 168
    624 543
     456 395
    696 0
      }

end.
end;


end.


