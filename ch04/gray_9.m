close all;
clear all;
clc;
%% ͨ������imhist()�������ʾ�Ҷ�ͼ���ֱ��ͼ
l = imread('pout.tif');
figure;
subplot(121),imshow(l);
subplot(122),imhist(l);