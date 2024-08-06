A = imread ("D:\Sandushi\D\MAT LAB\Image Processing\Image 1.jpeg");

A2 = double(A);

I = 255*(A2/255).^1.0;


imshow(A);
title("Raw")
pause(5)
imshow(I)
title("dd")