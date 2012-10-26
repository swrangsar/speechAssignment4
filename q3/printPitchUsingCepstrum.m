close all; clear all;

addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
addpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q3/

pitch1 = getPitchUsingCepstrum('a_pani.wav')
pitch2 = getPitchUsingCepstrum('n_pani.wav')
pitch3 = getPitchUsingCepstrum('i_pani.wav')
pitch4 = getPitchUsingCepstrum('s_uska.wav')
pitch5 = getPitchUsingCepstrum('s_uska_16k.wav')


rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q3/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/q1/
rmpath /Users/swrangsarbasumatary/Desktop/speechAssignment4/dataFiles/