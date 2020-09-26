function prob1_a_1505032()
x=-2*pi:.2:2*pi;
y=cos(x);
%plot(x,prob1_b1_1505032(x,1),x,prob1_b1_1505032(x,3),x,prob1_b1_1505032(x,5),x,prob1_b1_1505032(x,20))
plot(x,y);
title('Graph of  Cosine Between -2*pi and 2*pi');
xlabel('Angle ') % x-axis label
ylabel('value o cos(x)') % y-axis label
end