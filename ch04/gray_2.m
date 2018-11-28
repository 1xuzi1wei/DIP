close all;
clear all;
clc;
%% 调整灰度图像的灰度范围
l = imread('pout.tif');
[M, N] = size(l);
l = double(l);
J = (l - 80) * 255 / 70;
for i = 1 : M
    for j = 1 : N
        if J(i, j) < 0;
            J(i, j) = 0;
        end
         if J(i, j) > 255;
            J(i, j) = 255;
         end
    end
end
figure;
subplot(121),imshow(uint8(l));
subplot(122),imshow(uint8(J));