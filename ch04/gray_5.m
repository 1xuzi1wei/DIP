close all;
clear all;
clc;
%% 通过函数imadjust()对彩色图像进行增强
l = imread('football.jpg');
J = imadjust(l, [0.2 0.3 0;0.6 0.7 1],[]);
figure;
subplot(121),imshow(uint8(l));
subplot(122),imshow(uint8(J));