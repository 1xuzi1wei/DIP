clear all;
close all;
clc;
%% ͼ���������и���Ҷ�任
l = imread('pepper.png');
L = rgb2gray(l);
L = L * exp(1);
L(find(L>255)) = 255;
J = fft2(L);
J = fftshift(J);
k = abs(J/256);
figure;
subplot(121);imshow(L);
subplot(122);imshow(uint8(k));
