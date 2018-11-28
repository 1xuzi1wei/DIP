clear all;
close all;
clc;
%% 对结构元素进行分解
se = strel('diamond', 3);
seq = getsequence(se);
seq(1)
seq(2)