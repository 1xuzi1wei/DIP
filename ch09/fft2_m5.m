clear all;
close all;
clc;
%% �Ҷ�ͼ��ĸ���Ҷ�任�ͷ��任
l = imread('pepper.png');
L = rgb2gray(l);
J = fft2(L);
N = fftshift(J);
M = ifft2(J);
k = uint8(abs(N)/198);
figure;
subplot(121);imshow(k);
subplot(122);imshow(uint8(M));