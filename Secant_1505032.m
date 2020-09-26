function  [root,iter_number]=Secant_1505032(f,first_guess,second_guess,exp_error,max_iteration) 
%secant method
%function takes five parameters(func,1st guess,2nd guess,
%expected error and max iteration
%the function is: f=@(x)((x./(1-x)).*sqrt(6./(2+x))-.05)
g=zeros(50);
x1=first_guess;
x2=second_guess;
%t=1:max_iteration;
iter_number=0;
for i=1:max_iteration
    x=x2-(f(x2).*(x1-x2)./(f(x1)-f(x2)));
    %g(i)=x;
    iter_number=iter_number+1;
    if abs((x-x2)/x)*100<exp_error
        root=x;
        break;
    else
        x1=x2;
        x2=x;
    end
end
%plot(t,g);
end