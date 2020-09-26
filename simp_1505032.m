function simp_1505032(A,B)
[row,col]=size(A);
[rowB,~]=size(B);
full=[A B];
if(row~=rowB)
    disp('Error');
    return;
end
%disp('row is:');
%disp(row);
%disp('column is:');
%disp(col);

for i=1:n
    L(i+1:n,i)=A1(i+1:n,i)./A1(i,i);
    for k=i+1:n
        A1(k,:)=A1(k,:)-(L(k,i).*A1(i,:));
    end
    %disp(A1);
 end
%main=A1;
%main2=b1;
    end
   
end

fprintf('z is  ')
disp(full(row,col+1));
disp('The matrix is');
disp(full);
end


