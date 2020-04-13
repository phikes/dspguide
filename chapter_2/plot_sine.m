x = linspace(0, 10, 1000);
y = 1 * sin(2 * pi * 1 * x);

avg_dev_y = avg_dev(y)
std_dev_y = std_dev(y)

rms = sqrt(1 / length(x) * sum(y.^2))

amp = rms * sqrt(2) * 2

hold on;
plot(x, y);
plot([x(1) x(end)], [avg_dev_y avg_dev_y], ";average deviation;");
plot([x(1) x(end)], [std_dev_y std_dev_y], ";standard deviation;");
plot([x(1) x(end)], [rms rms], ";root-mean-square;");
plot([x(1) x(end)], [amp amp], ";peak-to-peak amplitude;");
