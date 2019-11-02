clear, clc, close all

%% Part 1
sys1 = tf([0, 0, 16], [1, 3, 16]);
[y1, t1] = step(sys1);
info1 = stepinfo(sys1);

fig1 = figure;
ax1 = axes;

hold on
p1 = stepplot(sys1);
p1Peak = plot([info1.PeakTime, info1.PeakTime], [0, info1.Peak], 'r--');
p1Settling = plot([info1.SettlingTime, info1.SettlingTime], [0, 1.02], ...
    'Color', [0.5, 0.85, 0.25], 'LineStyle', '--');
p1Overshoot = plot([0, ax1.XLim(2) / 2], [info1.Peak, info1.Peak], ...
    'Color', [0.9290, 0.6940, 0.1250], 'LineStyle', '--');

legend(["Response", "Peak Time", "2% Settling Time", "Overshoot"])

fprintf('Problem 1-1\n\n')
fprintf('Rise Time:         %.3f sec\n', info1.RiseTime)
fprintf('2%% Settling Time:  %.3f sec\n', info1.SettlingTime)
fprintf('Peak Time:         %.3f sec\n', info1.PeakTime)
fprintf('Percent Overshoot: %.2f%%\n', info1.Overshoot)
fprintf('-----------------------------------------\n')

%% Part 2
sys2 = tf([0, 0, 0.04], [1, 0.02, 0.04]);
[y2, t2] = step(sys2);
info2 = stepinfo(sys2);

fig2 = figure;
ax2 = axes;

hold on
p2 = stepplot(sys2);
p2Peak = plot([info2.PeakTime, info2.PeakTime], [0, info2.Peak], 'r--');
p2Settling = plot([info2.SettlingTime, info2.SettlingTime], [0, 1.02], ...
    'Color', [0.5, 0.85, 0.25], 'LineStyle', '--');
p2Overshoot = plot([0, ax2.XLim(2) / 2], [info2.Peak, info2.Peak], ...
    'Color', [0.9290, 0.6940, 0.1250], 'LineStyle', '--');

legend(["Response", "Peak Time", "2% Settling Time", "Overshoot"])

fprintf('Problem 1-2\n\n')
fprintf('Rise Time:         %.3f sec\n', info2.RiseTime)
fprintf('2%% Settling Time:  %.3f sec\n', info2.SettlingTime)
fprintf('Peak Time:         %.3f sec\n', info2.PeakTime)
fprintf('Percent Overshoot: %.2f%%\n', info2.Overshoot)
fprintf('-----------------------------------------\n')
%% Part 3
sys3 = tf([0, 0, 1, 2.1], [1, 3, 7, 10]);
[y3, t3] = step(sys3);
info3 = stepinfo(sys3);

fig3 = figure;
ax3 = axes;

hold on
p3 = stepplot(sys3);
p3Peak = plot([info3.PeakTime, info3.PeakTime], [0, info3.Peak], 'r--');
p3Settling = plot([info3.SettlingTime, info3.SettlingTime], [0, 0.21], ...
    'Color', [0.5, 0.85, 0.25], 'LineStyle', '--');
p3Overshoot = plot([0, ax3.XLim(2) / 2], [info3.Peak, info3.Peak], ...
    'Color', [0.9290, 0.6940, 0.1250], 'LineStyle', '--');

legend(["Response", "Peak Time", "2% Settling Time", "Overshoot"])

fprintf('Problem 1-3\n\n')
fprintf('Rise Time:         %.3f sec\n', info3.RiseTime)
fprintf('2%% Settling Time:  %.3f sec\n', info3.SettlingTime)
fprintf('Peak Time:         %.3f sec\n', info3.PeakTime)
fprintf('Percent Overshoot: %.2f%%\n', info3.Overshoot)
fprintf('-----------------------------------------\n')
