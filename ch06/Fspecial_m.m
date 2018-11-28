clear all;
close all;
clc;
%% 采用函数FSPECIAL产生预定义模板
format rat;
hsobel = fspecial('sobel')
hprewitt = fspecial('prewitt')
hlaplacian = fspecial('laplacian')
hlog = fspecial('log', 3)
format short;