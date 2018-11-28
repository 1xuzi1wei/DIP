close all;
clear all;
clc;
%% 通过函数imadjust()调整灰度范围
l = imread('pout.tif');
J = imadjust(l,[0.2, 0.5],[0, 1]);
figure;
subplot(121),imshow(uint8(l));
subplot(122),imshow(uint8(J));