clear all;
close all;
clc;
%% ����ͼ��˷�����ʵ��ͼ�����ȵĿ���
a = imread('house.jpg');
b = immultiply(a, 1.5);
c = immultiply(a, 0.5);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(b), axis on;
subplot(122), imshow(c), axis on;