%taking user input for dimension
d=input("Enter dimension (in m): ");
n=0:10;
x=[];a=[];b=[];c=[];
for i = n
    x=[x i];
    m=i;
    W=m*9.8;T=W/2;
    Dy=2*T; Dx=T;
    Cx=T-(T*cosd(60));Cy=T*sind(60);FG=W;
    CB=((T*d*(2^(1/2))*sind(15))-(W*(d+(d*(2^(1/2))*cosd(15))))-(Cx*d*(2^(1/2))*sind(15))-(Cy*d*(2^(1/2))*cosd(15)))/d;
    CG=(Cx-T-(CB*cosd(60))-(FG*sind(30)))/cosd(15);
    a=[a -CB];
    b=[b CG];
    c=[c FG];
    
end
plot(x,a)
hold on
plot(x,b)
hold on
plot(x,c)
legend('CB','CG','FG')
xlabel('Varying load (kN)')
ylabel('Member forces (kN)')
disp(" ")
disp("The graph has been plotted." )