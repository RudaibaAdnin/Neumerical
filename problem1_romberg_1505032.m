function problem1_romberg_1505032()

%you just have to press run
%y=@(x)(x*exp(1)^x);
x0=0;
y0=3;
max_error=.01;
step_value=1;
iteration_value=0;
max_iteration=16;
main(1,1)=trapojoidal(x0,y0,step_value);
while iteration_value<max_iteration
    
    iteration_value=iteration_value+1;
    
    step_value=2^iteration_value;
    main(iteration_value+1,1)=trapojoidal(x0,y0,step_value); 
    for m=2:iteration_value+1 
        
        i=2+iteration_value-m; 
        v=(4^(m-1)*main(i+1,m-1)-main(i,m-1));
        main(i,m)=v/(4^(m-1)-1);
        disp(main);
    end
    %value_error=abs((main(1,iteration+1)-main(2,iteration))/main(1,iteration+1));
    value_error=abs((41.17107385-main(2,iteration_value))/main(1,iteration_value+1));
    
    perc_error=value_error; %*100;
    if perc_error<=max_error
        break; 
    end
end
%disp('The iteration is:');
%disp(iteration);
disp('The ans is:');
disp(main(1,iteration_value+1));

end

%trapzoidal function
function main=trapojoidal(x0,y0,step)
y=@(x)(x*exp(1)^x);
p_value=x0;
q_value=y0;
%step=n;
dx=(q_value-p_value)/step;
val=y(x0);
for i =1:step-1
   p_value=p_value+dx;
   val=val+2*y(p_value);

end
val=val+y(q_value);
main=(y0-x0)*val/(2*step);
end