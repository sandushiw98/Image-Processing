% Load the image (assuming it's grayscale)
img = imread("C:\Users\Sandushi\Documents\4th year\4th Year 1st Sem\Image Processing\introduction-to-histogram-equalization_mahdi_aac_image1.webp");
img = rgb2gray(img); % Convert to grayscale if it's not

% Perform histogram equalization
img_eq = histeq(img);

% Display the original and equalized image
figure;
subplot(1,2,1); imshow(img); title('Original Image');
subplot(1,2,2); imshow(img_eq); title('Histogram Equalized Image');