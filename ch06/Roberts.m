close all;
clear all;
clc;
%% ����Roberts���ӽ���ͼ��ı�Ե���
% ��λ���Ƚϸߣ������׶�ʧһ���ֱ�Ե��
% ͬʱ��Ϊͼ��û�о���ƽ��������˲��߱�������������������

l = imread('rice.png');
l = im2double(l);
[J, thresh] = edge(l, 'roberts', 35/255);
figure;
subplot(121); imshow(l);
subplot(122); imshow(J);