clc;
clear;
df = readtable('OilPrice.xlsx');
x = datetime(df{:,1});
x0 = 1:5097;
y = df{:,2};
plot(x,y);
legend('OPEC barrel price');
xlabel('Date')
ylabel('$')
[f,xi] = ksdensity(x0,y);
