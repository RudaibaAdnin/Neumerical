function rl_err_1505032()
%problem 1 (number three)
%approximate relative error calculation
x=1.5;
y=1;
term_number=1:50;
%past_apprx=0;
%current_apprx=0;
past_apprx=1;
r_err=zeros(50);
for k=1:50
      y=y+power(-1,k).*(power(x,2*k)./factorial(k*2));
      current_apprx=y;
      %updating current approximation
      r_err(k)=abs((current_apprx-past_apprx)./current_apprx).*100;
      past_apprx=current_apprx;
      %updating past approximation

    
end
plot(term_number,r_err,'r');
xlabel('values of terms') % x-axis label
ylabel('relative approximation error') % y-axis label
grid;
end