nx1 = 0:3;
vx1 = [0, 1, 3, -2];

nx2 = -1:2;
vx2 = [0, 1, 2, 3];

n_min = min(min(nx1), min(nx2));
n_max = max(max(nx1), max(nx2));
n_common = n_min:n_max;

x1_pad = zeros(1, length(n_common));
x1_pad(nx1 - n_min + 1) = vx1;

x2_pad = zeros(1, length(n_common));
x2_pad(nx2 - n_min + 1) = vx2;

y_out = x1_pad .* x2_pad;

subplot(3, 1, 1);
plot2d3(n_common, x1_pad, style=2);
title("Signal x1(n)");
xlabel("n");
ylabel("Amplitude");

subplot(3, 1, 2);
plot2d3(n_common, x2_pad, style=3);
title("Signal x2(n)");
xlabel("n");
ylabel("Amplitude");

subplot(3, 1, 3);
plot2d3(n_common, y_out, style=4);
title("Product Signal y(n) = x1(n) .* x2(n)");
xlabel("n");
ylabel("Amplitude");
