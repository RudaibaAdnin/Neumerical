function gold_1505032(lower_bound,higher_bound,max_iter,max_err,f)
a_low=lower_bound;
a_high=higher_bound;
iteration=1;
value_R=(5^0.5-1)/2;
value_d=value_R*(a_high-a_low);
a1=a_low+value_d;
a2=a_high-value_d;
f1=f(a1);
f2=f(a2);
if(f1>f2)
    a=a1;
    fa=f1;
else
    a=a2;
    fa=f2;
end
while(1)
value_d=value_R*value_d;
if(f1>f2)
    a_low=a2;
    a2=a1;
    a1=a_low+value_d;
    f2=f1;
    f1=f(a1);
else
    a_high=a1;
    a1=a2;
    a2=a_high-value_d;
    f1=f2;
    f2=f(a2);
end
iteration=iteration+1;
if(f1>f2)
    a=a1;
    fa=f1;
else
    a=a2;
    fa=f2;
end
if(a~=0)
    ea=(1-value_R).*abs((a_high-a_low)/a).*100;
end
if(iteration>=max_iter||ea<max_err)
    break;
end
end
g=a;
disp('the value is');
disp(g);
end