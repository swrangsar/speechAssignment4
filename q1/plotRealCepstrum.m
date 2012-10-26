close all; clear all;

addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/

%% plot real cepstrum of /a/ in 'pani'

rc1 = getRealCepstrum('a_pani.wav');
figure(100); clf;
plot(rc1); axis tight;
title('Real cepstrum of /a/ in ''pani''');
ylabel('c(n)');

%% plot real cepstrum of /n/ in 'pani'

rc2 = getRealCepstrum('n_pani.wav');
figure(200); clf;
plot(rc2); axis tight;
title('Real cepstrum of /n/ in ''pani''');
ylabel('c(n)');

%% plot real cepstrum of /I/ in 'pani'

rc3 = getRealCepstrum('i_pani.wav');
figure(300); clf;
plot(rc3); axis tight;
title('Real cepstrum of /I/ in ''pani''');
ylabel('c(n)');

%% plot real cepstrum of /s/ in 'uska'

rc4 = getRealCepstrum('s_uska.wav');
figure(400); clf;
plot(rc4); axis tight;
title('Real cepstrum of /s/ in ''uska''');
ylabel('c(n)');


rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/