datafile = importdata('logged.txt');

%Find most common value
[M,F] = mode(datafile(:));
tolerance = 4;
reference = M;
dropcount = length(datafile(datafile<(reference-tolerance)));

plot(datafile);
hold on
plot([2700,2800])

fileLength = length(datafile);

title('S85 - firmware 1.0.5');
legend('S/N - Ref distance');



xlabel('Samples (n)');
ylabel('Distance (mm)');

%ylim([625,632]);
