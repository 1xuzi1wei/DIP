clear all;
close all;
clc;
%% ���ú���imlincomb()ʵ��ͼ��������������
l = imread('cameraman.tif');
J = imread('rice.png');
k1 = imlincomb(1.0, l, 1.0, J);
k2 = imlincomb(1.0, l, -1.0, J, 'double');
k3 = imlincomb(2, l);
k4 = imlincomb(0.5, l);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(k1), axis on;
subplot(122), imshow(k2), axis on;
figure;
subplot(121), imshow(k3), axis on;
subplot(122), imshow(k4), axis on;