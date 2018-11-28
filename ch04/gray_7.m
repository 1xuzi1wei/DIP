close all;
clear all;
clc;
%% 通过函数stretchlim()和函数imadjust()对彩色图像进行增强
l = imread('pout.tif');
M = stretchlim(l);
J = imadjust(l, M,[]);
figure;
subplot(121),imshow(uint8(l));
subplot(122),imshow(uint8(J));