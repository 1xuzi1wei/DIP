clear all;
close all;
clc;
%% ͼ��Ķ�ά��ɢ���ҷ��任
l = imread('cameraman.tif');
l = im2double(l);
J = dct2(l);
J(abs(J) < 0.1) = 0;
k = idct2(J);
figure;
subplot(131);imshow(l);
subplot(132);imshow(J);
subplot(133);imshow(k);