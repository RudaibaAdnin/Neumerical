function prob2_1505032()

x=0:.02:.99;
%k=x/(1-x).*sqrt(2.*p./(2+x))
%here k=0.05, p=3
y=(x./(1-x)).*sqrt((2*3)./(2+x))-.05;
plot(x,y,'b')
grid
end
