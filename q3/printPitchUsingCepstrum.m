close all; clear all;

addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q3/

[pitch1, htl1] = getPitchUsingCepstrum('a_pani.wav');
[pitch2, htl2] = getPitchUsingCepstrum('n_pani.wav');
[pitch3, htl3] = getPitchUsingCepstrum('i_pani.wav');
[pitch4, htl4] = getPitchUsingCepstrum('s_uska.wav');

pitch1, pitch2, pitch3, pitch4

figure(100); clf;
plot(htl1); axis tight;
title('High-time liftered cepstrum of /a/ in ''pani''');

figure(200); clf;
plot(htl2); axis tight;
title('High-time liftered cepstrum of /n/ in ''pani''');

figure(300); clf;
plot(htl3); axis tight;
title('High-time liftered cepstrum of /I/ in ''pani''');

figure(400); clf;
plot(htl4); axis tight;
title('High-time liftered cepstrum of /s/ in ''uska''');


rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q3/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/