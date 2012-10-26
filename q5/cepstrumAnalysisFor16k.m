close all; clear all;

addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q2/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q3/

%% plot real cepstrum of /s/ in 'uska' at 16khz

rc1 = getRealCepstrum('s_uska_16k.wav');
figure(100); clf;
plot(rc1); axis tight;
title('Real cepstrum of /s/ in ''uska'' at 16khz');
ylabel('c(n)');

%% plot vocal tract response of /s/ in 'uska' at 16khz

[vtr1, ww1] = getVocalTractResponse('s_uska_16k.wav');
[LPCSpectrum1, narrowbandSpectrum1, w1] = getLPCSpectrum('s_uska_16k.wav', 18);

figure(200); clf;
vtrPlot1 = plot(ww1, vtr1);
hold on;
narrowbandPlot1 = plot(w1, narrowbandSpectrum1);
LPCPlot1 = plot(w1, LPCSpectrum1);
set(vtrPlot1, 'Color', 'green');
set(LPCPlot1,'Color','red');
set(narrowbandPlot1, 'Color', 'blue');
hold off;
axis tight;
title({'Vocal Tract Response (green) of /s/ in ''uska'' at 16khz';...
    'in superimposed on LPC spectrum (red) and magnitude spectrum (blue)'});
xlabel('Frequency (Hz)');
ylabel('Magnitude (logarithmic)');

%% get the pitch of /s/ in 'uska' at 16khz

pitchOfSat16k = getPitchUsingCepstrum('s_uska_16k.wav')



rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q3/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q2/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/