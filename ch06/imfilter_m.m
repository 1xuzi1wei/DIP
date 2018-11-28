close all;
clear all;
clc;
%% ¼ì²âÍ¼ÏñÖÐµÄÏß¶Î
l = imread('gantrycrane.png');
l = rgb2gray(l);
h1 = [-1, -1, -1; 2, 2, 2; -1, -1, -1];
h2 = [-1, -1, 2; -1, 2, -1; 2, -1, -1];
h3 = [-1, 2, -1; -1, 2, -1; -1, 2, -1];
h4 = [2, -1, -1; -1, 2, -1; -1, -1, 2];
J1 = imfilter(l, h1);
J2 = imfilter(l, h2);
J3 = imfilter(l, h3);
J4 = imfilter(l, h4);
J = J1 + J2 + J3 + J4;
figure;
subplot(121);imshow(l);
subplot(122);imshow(J);