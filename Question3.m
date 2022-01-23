clc
%taking user input
syms F
m=input("Enter mass of car (in x10^3 Kg): ");
f=input("Enter front bumper height (in m): ");
b=input("Enter back bumper height (in m): ");
t=input("Enter value of theta: ");
CA=input("Distance from front bumber to front tyre (in m): ");
AG=input("Distance from front tyre to centre (in m): ");
GB=input("Distance from centre to back tyre (in m): ");
w=m*9.8;
MuS=0.3;
NB=(F*cosd(t))/MuS;
NA=w-(F*sind(t))-NB;
disp(" ");
disp("Force F in kN required to move the car if the back brakes are locked and front wheels are free to roll:  ");
F=solve((-NA*(AG+GB))+(F*cosd(t)*f)-(F*sind(t)*(CA+AG+GB))+(w*GB)==0)
NB=(F*cosd(t))/MuS;
NA=w-(F*sind(t))-NB;



