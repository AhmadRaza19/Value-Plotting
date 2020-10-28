
% Project 2 - Plotting
% Ahmad Raza
% CS 109, Fall 2020, Koehler

mindist=[2.71 4.25 0.92 0.03 0.79 1.22 4.84 1.16]; %km
maxdist=[84.07 248.54 269.4 283.54 294.96 515.89 3975.58 6115.71]; %km
avdist=[18.4 79.46 101.24 27.15 46.33 92.36 1246.15 1713.57]; %km
time=[500 30 300 450 5000 15 100 100]; %years
ghg=[0.001 0.004 0.005 0.001 0.002 0.005 0.066 0.091]; %MTCE/us ton
types=["glass", "wood", "computer", "plastic", "styrofoam", "wood", "battery", "cartridge"];

%Subplot 1
subplot(3,1,1);
x = linspace(1,8,8);
plot(x,mindist,"r--", "LineWidth",2); % "ro--" assigns a red dashed line
hold all;
plot(x,maxdist, "b--","LineWidth",2); % "bo--" assigns a blue dashed line
plot(x,avdist,"g--","LineWidth",2); % "go--" assigns a green dashed line
xticks(1:8);
xticklabels(types);
legend("Minimum Distance","Maximum Distance", "Average Distance","Location", "northwest");
xlabel("Types of Trash");
ylabel("Distance, km");
title("Distances different types of trash travel");
grid on;

%Subplot 2
subplot(3,1,2);
ind1 = find(ghg > 0.05);
plot(x,ghg,"ks","MarkerSize",15 ,"MarkerFaceColor","k"); %%"ks" assigns a black square line
hold all;
plot(x(ind1), ghg(ind1), "ro","MarkerSize", 20,"LineWidth", 2); % "ro" assigns a red circle
xticks(1:8);
xticklabels(types);
xlabel("Types of Trash");
ylabel("GHG, MTCE/us ton");
title("Green house emissions from various types of trash");
grid on;

%Subplot 3
subplot(3,1,3);
ind2 = find(time > 400);
plot(x,time, "g*","MarkerSize", 15); % "g*" assigns a green asterik line
hold all;
plot(x(ind2),time(ind2),"ro", "MarkerSize",20,"LineWidth", 2) % "ro" assigns a red circle
xticks(1:8);
xticklabels(types);
xlabel("Types of Trash");
ylabel("Time, years");
title("Time to decompose various types of trash");
grid on;

