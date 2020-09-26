function [root,iter_number]=false_1505032(f,lower_bound,upper_bound,exp_error,max_iteration) 
%false position method
%function takes five parameters(func,lower bound,lower bound,
%expected error and max iteration
%the function is: f=@(x)((x./(1-x)).*sqrt(6./(2+x))-.05)
x0=lower_bound;
x1=upper_bound;
iter_number=0;
x_prev=0;
g=zeros(max_iteration);
%t=1:max_iteration;
   for i=1:max_iteration
             x2 = (x0*f(x1) - x1*f(x0)) / (f(x1)-f(x0));
            % g(i)=x2;
             iter_number=iter_number+1;
            if f(x1)*f(x2)<0
                          x1=x2;
            elseif f(x1)*f(x2)>0
                 x0=x2;
            else
                root=x2;
                break
            end
           if  abs(f(x2)) < exp_error
            %if (abs((x2-x_old)./x2)*100)<exp_error
                root=x2;
                 break 
            end

         %x_prev=x2;   
   end
   %plot(t,g);
   %grid
end