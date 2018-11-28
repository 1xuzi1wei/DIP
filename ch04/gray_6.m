close all;
clear all;
clc;
%% 通过函数brighten()调整图像的亮度
l = imread('cameraman.tif');
figure;
imshow(l);
brighten(0.8);
figure;
imshow(l);
brighten(-0.8);