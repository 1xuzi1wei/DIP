clear all;
close all;
clc;
%% ����imabsdiff()ʵ��ͼ���������ݾ���ľ��Բ�ֵ
l = imread('cameraman.tif');
J = filter2(fspecial('prewitt'), l);
% �޸�ͼ��ͼ��λ�õ�Ĭ������
set(0, 'defaultFigurePosition', [100, 100, 1000, 500]);
% �޸�ͼ�α�����ɫ������
set(0, 'defaultFigureColor', [1 1 1]);
k = imabsdiff(double(l), J);
figure;
subplot(131), imshow(l);
subplot(132), imshow(J, []);
subplot(133), imshow(k, []);
x = [255 10 75; 44 225 100];
y = [50 50 50; 50 50 50];
x1 = uint8([255 10 75; 44 225 100]);
y1 = uint8([50 50 50; 50 50 50]);
z = imabsdiff(x, y)
z1 = abs(x - y)
z2 = abs(x1 - y1)
disp('z��z1�ȽϽ����'),z_z1 = (z == z1)
disp('z��z2�ȽϽ����'),z_z2 = (z == z2)
