clc;clear all; close all;
I = imread('edge_ESF.png');
imshow(I)
[w, h] = size(I)
esf = zeros(1, h);

for i = 1:h
    esf(i) = sum(I(:,i))/w;
end

figure
plot(esf,'LineWidth', 2)
title('Edge Spread Function')
h1 = impoint(gca, 77, 0);
setColor(h1, 'r');
h1 = impoint(gca, 104, 255);
setColor(h1, 'r');

esf_mir = esf(103:-1:76);%obtaining mirroring part of esf
LSF = esf;
LSF(104:131) = esf_mir; %assign esf_mir in between104 and 131

for i = 132:h % all other components is assigned to zero
    LSF(i) = 0;
end

figure
plot(LSF,'LineWidth', 2);
title('Line Spread Function');

fft_LSF = fft(LSF);
figure
stem(abs(fft_LSF))
