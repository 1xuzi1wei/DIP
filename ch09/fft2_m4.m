clear all;
close all;
clc;
%% 图像添加高斯噪声后进行傅里叶变换
l = imread('pepper.png');
L = rgb2gray(l);
L = imnoise(L, 'gaussian', 0, 0.01);
J = fft2(L);
J = fftshift(J);
k = abs(J/256);
figure;
subplot(121);imshow(L);
subplot(122);imshow(uint8(k));