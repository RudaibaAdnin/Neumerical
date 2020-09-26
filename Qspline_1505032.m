function Qspline_1505032()
x=[-5.0000,-3.3333,-1.6667,0.0000,1.6667,3.3333,5.0000];
y=[0.0000000,3.7267800 ,4.7140452 ,5.0000000,4.7140452,3.7267800 ,0.0000000];
Test_x=[-4.1667,0.8333,4.1667] 
Test_y=[2.7638540,4.9300665,2.7638540]
%Q(x7,y7,Test_x,Test_y);
 for i=3:7
%point_x=x(1:i);
%point_y=y(1:i);
j=linspace(1,7,i);
k=round(j);
point_x=x(k(1:i));
point_y=y(k(1:i));
Qtest_1505032(point_x,point_y,Test_x,Test_y);

end

end