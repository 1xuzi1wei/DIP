clear all;
close all;
clc;
%% ͨ������imcomplement()ʵ��ͼ���������ݾ����������
J = imread('rice.png');
J1 = im2bw(J);
J2 = imcomplement(J);
J3 = imcomplement(J1);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
figure;
subplot(131), imshow(J1);
subplot(132), imshow(J2);
subplot(133), imshow(J3);