% Read the image
I = imread("C:\Users\Sandushi\Documents\4th year\4th Year 1st Sem\Image Processing\photographer.png");

% Extract the dimensions of the image
[rows, cols, ~] = size(I);

% Initialize matrices to store MSB and LSB
MSB = zeros(rows, cols);
LSB = zeros(rows, cols);
bit2 = zeros(rows, cols);
bit3 = zeros(rows, cols);
bit4 = zeros(rows, cols);
bit5 = zeros(rows, cols);
bit6 = zeros(rows, cols);
bit7 = zeros(rows, cols);

% Extract bits from each pixel
for i = 1:rows
    for  j=1:cols
        MSB(i,j) = bitand(I(i,j), bin2dec('10000000'));
        LSB(i,j) = bitand(I(i,j), bin2dec('00000001'));
        bit2(i,j) = bitand(I(i,j), bin2dec('01000000'));
        bit3(i,j) = bitand(I(i,j), bin2dec('00100000'));
        bit4(i,j) = bitand(I(i,j), bin2dec('00010000'));
        bit5(i,j) = bitand(I(i,j), bin2dec('00001000'));
        bit6(i,j) = bitand(I(i,j), bin2dec('00000100'));
        bit7(i,j) = bitand(I(i,j), bin2dec('00000010'));
    end
end

% Display the images
figure, imshow(uint8(MSB));
title('Most Significant Bit');

figure, imshow(uint8(LSB));
title('Least Significant Bit');

figure, imshow(uint8(bit2));
title('Second Bit');

figure, imshow(uint8(bit3));
title('Third Bit');

figure, imshow(uint8(bit4));
title('Fourth Bit');

figure, imshow(uint8(bit5));
title('Fifth Bit');

figure, imshow(uint8(bit6));
title('Sixth Bit');

figure, imshow(uint8(bit7));
title('Seventh Bit');
