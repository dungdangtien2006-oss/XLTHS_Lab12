clc; clear; close;
n = -1:3;
x1_pad = [0, 0, 1, 3, -2]; 
x2_pad = [0, 1, 2, 3, 0];

y = x1_pad + x2_pad;

subplot(3,1,1); plot2d3(n, x1_pad); 
title('Signal x_1(n)'); xlabel('n'); ylabel('Amplitude');

subplot(3,1,2); plot2d3(n, x2_pad); 
title('Signal x_2(n)'); xlabel('n'); ylabel('Amplitude');

subplot(3,1,3); plot2d3(n, y); 
title('Addition y(n) = x_1(n) + x_2(n)'); xlabel('n'); ylabel('Amplitude');
