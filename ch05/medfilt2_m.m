l = imread('coins.png');
l = im2double(l);
J = imnoise(l, 'salt & pepper', 0.03);
k = medfilt2(J);
figure;
subplot(131);imshow(l);
subplot(132);imshow(J);
subplot(133);imshow(k);
