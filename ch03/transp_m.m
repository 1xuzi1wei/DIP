close all;
clear all;
clc;
l = imread('lena.bmp');
J = transp(l);

% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);

figure,imshow(J);