clear all;
close all;
clc;
%% ��ȡ�Ҷ�ͼ���ֱ��ͼ
l = imread('rice.png');
figure;
subplot(121); imshow(l);
subplot(122); imhist(l, 200);