clear all;
close all;
clc;
%% ��ͼ����ÿ�����ؼ�һ�������ı�ͼ������
l = imread('pepper.png');
J = imadd(l, 30);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(l);
subplot(122), imshow(J);