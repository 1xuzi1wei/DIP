close all;
clear all;
clc;
%% ͨ������imadjust()�Բ�ɫͼ�������ǿ
l = imread('football.jpg');
J = imadjust(l, [0.2 0.3 0;0.6 0.7 1],[]);
figure;
subplot(121),imshow(uint8(l));
subplot(122),imshow(uint8(J));