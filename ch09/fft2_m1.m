clear all;
close all;
clc;
%% ͼ��Ķ�ά��ɢ����Ҷ�任��ƽ��
l = imread('pepper.png');
L = rgb2gray(l);
J = fft2(L);
J = fftshift(J);
k = abs(J/256);
figure;
subplot(121);imshow(L);
subplot(122);imshow(uint8(k));
