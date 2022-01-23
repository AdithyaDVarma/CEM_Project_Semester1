prompt="Enter the length of base AL in meters(m) : ";
base=input(prompt);
Force_GY=0;
Force_AY=0;
prompt="Enter the force hanging below ML in Newton(N) : ";
Force_F1=input(prompt);

% Taking moment about A =0 for the method of joint method
Force_F2=2*Force_F1;
Force_F3=3*Force_F1;
a1=(base*5)*Force_F1;
a2=(base*4)*Force_F2;
a3=(base*3)*Force_F3;
a4=(base*2)*Force_F2;
a5=(base)*Force_F1;
Force_GY=(a1+a2+a3+a4+a5)/(base*6);
Force_AY=Force_GY;

% From Joint A
% Summation of Fy=0
AB=Force_AY/sind(56.3);
% Summation of Fx=0
AL=AB*cosd(56.3);

% From Joint B
% Summation of Fy=0
BM=AB*sind(56.3);
% Summation of Fx=0
BC=AB*cosd(56.3);

% From Joint L
% Summation of Fx=0
LK=AL;
% Summation of Fy=0
ML=Force_F1;

% From Joint M
% Summation of Fy=0
MC=(BM-ML)/(2*sind(36.86));
% Summation of Fx=0
MK=MC;

% From Joint C
% Summation of Fx=0
CD=BC-(MC*cosd(36.86));
% Summation of Fy=0
CN=MC*sind(36.86);

% From Joint K
% Summation of Fx=0
KJ=LK+MK*cosd(36.86);
% Summation of Fy=0
NK=Force_F2-MK*sind(36.86);


% From Joint N
% Summation of Fy=0
ND=(CN-NK)/(2*sind(36.86));
% Summation of Fx=0
NJ=ND;

% By the property of symmetry
FG=AB;HG=AL;EF=BC;FD=BM;DH=ML;IH=LK;EP=MC;IP=MK;EO=CN;OI=NK;DE=CD;DO=ND;JO=NJ;JI=KJ;

% From Joint J
% Summation of Fy=0
DJ=Force_F3-(NJ*sind(36.86))-(JO*sind(36.86));
disp("      ")

%Printing the values
disp("The force Ay in the figure is: "+Force_AY+"N")
disp ("By symmetry property we can say Gy=Ay")
disp("The force AB in the figure is: "+AB+"N")
disp("The force AL in the figure is: "+AL+"N")
disp("The force BC in the figure is: "+BC+"N")
disp("The force BM in the figure is: "+BM+"N")
disp("The force LK in the figure is: "+LK+"N")
disp("The force ML in the figure is: "+ML+"N")
disp("The force MK in the figure is: "+MK+"N")
disp("The force MC in the figure is: "+MC+"N")
disp("The force CD in the figure is: "+CD+"N")
disp("The force CN in the figure is: "+CN+"N")
disp("The force KJ in the figure is: "+KJ+"N")
disp("The force NK in the figure is: "+NK+"N")
disp("The force ND in the figure is: "+ND+"N")
disp("The force NJ in the figure is: "+NJ+"N")
disp("The force DJ in the figure is: "+DJ+"N")
disp("      ")


disp("By property of symmetry observed from the figure: ")
disp("FG=AB HG=AL EF=BC FD=BM DH=ML IH=LK JI=KJ JO=NJ DO=ND DE=CD OI=NK EO=CN IP=MK EP=MC IH=LK")













