function [vocalTractResponse, w] = getVocalTractResponse(speechSegment)

[speechCepstrum, fs] = getRealCepstrum(speechSegment);
lowTimeCepstrum = getLowTimeCepstrum(speechCepstrum, fs);
vocalTractResponse = abs(fft(lowTimeCepstrum));
vocalTractResponse = vocalTractResponse(1:(length(vocalTractResponse)/2));

M = length(vocalTractResponse);
frequencies = (fs/M) * (0:M-1);
w = frequencies(:)/2;

end

%% do low-time liftering for vocal tract estimation

function lowTimeCepstrum = getLowTimeCepstrum(speechCepstrum, fs)

cutoffLength = fs * .003; % take 20 or 15
speechCepstrum = speechCepstrum(1:round(length(speechCepstrum)/2));
lowTimeCepstrum = speechCepstrum;
lowTimeCepstrum((cutoffLength+1):end) = 0;

end