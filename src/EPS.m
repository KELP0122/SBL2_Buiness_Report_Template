clear;
clc;
df = readtimetable('eps.xlsx');
plot(df.date,df.basicEPS,lineWidth = 1);
hold on;
plot(df.date,df.DilutedEPS,lineWidth = 1);
xlabel('date'),ylabel('$')
legend('Basic EPS','Diluted EPS');
hold off;