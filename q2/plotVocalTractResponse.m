close all; clear all;


addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q2/

%% plot vocal tract response of /a/ in 'pani'

[vtr1, ww1] = getVocalTractResponse('a_pani.wav');
[LPCSpectrum1, narrowbandSpectrum1, w1] = getLPCSpectrum('a_pani.wav');

figure(100); clf;
vtrPlot1 = plot(ww1, vtr1);
hold on;
narrowbandPlot1 = plot(w1, narrowbandSpectrum1);
LPCPlot1 = plot(w1, LPCSpectrum1);
set(vtrPlot1, 'Color', 'green');
set(LPCPlot1,'Color','red');
set(narrowbandPlot1, 'Color', 'blue');
hold off;
axis tight;
title({'Vocal Tract Response (green) of /a/ in ''pani'' superimposed on'; ...
    'LPC spectrum (red) and magnitude spectrum (blue)'});
xlabel('Frequency (Hz)');
ylabel('Magnitude (logarithmic)');


%% plot vocal tract response of /n/ in 'pani'

[vtr2, ww2] = getVocalTractResponse('n_pani.wav');
[LPCSpectrum2, narrowbandSpectrum2, w2] = getLPCSpectrum('n_pani.wav');

figure(200); clf;
vtrPlot2 = plot(ww2, vtr2);
hold on;
narrowbandPlot2 = plot(w2, narrowbandSpectrum2);
LPCPlot2 = plot(w2, LPCSpectrum2);
set(vtrPlot2, 'Color', 'green');
set(LPCPlot2,'Color','red');
set(narrowbandPlot2, 'Color', 'blue');
hold off;
axis tight;
title({'Vocal Tract Response (green) of /n/ in ''pani'' superimposed on'; ...
    'LPC spectrum (red) and magnitude spectrum (blue)'});
xlabel('Frequency (Hz)');
ylabel('Magnitude (logarithmic)');


%% plot vocal tract response of /I/ in 'pani'

[vtr3, ww3] = getVocalTractResponse('i_pani.wav');
[LPCSpectrum3, narrowbandSpectrum3, w3] = getLPCSpectrum('i_pani.wav');

figure(300); clf;
vtrPlot3 = plot(ww3, vtr3);
hold on;
narrowbandPlot3 = plot(w3, narrowbandSpectrum3);
LPCPlot3 = plot(w3, LPCSpectrum3);
set(vtrPlot3, 'Color', 'green');
set(LPCPlot3,'Color','red');
set(narrowbandPlot3, 'Color', 'blue');
hold off;
title({'Vocal Tract Response (green) of /I/ in ''pani'' superimposed on'; ...
    'LPC spectrum (red) and magnitude spectrum (blue)'});
xlabel('Frequency (Hz)');
ylabel('Magnitude (logarithmic)');


%% plot vocal tract response of /s/ in 'uska'

[vtr4, ww4] = getVocalTractResponse('s_uska.wav');
[LPCSpectrum4, narrowbandSpectrum4, w4] = getLPCSpectrum('s_uska.wav');

figure(400); clf;
vtrPlot4 = plot(ww4, vtr4);
hold on;
narrowbandPlot4 = plot(w4, narrowbandSpectrum4);
LPCPlot4 = plot(w4, LPCSpectrum4);
set(vtrPlot4, 'Color', 'green');
set(LPCPlot4,'Color','red');
set(narrowbandPlot4, 'Color', 'blue');
hold off;
title({'Vocal Tract Response (green) of /s/ in ''uska'' superimposed on'; ...
    'LPC spectrum (red) and magnitude spectrum (blue)'});
xlabel('Frequency (Hz)');
ylabel('Magnitude (logarithmic)');


rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q2/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/