% Read the image
I = imread('C:\Users\Sandushi\Documents\4th year\4th Year 1st Sem\Image Processing\low contrast.png.gif');

% Convert image to double for calculations
A = double(I);

% Calculate input minimum and maximum
inputMin = min(A(:));
inputMax = max(A(:));

% Contrast stretching formula
B = (255/(inputMax - inputMin))*(A - inputMin);

% Calculate output minimum and maximum
outputMin = min(B(:));
outputMax = max(B(:));

% Display original and contrast stretched images
subplot(1,2,1);
imshow(uint8(A));
title('Original');

subplot(1,2,2);
imshow(uint8(B));
title('Contrast Stretched');



