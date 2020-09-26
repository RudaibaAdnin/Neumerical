function prob1_b_1505032()
%1 number problem(2nd one)
%draws plot for term 1,3,5,20
x=-2*pi:.2:2*pi;
plot(x,prob1_b1_1505032(x,1),x,prob1_b1_1505032(x,3),x,prob1_b1_1505032(x,5),x,prob1_b1_1505032(x,20));
%plot(x,roll(x,1))
xlabel('Angle ') % x-axis label
ylabel('value o cos(x)') % y-axis label
end