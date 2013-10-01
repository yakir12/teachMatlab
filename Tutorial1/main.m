close all
clear all
clc
%% Mat file
a = load('cornea distal_ArgoC1.mat');
aperture = a.app;
fun = a.ch;
x = linspace(-aperture/2,aperture/2,1e3);
y = fun(x);
figure
plot(x,y)
%% Excel file
[num,txt] = xlsread('results.xls');
tube = num(:,4);
cp = num(:,2);
n = length(tube)
n_success = sum(tube ~= cp)
%% Comma seperated file
num = csvread('layers.csv');
axial_distance = num(:,2);
x = cumsum(axial_distance);
ri = num(:,3);
figure
stairs(x,ri,'.-')
%% Text file
fid = fopen('fromSpectrometer.txt');
xy = textscan(fid,'%f %f','HeaderLines',17);
wavelength = xy{1};
intensity = xy{2};
figure
plot(wavelength,intensity)
%% Process some
intensity = intensity-mean(intensity(wavelength > 800));
f = fit(wavelength,intensity,'gauss1');

figure
plot(f,wavelength,intensity)

mu = f.b1;
hold on
plot([mu,mu],get(gca,'ylim'),'--k')
axis([400,700,-10,Inf])