I = imread('slit_LSF.png');
imshow(I)
[w, h] = size(I);
esf = zeros(1, h);

for i = 1:h
    lsf(i) = sum(I(:,i))/w
end

figure
plot(lsf,'Linewidth', 2)
title('Line Spread Function')

I_row = I(5, :)
fft_LSF = fft(I_row);
I_row_fft_abs = abs(fft_LSF);
I_row_fft_abs_shifted = fftshift(I_row_fft_abs);
figure
stem(I_row_fft_abs_shifted)
figure
stem(I_row_fft_abs)
