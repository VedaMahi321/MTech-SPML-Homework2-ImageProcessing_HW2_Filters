% Q2.3 Function-based Laplacian (Sharpening)
clc; clear; close all;

[file, path] = uigetfile({'*.jpg;*.png;*.bmp'}, 'Select Image');
I = im2gray(imread(fullfile(path, file)));

sharpened = imsharpen(I, 'Radius', 2, 'Amount', 1);

figure;
subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(sharpened), title('Sharpened (Function)');
