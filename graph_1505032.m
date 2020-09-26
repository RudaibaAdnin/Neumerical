function graph_1505032()
%1.2x + 2.25y ? 14
%x + 1.1y ? 8
%2.5x + y ? 9
%x ? 0
%y ? 0
%f(x, y) = 1.75x+1.25y
x1=1:5;
y1=(14-(1.2.*(x1)))./2.25;
x2=1:5;
y2=(8-x2)./1.1;
x3=1:5;
y3=(9-(2.5.*x3));
p1=263/93;
q1=440/93;
p2=38/35;
q2=44/7;
p3=250/177;
q3=968/177;
z1=1.75*p1+1.25*q1;
z2=1.75*p2+1.25*q2;
z3=1.75*p3+1.25*q3;
disp('z1 is:')

max=z1;
if(z2>max)
   max=z2;
else if(z3>max)
        max=z3;
 end
    %disp(max);
    disp('z1 is');
    disp(z1);
    disp('z2 is');
    disp(z2);
    disp('z3 is');
    disp(z3);
    disp('Max is==>');
    disp(max);
plot(x1,y1,x2,y2,x3,y3,p1,q1,'o',p2,q2,'*',p3,q3,'o');
end