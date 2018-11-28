clear all;
close all;
clc;
%% 图像的二维离散傅里叶变换和平移
l = imread('pepper.png');
L = rgb2gray(l);
J = fft2(L);
J = fftshift(J);
k = abs(J/256);
figure;
subplot(121);imshow(L);
subplot(122);imshow(uint8(k));
