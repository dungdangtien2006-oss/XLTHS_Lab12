clc; clear; close;
n = -1:1;
x = [1, 3, -2];
x_fold = [-2, 3, 1];

xe = 0.5 * (x + x_fold);
xo = 0.5 * (x - x_fold);

subplot(3,1,1);
plot2d3(n, x);
title('Original Signal x(n)'); xlabel('n'); ylabel('Amplitude');

subplot(3,1,2);
plot2d3(n, xe);
title('Even Component x_e(n)'); xlabel('n'); ylabel('Amplitude');

subplot(3,1,3);
plot2d3(n, xo);
title('Odd Component x_o(n)'); xlabel('n'); ylabel('Amplitude');
