function [flag,min_index]=Minneg_1505032(A)
%disp('Mat is');
%disp(A);
[~,col] = size(A);
%disp('row is:');
%disp(row);
%disp('column is:');
%disp(col);
a=A(1);
min_index=1;
flag=0;
%disp('a is here:');
%disp(a);
for k=1:col
    %disp('A(k) is:');
    %disp(A(k));
     if(A(k)<a)
        a=A(k);
        %disp('a is:');
       %disp(a);
        min_index=k;
         %disp('index is:');
       %disp(k);
    end
    if(flag==0&&A(k)< 0)
        flag=1;
        %disp('flag is:');
       %disp(flag);
    end
  
end
end
