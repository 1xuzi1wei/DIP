close all;
clear all;
clc;
%% ������ͼ���Ϊ�Ҷ�ͼ��
[x, map] = imread('forest.tif');
l = ind2gray(x, map);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure, imshow(x, map)
figure, imshow(l);