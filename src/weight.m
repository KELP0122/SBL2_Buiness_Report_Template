R = randn(1000,1000);
result = entropyWeight(R);
result2 = cv(R);
function [w]=entropyWeight(x)  %ÊäÈëxÊý¾Ý¾ØÕó½á¹¹ÊÇÁÐÎªÖ¸±ê£¬ÐÐÎªÑù±¾
[n,m]=size(x);
%% ¹éÒ»»¯´¦Àí
[X,ps]=mapminmax(x');
ps.min=min(min(X)); % ¹éÒ»»¯µÃµ½µÄ×îÐ¡Öµ
ps.max=max(max(X)); % ¹éÒ»»¯µÃµ½µÄ×î´óÖµ
ps.range=ps.ymax-ps.ymin; % ¹éÒ»»¯ºóµÄ¼«²î
X=X';  % XÎª¹éÒ»»¯ºóµÄÊý¾Ý
%% ¼ÆËãµÚj¸öÖ¸±êÏÂ£¬µÚi¸ö¼ÇÂ¼Õ¼¸ÃÖ¸±êµÄ±ÈÖØp(i,j)
for i=1:n
    for j=1:m
        p(i,j)=X(i,j)/sum(X(:,j));
    end
end
%% ¼ÆËãµÚj¸öÖ¸±êµÄìØÖµe(j)
k=1/log(n);
for j=1:m
    e(j)=-k*sum(p(:,j).*log(p(:,j)));
end
d=ones(1,m)-e;  % ¼ÆËãÐÅÏ¢ìØÈßÓà¶È
w=d./sum(d);    %ÇóÈ¨Öµw
end

function [ w,ave,score] = cv( A )
[m,n]=size(A);%m:¶ÔÏóÊý£¬n£ºÖ¸±êÊý
v=zeros(1,n);
w=zeros(1,n);
for i=1:n
    v(i)=std(A(:,i))/mean(A(:,i));
end
for i=1:n
   w(i)=v(i)/sum(v);
end
disp('È¨ÖØÎª£º')
w

score=w(1)*A(:,1)+w(2)*A(:,2);%Õâ²¿·ÖÒª¸ù¾ÝÊµ¼ÊÇé¿öÐÞ¸Ä

disp('µÃ·ÖÆ½¾ùÖµ£º')
ave=mean(score)
end
