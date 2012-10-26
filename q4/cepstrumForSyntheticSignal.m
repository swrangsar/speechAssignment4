close all; clear all;

addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q2/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q3/

%% plot real cepstrum of synthesized /a/

rc1 = getRealCepstrum('a_pani_synth.wav');
figure(100); clf;
plot(rc1); axis tight;
title('Real cepstrum of synthesized /a/');
ylabel('c(n)');

%% plot vocal tract response of synthesized /a/

[vtr1, ww1] = getVocalTractResponse('a_pani_synth.wav');
[LPCSpectrum1, narrowbandSpectrum1, w1] = getLPCSpectrum('a_pani_synth.wav');

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
title({'Vocal Tract Response (green) of synthesized /a/ in superimposed on'; ...
    'LPC spectrum (red) and magnitude spectrum (blue)'});
xlabel('Frequency (Hz)');
ylabel('Magnitude (logarithmic)');

%% get the pitch of synthesized /a/

[pitchOfSynthesizedA, htl1] = getPitchUsingCepstrum('a_pani_synth.wav');
pitchOfSynthesizedA
figure(300); clf;
plot(htl1); axis tight;
title('High-time liftered cepstrum of synthesized /a/');



rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q3/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q2/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/