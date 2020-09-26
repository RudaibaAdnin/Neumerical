function y=prob1_b1_1505032(x,n)
%x=-2*pi:.2:2*pi;
%the main function to draw plot
y=1;
for k=0:n-1
    y=y+power(-1,k)*(power(x,2*k)/factorial(k*2));
end
%plot(x,y);
end
    