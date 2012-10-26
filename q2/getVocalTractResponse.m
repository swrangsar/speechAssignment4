function vocalTractResponse = getVocalTractResponse(speechSegment)

speechCepstrum = getRealCepstrum(speechSegment);
speechCepstrum = speechCepstrum(1:round(length(speechCepstrum)/2));
lowTimeCepstrum = getLowTimeCepstrum(speechCepstrum);
vocalTractResponse = abs(fft(lowTimeCepstrum));

end

%% do low-time liftering for vocal tract estimation

function lowTimeCepstrum = getLowTimeCepstrum(speechCepstrum)

cutoffLength = 20; % take 20 or 15

lowTimeWindow = zeros(length(speechCepstrum), 1);
lowTimeWindow(1:cutoffLength) = 1;
lowTimeCepstrum = speechCepstrum .* lowTimeWindow;

end