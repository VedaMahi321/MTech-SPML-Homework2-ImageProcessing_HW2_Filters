% Q2.1 Histogram Matching using Built-in Function
clc; clear; close all;

[srcFile, srcPath] = uigetfile({'*.jpg;*.png;*.bmp'}, 'Select Source Image');
[refFile, refPath] = uigetfile({'*.jpg;*.png;*.bmp'}, 'Select Reference Image');

I1 = im2gray(imread(fullfile(srcPath, srcFile)));
I2 = im2gray(imread(fullfile(refPath, refFile)));

matched = imhistmatch(I1, I2);

figure;
subplot(2,3,1), imshow(I1), title('Source');
subplot(2,3,2), imshow(I2), title('Reference');
subplot(2,3,3), imshow(matched), title('Matched (Function)');
subplot(2,3,4), imhist(I1), title('Source Hist');
subplot(2,3,5), imhist(I2), title('Reference Hist');
subplot(2,3,6), imhist(matched), title('Matched Hist');
