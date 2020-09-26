function newt_1505032(X,Y)
[size_x,~]=size(X);
%[size_y,~]=size(Y);
n=size_x;
disp('the number of x is');
disp(n);
x(1:n)=X(1:n,:);
y(1:n)=Y(1:n,:);
mat=zeros(n+1,n);
mat(1,1:n)=x(1:n);
mat(2,1:n)=y(1:n);
k=1;
r=1;
for i=2:n
    for j=1:n-k
        mat(i+1,j)=(mat(i,j+1)-mat(i,j))./(mat(1,r+1)-mat(1,j));
        %disp(mat);
        r=r+1;
    end
    k=1+k;
    r=i;
    
end
   disp(mat);
   b(1:n)=mat(2:n+1,1);
   disp('the values of constants  are:');
   disp(b);
  
%f=zeros(1,n);
%z=12;
%i=1;
%s=n;
t=1;
z1=-.5:.5:1.1;
[u,v]=size(z1);
main=zeros(1,v);
for z=-.5:.5:1.1
s=n;
f=zeros(1,n);

for p=1:n
    f(p)=b(s);
    for q=s:-1:1
    f(p)=(f(p)*(z-x(q)));
    %disp(b(p));
    %disp(k(q));
    end
     i=i+1;
     s=s-1;
    %disp(i);
    %disp(f(p));
end
ma=0;
  for c=1:n
    ma=ma+f(1,c);
  end
  main(t)=ma;
  disp('main is:');
    disp(main(t));
    %plot(z,main(t),'o');
t=t+1;
end

disp(main);
 plot(z1,main,'r');
end
