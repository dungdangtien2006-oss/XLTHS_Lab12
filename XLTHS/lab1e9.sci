nx = -2:1;
vx = [1, -2, 3, 6];

ny1 = -nx($:-1:1);
vy1 = vx($:-1:1);

ny2 = nx - 3;
vy2 = vx;

ny3 = -nx($:-1:1) - 2;
vy3 = 2 * vx($:-1:1);

// Cua so 1: y1(n) = x(-n)
scf(1);
subplot(2, 1, 1);
plot2d3(nx, vx, style=2);
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");

subplot(2, 1, 2);
plot2d3(ny1, vy1, style=3);
title("Folded Signal y1(n) = x(-n)");
xlabel("n");
ylabel("Amplitude");

// Cua so 2: y2(n) = x(n+3)
scf(2);
subplot(2, 1, 1);
plot2d3(nx, vx, style=2);
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");

subplot(2, 1, 2);
plot2d3(ny2, vy2, style=4);
title("Advanced Signal y2(n) = x(n+3)");
xlabel("n");
ylabel("Amplitude");

// Cua so 3: y3(n) = 2x(-n-2)
scf(3);
subplot(2, 1, 1);
plot2d3(nx, vx, style=2);
title("Original Signal x(n)");
xlabel("n");
ylabel("Amplitude");

subplot(2, 1, 2);
plot2d3(ny3, vy3, style=5);
title("Transformed Signal y3(n) = 2x(-n-2)");
xlabel("n");
ylabel("Amplitude");
