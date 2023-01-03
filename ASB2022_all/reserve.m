clear;
clc;
re = readtable('T31.xlsx','sheet',2);
year = re{:,1};
re.Properties.VariableNames
OECDAmericas = re{:,'OECDAmericas'};
OECDEurope = re{:,'OECDEurope'};
OECDAsiaAndPacific = re{:,'OECDAsiaAndPacific'};
China = re{:,'China'};
India = re{:,'India'};
Russia = re{:,'Russia'};
LatinAmerica = re{:,'LatinAmerica'};
MiddleEast = re{:,'MiddleEast'};
plot(year,OECDAmericas,LineWidth=1);
hold on
plot(year,Russia,LineWidth=1);
plot(year,OECDEurope,LineWidth=1);
plot(year,OECDAsiaAndPacific,LineWidth=1);
plot(year,China,LineWidth=1);
plot(year,India,LineWidth=1);
plot(year,LatinAmerica,LineWidth=1);
plot(year,MiddleEast,LineWidth=1);
grid on;

y1 = OECDAmericas;

legend('OECD America','Russia','OECD Europe','OECD Asia & Pacific','China','India','Latin America','Middle East');
