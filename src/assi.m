clear;
clc;
df = readtable('ass1.xlsx','sheet',2);
[row,col] = size(df);
x = df{:,1};
y3 = df{:,3};
y4 = df{:,4};
p1 = polyfit(x,y3,4);
p2 = polyfit(x,y4,4);
y1fit = polyval(p1,x);
y2fit = polyval(p2,x);
plot(x,y3,'bo',x,y1fit,'Markersize',3.5);
hold on
plot(x,y4,'ro',x,y2fit,'Markersize',3.5);
y0 = 0*x;
plot(x,y0,'k-');
% scatter(df{:,1},df{:,j});
grid on;
xlabel('year'),ylabel('Profit Margin'),legend('Gross Margin','','Net Margin','');
hold off;
plot(x,df{:,2},'LineWidth',1.5);
hold on;
plot(x,df{:,5},'LineWidth',1.5);
plot(x,df{:,6},'LineWidth',1.5);
yy= df{:,2};
str1=num2str(yy);
text(x,yy,str1);
legend('Revenue','COGS','Expense');
xlabel('year'),ylabel('$ Million')

hold off;
scatter(df{:,1},df{:,3});
hold on
grid on
scatter(df{:,1},df{:,4});
legend('Gross Margin','Net Margin');
plot(x,y0,'k-');

