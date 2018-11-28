clear all;
close all;
clc;
%% 采用迭代式阈值进行分割
l = imread('cameraman.tif');
l = im2double(l);
T0 = 0.01;
T1 =(min(l(:)) + max(l(:))) / 2;
r1 = find(l > T1);
r2 = find(l <= T1);
T2 =(mean(l(r1)) + mean(l(r2))) / 2;
while abs(T2 - T1) < T0
T1 = T2;   
r1 = find(l > T1);
r2 = find(l <= T1);
T2 =(mean(l(r1)) + mean(l(r2))) / 2;
end
J = im2bw(l, T2);
figure;
subplot(121); imshow(l);
subplot(122); imshow(J);