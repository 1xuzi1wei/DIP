close all;
clear all;
clc;
%% ���Ҷ�ͼ��תΪ��ֵͼ��
l = imread('rice.png');
bw1 = im2bw(l, 0.4);
bw2 = im2bw(l, 0.6);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(131), imshow(l);
subplot(132), imshow(bw1);
subplot(133), imshow(bw2);