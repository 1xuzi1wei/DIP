close all;
clear all;
clc;
%% ͨ������brighten()����ͼ�������
l = imread('cameraman.tif');
figure;
imshow(l);
brighten(0.8);
figure;
imshow(l);
brighten(-0.8);