clear all;
close all;
clc;
%% 灰度图像的幅值谱和相位谱
l = imread('pepper.png');
L = rgb2gray(l);
J = fft2(L);
L = fftshift(J);
fftr = real(L);
ffti = imag(L);
A = sqrt(fftr.^2 + ffti.^2);
A = (A - min(min(A))) / (max(max(A)) - min(min(A))) * 255;
B = angle(J);
figure;
subplot(121);imshow(A);
subplot(122);imshow(real(B));