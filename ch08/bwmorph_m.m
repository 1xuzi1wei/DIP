clear all;
close all;
clc;
%% �Զ�ֵͼ�����ϸ��
bw = imread('text.png');
bw2 = bwmorph(bw, 'thin', Inf);
figure;
subplot(121); imshow(bw);
subplot(122); imshow(bw2);