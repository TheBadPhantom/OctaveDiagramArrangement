# Clear all at entry
clear all;
close all;
clc;

# Add the functions folder to the path
addpath('.\Diagrams');

# Generate some demo data
x = 0:0.01:20;
data1 = 200*exp(-0.15*x).*sin(x);
data2 = 1./exp(-0.1*x).*cos(x);
data3 = 200*cos(x);
data4 = 0.6*exp(-0.4*x).*sin(10*x);
data5 = 0.9*exp(-0.6*x).*cos(x);

# Call the different functions to create the diagrams
Arrangement_2_2(x, data1, data2, data3, data4, data5);
#Arrangement_2_2copy(x, data1, data2, data3, data4, data5);
Arrangement_1_2_1(x, data1, data2, data3, data4, data5);
#Arrangement_1_2_1copy(x, data1, data2, data3, data4, data5);
#Arrangement_4(x, data1, data2, data3, data4, data5);


# Ensure that the figures remain open

h = figure(99);
#h = plot(datesForPlotLatest, [ETAResult.ETA_Puffer_unten])

printf("END\n")

waitfor(h)
disp('Now that the figure has been destroyed I can exit')