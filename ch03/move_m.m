close all;
clear all;
clc;
l = imread('lena.bmp');
% ����ƽ������
a = 50;b = 50;
J1 = move(l, a, b);

a = -50;b = 50;
J2 = move(l, a, b);

a = 50;b = -50;
J3 = move(l, a, b);

a = -50;b = -50;
J4 = move(l, a, b);

% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);

figure;
subplot(121), imshow(J1), axis on;
subplot(122), imshow(J2), axis on;
figure;
subplot(121), imshow(J3), axis on;
subplot(122), imshow(J4), axis on;

