% Q2.3 Manual Laplacian Filter (Sharpening)
clc; clear; close all;

[file, path] = uigetfile({'*.jpg;*.png;*.bmp'}, 'Select Image');
I = im2gray(imread(fullfile(path, file)));

h = fspecial('laplacian', 0.2);
edge = imfilter(I, h, 'replicate');
sharpened = imsubtract(I, edge);

figure;
subplot(1,3,1), imshow(I), title('Original');
subplot(1,3,2), imshow(edge, []), title('Laplacian Response');
subplot(1,3,3), imshow(sharpened), title('Sharpened Image');
