function vocalTractResponse = getVocalTractResponse(speechSegment)

[speechCepstrum, fs] = getRealCepstrum(speechSegment);
lowTimeCepstrum = getLowTimeCepstrum(speechCepstrum, fs);
vocalTractResponse = abs(fft(lowTimeCepstrum));

end

%% do low-time liftering for vocal tract estimation

function lowTimeCepstrum = getLowTimeCepstrum(speechCepstrum, fs)

cutoffLength = fs * .003; % take 20 or 15
speechCepstrum = speechCepstrum(1:round(length(speechCepstrum)/2));
lowTimeCepstrum = speechCepstrum;
lowTimeCepstrum((cutoffLength+1):end) = 0;

end