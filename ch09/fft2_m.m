clear all;
close all;
clc;
%% 图像的二维离散傅里叶变换
l = imread('cameraman.tif');
J = fft2(l);
k = abs(J/256);
figure;
subplot(121);imshow(l);
subplot(122);imshow(uint8(k));
