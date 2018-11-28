clear all;
close all;
clc;
%% 图像旋转后进行傅里叶变换
l = imread('pepper.png');
L = rgb2gray(l);
L = imrotate(L, 45, 'bilinear');
J = fft2(L);
J = fftshift(J);
k = abs(J/256);
figure;
subplot(121);imshow(L);
subplot(122);imshow(uint8(k));