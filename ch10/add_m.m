clear all;
close all;
clc;
%% ʹ�üӷ�����������ͼ�������һ��
l = imread('rice.png');
J = imread('cameraman.tif');
k = imadd(l, J);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(131), imshow(l);
subplot(132), imshow(J);
subplot(133), imshow(k);