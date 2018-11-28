close all;
clear all;
clc;
%% 通过函数imcomplement()进行灰度图像的反转变换
l = imread('glass.png');
J = imcomplement(l);
figure;
subplot(121),imshow(uint8(l));
subplot(122),imshow(uint8(J));