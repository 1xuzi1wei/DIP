clear all;
close all;
clc;
%% ͨ������imdivide()���ͼ���������
l = imread('office_1.jpg');
J = imread('office_2.jpg');
lp = imdivide(J, l);
k = imdivide(J, 0.5);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(121), imshow(l), axis on;
subplot(122), imshow(J), axis on;
figure;
subplot(121), imshow(lp), axis on;
subplot(122), imshow(k), axis on;