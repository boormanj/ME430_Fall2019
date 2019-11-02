clear, clc, close all

m = 1;
d = 2;
k = 5;

xf = tf([0, 0, 1], [m, d, k]);
[y, t] = step(xf);
info = stepinfo(xf);

figure;
hold on
p1 = stepplot(xf);

fprintf('Rise Time:         %.3f sec\n', info.RiseTime)
fprintf('2%% Settling Time:  %.3f sec\n', info.SettlingTime)
fprintf('Peak Time:         %.3f sec\n', info.PeakTime)
fprintf('Percent Overshoot: %.2f%%\n', info.Overshoot)
