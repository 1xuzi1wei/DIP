close all;
clear all;
clc;
%% ͨ������imadjust()�����Ҷȷ�Χ
l = imread('pout.tif');
J = imadjust(l,[0.2, 0.5],[0, 1]);
figure;
subplot(121),imshow(uint8(l));
subplot(122),imshow(uint8(J));