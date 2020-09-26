function [track,track_index]=Mintrack_1505032(A,B)
%disp('trackmin A is:');
%disp(A);
%disp('trackmin B is:');
%disp(B);
[a,~] = size(A);
%disp('trackmin A row is:');
%disp(a);
ratio=intmax('int64');
if(A(1)~= 0)
   ratio=B(1)/A(1);
end
track=A(1);
track_index =1;
for k=1:(a-1)
    if((B(k)/A(k))<ratio&&A(k)~=0)
        track=A(k);
        ratio=B(k)/A(k);
        %disp('the track is');
        %disp(track);
        track_index = k;
        %disp('the index j is');
        %disp(k);
    end
end
        
end