% Q2.2 Manual Gaussian & Median Filtering
clc; clear; close all;

[file, path] = uigetfile({'*.jpg;*.png;*.bmp'}, 'Select Image');
I = im2gray(imread(fullfile(path, file)));

noisy = imnoise(I,'gaussian',0,0.01);

h = fspecial('gaussian', [5 5], 1);
I_gauss = imfilter(noisy,h,'replicate');

I_med = medfilt2(noisy,[3 3]);

figure;
subplot(2,2,1), imshow(I), title('Original');
subplot(2,2,2), imshow(noisy), title('Noisy');
subplot(2,2,3), imshow(I_gauss), title('Gaussian Filtered');
subplot(2,2,4), imshow(I_med), title('Median Filtered');
