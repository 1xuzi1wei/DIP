close all;
clear all;
clc;
%% ͨ������stretchlim()�ͺ���imadjust()�Բ�ɫͼ�������ǿ
l = imread('pout.tif');
M = stretchlim(l);
J = imadjust(l, M,[]);
figure;
subplot(121),imshow(uint8(l));
subplot(122),imshow(uint8(J));