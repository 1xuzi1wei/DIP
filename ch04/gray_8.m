close all;
clear all;
clc;
%% ͨ������imcomplement()���лҶ�ͼ��ķ�ת�任
l = imread('glass.png');
J = imcomplement(l);
figure;
subplot(121),imshow(uint8(l));
subplot(122),imshow(uint8(J));