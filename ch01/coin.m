close all;
clear all;
clc;
%% ������ֵ�����Ҷ�ͼ��תΪ����ͼ��
l = imread('coins.png');
x = grayslice(l, 32);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure, imshow(l);
% jet(M)���൱��colormap,��һ��M x 3������
figure, imshow(x, jet(32))