A = imread ("D:\Sandushi\D\MAT LAB\Image Processing\Image 2.jpeg");

inputMin = min(A(:));
inputMax = max(A(:));


A2 = double(A);

outputMax = 255;

c = outputMax/log10(1+double(inputMax));

j = uint8(double(c) * log10(1+A2));

%A2(1:5,1:5,:)
%j(1:5,1:5,:)

imshow(A);
title("Raw")
pause(5)
imshow(j)
title("processed")