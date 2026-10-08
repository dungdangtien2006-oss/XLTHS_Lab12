subplot(3,1,1);
t_arr = 0:0.0002:0.1;
xa_arr = 3 * sin(100 * %pi * t_arr);
plot(t_arr, xa_arr, "b");

subplot(3,1,2);
n_arr = 1:1:30;
x_discrete = 3 * sin(%pi * n_arr / 3);
plot2d3(n_arr, x_discrete, style = 2);

subplot(3,1,3);
d_step = 0.1;
x_quantized = floor(x_discrete / d_step) * d_step;
plot2d3(n_arr, x_quantized, style = 3);
