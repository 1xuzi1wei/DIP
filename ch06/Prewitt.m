close all;
clear all;
clc;
%% 
% �����˼�Ȩƽ����������΢�����㣬ƽ�����ֵ�Ȩֵ��Щ���죬
% ��������һ�����������������ǲ����ų���ٱ�Ե��
% ��ȻSobel ��Prewitt���ӱ�Ե��λЧ���������Ǽ��ı�Ե���׳��ֶ����ؿ�ȡ�

l = imread('cameraman.tif');
l = im2double(l);
[J, thresh] = edge(l, 'Prewitt', [], 'both');
figure;
subplot(121); imshow(l);
subplot(122); imshow(J);