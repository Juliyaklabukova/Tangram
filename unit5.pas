unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
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
    procedure Image4Click(Sender: TObject);
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
    procedure image6Click(Sender: TObject);
    procedure image6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure image6MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure image6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image7Click(Sender: TObject);
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

implementation

{$R *.lfm}

{ TForm4 }


procedure TForm4.Image1Click(Sender: TObject);
begin

end;

procedure TForm4.Button1Click(Sender: TObject);
begin

end;


procedure TForm4.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
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

procedure TForm4.Image4Click(Sender: TObject);
begin

end;

procedure TForm4.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
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
    (Sender as TImage).Left:=(Sender as TImage).Left+X - ((Sender as TImage).Width div 2); //вычитаем разделенную на 2 высоту и ширину, чтобы перетаскивалось по цкетру фигурки
    (Sender as TImage).Top:=(Sender as TImage).Top+Y - ((Sender as TImage).Height div 2);
   end
end;

procedure TForm4.Image5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 znachenie5:=false;
end;

procedure TForm4.image6Click(Sender: TObject);
begin

end;
procedure TForm4.image6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
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

procedure TForm4.Image7Click(Sender: TObject);
begin

end;

procedure TForm4.Image7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
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

procedure prov();
begin
 if image6.Left=[27..37]; image6.top=[-5..5]; then
  begin  image6.Left=32; image6.top=[-5;5]; form5.Show; form4.Hide;
 end.

{ procedure proverka_mesta();
var i:integer;
 figurki:array[1..7,1..2] of integer;
  begin

   {znachenie:=false;
   znachenie7:=false;
   znachenie8:=false;
   znachenie5:=false;
   znachenie4:=false;
   znachenie3:=false;
   znachenie1:=false; }

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
  form5.show; form4.hide;
  end;

end; }

procedure TForm4.Timer1Timer(Sender: TObject);
begin
 procedure prov();
begin
 if image6.Left=[27..37]; image6.top=[-5..5]; then
  begin  image6.Left=32; image6.top=[-5;5]; form5.Show; form4.Hide;
 end.
 {form4.button1.caption:=inttostr(image6.left);
  proverka_mesta();
end;}

end.

