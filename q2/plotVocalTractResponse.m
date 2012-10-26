close all; clear all;


addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q2/

%% plot vocal tract response of /a/ in 'pani'

vtr1 = getVocalTractResponse('a_pani.wav');
w = 2 * pi * ((0:length(vtr1)-1)./length(vtr1));
figure(100); clf;
plot(w, vtr1); axis tight;
title('Vocal Tract Response of /a/ in ''pani''');
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');

%% plot vocal tract response of /n/ in 'pani'

vtr2 = getVocalTractResponse('n_pani.wav');
w = 2 * pi * ((0:length(vtr2)-1)./length(vtr2));
figure(200); clf;
plot(w, vtr2); axis tight;
title('Vocal Tract Response of /n/ in ''pani''');
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');

%% plot vocal tract response of /I/ in 'pani'

vtr3 = getVocalTractResponse('i_pani.wav');
w = 2 * pi * ((0:length(vtr3)-1)./length(vtr3));
figure(300); clf;
plot(w, vtr3); axis tight;
title('Vocal Tract Response of /I/ in ''pani''');
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');

%% plot vocal tract response of /s/ in 'uska'

vtr4 = getVocalTractResponse('s_uska.wav');
w = 2 * pi * ((0:length(vtr4)-1)./length(vtr4));
figure(400); clf;
plot(w, vtr4); axis tight;
title('Vocal Tract Response of /s/ in ''uska''');
xlabel('Frequency (rad/s)');
ylabel('Magnitude (dB)');


rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q2/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/