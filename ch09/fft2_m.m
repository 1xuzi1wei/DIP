clear all;
close all;
clc;
%% ͼ��Ķ�ά��ɢ����Ҷ�任
l = imread('cameraman.tif');
J = fft2(l);
k = abs(J/256);
figure;
subplot(121);imshow(l);
subplot(122);imshow(uint8(k));
