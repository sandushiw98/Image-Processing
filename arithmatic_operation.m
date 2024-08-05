a = imread("D:\Sandushi\D\MAT LAB\Image Processing\Lenna_(test_image).png");
b = imread("D:\Sandushi\D\MAT LAB\Image Processing\photographer.png");
c=a+b;
%c=a-b;
subplot(3,1,1);
imshow(a);
subplot(3,1,2);
imshow(b);
subplot(3,1,3);
imshow(c);
subplot(3,1,1);
imshow(c);

%x = rgb2gray(a);
%y = rgb2gray(b);
%z=x-y;
% imshow(x);


