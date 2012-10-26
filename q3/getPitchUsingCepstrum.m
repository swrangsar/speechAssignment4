function pitch = getPitchUsingCepstrum(speechSegment)

[~, samplingFrequency] = wavread(speechSegment);
speechCepstrum = getRealCepstrum(speechSegment);
highTimeCepstrum = getHighTimeCepstrum(speechCepstrum);
pitch = getPitch(highTimeCepstrum, samplingFrequency);

end

%% get high-time window of speech segment

function highTimeCepstrum = getHighTimeCepstrum(speechCepstrum)

cutoffLength = 20;

speechCepstrum = speechCepstrum(1:round(length(speechCepstrum)/2));
highTimeCepstrum = speechCepstrum;
highTimeCepstrum(1:cutoffLength) = 0;

end

%% get the pitch from the maxima of high-time cepstrum

function pitch = getPitch(highTimeCepstrum, samplingFrequency)

highTimeCepstrum = highTimeCepstrum(:);
maxVal = max(highTimeCepstrum);
maxIndexFirst = find(highTimeCepstrum == maxVal, 1, 'first');

pitchPeriod = (maxIndexFirst - 1) * (1/samplingFrequency);
pitch = 1/pitchPeriod;

end