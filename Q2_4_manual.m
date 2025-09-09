% Q2.4 Manual Bilateral Filter (optional)
clc; clear; close all;

[file, path] = uigetfile({'*.jpg;*.png;*.bmp'}, 'Select Image');
I = im2gray(imread(fullfile(path, file)));

noisy = imnoise(I, 'gaussian', 0, 0.01);

sigma_s = 3; sigma_r = 0.1;
I_bilat = imbilatfilt(noisy, sigma_r*255, sigma_s);

figure;
subplot(1,3,1), imshow(I), title('Original');
subplot(1,3,2), imshow(noisy), title('Noisy');
subplot(1,3,3), imshow(I_bilat), title('Bilateral Filtered (Manual approx)');