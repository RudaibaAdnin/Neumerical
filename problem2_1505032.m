function problem2_1505032()
%you just have to press run
h_value=0.5;
x0=0;
x_max_value=4;
y0=-1;
%y0=1;
n_value=(x_max_value-x0)/h_value;
x_value=zeros(1,n_value+1);
y_value=zeros(1,n_value+1);
% Heun’s method

x_value(1)=x0;
y_value(1)=y0;
b1_value=0.5;
b2_value=0.5;

for m=1:n_value
   s1=Func(x_value(m),y_value(m));
   s2=Func(x_value(m)+h_value,y_value(m)+s1*h_value);
  y_value(m+1)=y_value(m)+(b1_value*s1+b2_value*s2)*h_value;
   x_value(m+1)=x_value(m)+h_value;
end
plot(x_value,y_value,'m');
hold on;
plot(x_value,y_value,'o');
hold on;
%raltson method

x_value(1)=x0;
y_value(1)=y0;
p_value=3/4;
q_value=3/4;
b1_value=1/3;
b2_value=2/3;

for m=1:n_value
   s1=Func(x_value(m),y_value(m));
   s2=Func(x_value(m)+p_value*h_value,y_value(m)+q_value*s1*h_value);
    y_value(m+1)=y_value(m)+(b1_value*s1+b2_value*s2)*h_value;
   x_value(m+1)=x_value(m)+h_value;
end
plot(x_value,y_value,'color','green');
hold on;
plot(x_value,y_value,'o');
hold on;
%end

% Midpoint Method

p_value=1/2;
q_value=1/2;
x_value(1)=x0;
y_value(1)=y0;
b1_value=0;
b2_value=1;

for m=1:n_value
  s1=Func(x_value(m),y_value(m));
  s2=Func(x_value(m)+p_value*h_value,y_value(m)+q_value*s1*h_value);
  y_value(m+1)=y_value(m)+(b1_value*s1+b2_value*s2)*h_value;
  x_value(m+1)=x_value(m)+h_value;
end
plot(x_value,y_value,'color','blue');
hold on;
plot(x_value,y_value,'o');
hold on;
%end

%eular method


x_value(1)=x0;
y_value(1)=y0;
for m=1:n_value
x_value(m+1)=x_value(m)+h_value;
 s=Func(x_value(m),y_value(m));
 y_value(m+1)=y_value(m)+h_value*s;
%disp(s);
end;
plot(x_value,y_value,'color','cyan');
hold on;
plot(x_value,y_value,'o');
hold on;

%true value

 x_value(1)=x0;
 y_value(1)=y0;
for j=1:n_value
    x_value(j+1)=x_value(j)+h_value;
    %y(j+1)=(-.5)*x(j+1)^4+4*x(j+1)^3-10*x(j+1)^2+8.5*x(j+1)+1;
    y_value(j+1)=x_value(j+1)^4-5*x_value(j+1)^2+3*x_value(j+1)-1;
    %x(j+1)=x(j)+h;
 end
plot(x_value,y_value,'color','red');
hold on;
plot(x_value,y_value,'o');
hold on;
grid on;

x1=.25;
y1=y_value(j+1);
y2=y1-9;
y3=y2-9;
y4=y3-9;
y5=y4-9;
txt1 = 'Heun=>  Magenta -----';
t1=text(x1,y1,txt1);
set(t1,'Color','magenta');
%y2=y1-9;
txt2 = 'Raltson=>  green -----';
t2=text(x1,y2,txt2);
set(t2,'Color','green');
%y3=y2-9;
txt3 ='Midpoint=>  blue -----';
t3=text(x1,y3,txt3);
set(t3,'Color','blue');
%y4=y3-9;
txt4='Eular=>  cyan   -----';
t4=text(x1,y4,txt4);
set(t4,'Color','cyan');
%y5=y4-9;
txt5='True=>   red   -----';
t5=text(x1,y5,txt5);
set(t5,'Color','red')
xlabel('x value ------>');
ylabel('y value ------>');
title('Comparing Runge Kutta Methods');
end
function s=Func(a,y)
s=4*(a)^3-10*a+3;
%s=-2*a*a*a+12*a*a-20*a+8.5;
%disp(s);
end