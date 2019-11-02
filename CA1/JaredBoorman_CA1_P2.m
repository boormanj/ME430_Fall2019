clear, clc, close all

m = 1;
d = 2;
k = 5;

xf = tf([0, 0, 1], [m, d, k]);
[y, t] = step(xf);
info = stepinfo(xf);

fig = figure;
ax = axes;

hold on
p1 = stepplot(xf);
p1Peak = plot([info.PeakTime, info.PeakTime], [0, info.Peak], 'r--');
p1Settling = plot([info.SettlingTime, info.SettlingTime], [0, 1.02], ...
    'Color', [0.5, 0.85, 0.25], 'LineStyle', '--');
p1Overshoot = plot([0, ax.XLim(2) / 2], [info.Peak, info.Peak], ...
    'Color', [0.9290, 0.6940, 0.1250], 'LineStyle', '--');

legend(["Response", "Peak Time", "2% Settling Time", "Overshoot"])

fprintf('Rise Time:         %.3f sec\n', info.RiseTime)
fprintf('2%% Settling Time:  %.3f sec\n', info.SettlingTime)
fprintf('Peak Time:         %.3f sec\n', info.PeakTime)
fprintf('Percent Overshoot: %.2f%%\n', info.Overshoot)
