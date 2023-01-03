clc
clear
close all
format shortG

year = transpose(1961:2021); %x
population = [28.15 %y
    28.83
    29.53
    30.24
    30.97
    31.72
    32.48
    33.26
    34.06
    34.88
    35.72
    36.59
    37.47
    38.37
    39.28
    40.19
    41.11
    42.04
    42.99
    43.98
    44.99
    46.03
    47.07
    48.11
    49.13
    50.13
    51.10
    52.05
    52.99
    53.92
    54.84
    55.75
    56.65
    57.56
    58.49
    59.42
    60.37
    61.33
    62.29
    63.24
    64.19
    65.15
    66.09
    67.01
    67.90
    68.76
    69.58
    70.42
    71.32
    72.33
    73.44
    74.65
    75.93
    77.23
    78.53
    79.83
    81.12
    82.34
    83.43
    84.34
    85.04];

f = fit(year,population,"exp1"); %one term exponential curve fitting where x=year & y=population
int1 = linspace(1961,2021,1000); %a vector of 1000 evenly spaced points in the interval [1961 2021]
int2 = linspace(2021,2031,1000); %a vector of 1000 evenly spaced points in the interval [2021 2031]
scatter(year,population,"k.") %a scatter plot of population and year
hold on
grid on
plot(int1,f(int1),"b") %interpolation interval plot
plot(int2,f(int2),"b-.") %extrapolation interval plot
plot(2031,f(2031),"rs") %here denotes the end and the projection of population 10 years later
t = text(2020,f(2031),num2str(f(2031)),"Color","red"); %displays the projected population on the plot
legend("Population","Fitted Curve","Projected Fitted Curve","Location","northwest")
ylabel("Population (Millions)")
xlabel("Year")
title("Population of Turkey")