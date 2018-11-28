close all;
clear all;
clc;
%% 通过函数imadjust()调整图像的亮度
% If gamma is less than 1, 
% imadjust weights the mapping toward higher (brighter) output values.
% If gamma is greater than 1, imadjust weights the mapping toward lower (darker) output values. 
% If you omit the argument, gamma defaults to 1 (linear mapping).
l = imread('pout.tif');
J = imadjust(l,[0.1, 0.5],[0, 1], 0.4);
K = imadjust(l,[0.1, 0.5],[0, 1], 4);
figure;
subplot(121),imshow(uint8(J));
subplot(122),imshow(uint8(K));