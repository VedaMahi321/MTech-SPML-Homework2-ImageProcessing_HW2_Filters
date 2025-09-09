% Q2.1 Manual Histogram Matching
clc; clear; close all;

[srcFile, srcPath] = uigetfile({'*.jpg;*.png;*.bmp'}, 'Select Source Image');
[refFile, refPath] = uigetfile({'*.jpg;*.png;*.bmp'}, 'Select Reference Image');

I1 = im2gray(imread(fullfile(srcPath, srcFile))); % Source
I2 = im2gray(imread(fullfile(refPath, refFile))); % Reference

srcHist = imhist(I1);
refHist = imhist(I2);

srcCdf = cumsum(srcHist) / numel(I1);
refCdf = cumsum(refHist) / numel(I2);

map = zeros(256,1);
for i = 1:256
    [~, idx] = min(abs(srcCdf(i) - refCdf));
    map(i) = idx-1;
end

matched = map(double(I1)+1);

figure;
subplot(2,3,1), imshow(I1), title('Source');
subplot(2,3,2), imshow(I2), title('Reference');
subplot(2,3,3), imshow(uint8(matched)), title('Matched (Manual)');
subplot(2,3,4), imhist(I1), title('Source Hist');
subplot(2,3,5), imhist(I2), title('Reference Hist');
subplot(2,3,6), imhist(uint8(matched)), title('Matched Hist');
