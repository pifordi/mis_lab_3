clc;clear all; close all;
a = imread('MTFin.png');
b = imread('MTFout.png');

imshow(a)
imline(gca,[276 276], [247 380])
imline(gca,[81 81], [247 380])
imline(gca,[15 160], [126 126])
imline(gca,[277 277], [57 210])
imline(gca,[390 427], [119 119])

%%4-vertical
figure
subplot(1, 2, 1)
plot(a(247:380,276))
title('4 vertical MTFin');
subplot(1, 2, 2)
plot(b(274:380,276))
title('4 vertical MTFout');

%%input
I_in_max_4D = max(a(247:380,276))
I_in_min_4D = min(a(247:380,276))
Min_4D = (I_in_max_4D - I_in_min_4D)/(I_in_max_4D + I_in_min_4D)

%output
I_out_max_4D = max(b(247:380,276))
I_out_min_4D = min(b(247:380,276))
Mout_4D = (I_out_max_4D - I_out_min_4D)/(I_out_max_4D + I_out_min_4D)

%MTF
MTF4 = Mout_4D/Min_4D

%%64-vertical
figure
subplot(1, 2, 1)
plot(a(119:390,427))
title('64 vertical MTFin');
subplot(1, 2, 2)
plot(b(119:390,427))
title('64 vertical MTFout');
 
%%input
I_in_max_64Y = max(a(119:390,427))
I_in_min_64Y = min(a(119:390,427))
Min_64Y = (I_in_max_64Y - I_in_min_64Y)/(I_in_max_64Y + I_in_min_64Y)
 
%output
I_out_max_64Y = max(b(119:390,427))
I_out_min_64Y = min(b(119:390,427))
Mout_64Y = (I_out_max_64Y - I_out_min_64Y)/(I_out_max_64Y + I_out_min_64Y)
 
%MTF
MTF64 = Mout_64Y/Min_64Y
