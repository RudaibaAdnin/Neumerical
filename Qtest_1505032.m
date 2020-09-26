function Qtest_1505032(x,y,Test_x,Test_y)
%x=[-5.0000,-3.3333,-1.6667,0.0000,1.6667,3.3333,5.0000]
%y=[0.0000000,3.7267800,4.7140452,5.0000000,4.7140452,3.7267800,0.0000000]
%Test_x=[-4.1667,0.8333,4.1667] 
% Test_y=[2.7638540,4.9300665,2.7638540]
%[size_x,~]=size(X);
%n=size_x;
%x(1:n)=X(1:n,:);
%y(1:n)=Y(1:n,:);
[~, n]=size(x);
disp(n);
a=3*(n-1)-1;
z=zeros(a,a);
v=zeros(a,1);
j=2;
f=3;
s=n-3;
z(1,1:2)=[x(1) 1];
v(1)=y(1);
z(2,1:2)=[x(2) 1];
v(2)=y(2);
z(3,1)=1;
z(3,3:4)=[-2*x(2) -1];
for i=4:2:a-s   
    z(i,f:f+2)          =   [x(j)^2 x(j) 1];
    v(i)                =   y(j);
    j                   =   j+1;
    z(i+1,f:f+2)        =   [x(j)^2 x(j) 1];  
    v(i+1)              =   y(j);
    f                   =   f+3;
    %disp(z);
    %disp(i);
end
%disp(z);
j=3;
l=3;
k=1;
i=i+2;

while k <=s
    z(i,j:j+1)=[2*x(l) 1];
    z(i,j+3:j+4)=[-2*x(l) -1];
    j=j+3;
    l=l+1;
    k=k+1;
    i=i+1;
end
disp(z);
disp(v);
Coeff=z\v;
b=zeros(3*(n-1),1);
b(2:a+1,1)=Coeff(1:a,1);
%disp(Coeff);
disp(b);
%for i=1:3
 %   plot(Test_x(i),Test_y(i),'o');
  %  text(Test_x(i),Test_y(i), '  POINT ');
   % hold on
%end
scatter(Test_x,Test_y)
hold on;
xlabel('x');
ylabel('y');
title('Quadratic Spline')
for i=1:n
   plot(x(i),y(i),'o');
    hold on
end
j=1;
for i=1:n-1
l=linspace(x(i),x(i+1),50);
curve=b(j)*l.^2+b(j+1)*l+b(j+2);
j=j+3;
plot(l,curve,'r');
grid on;
hold on;
end
pause(1);
hold off;
clear;
end