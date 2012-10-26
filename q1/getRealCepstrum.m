function realCepstrum = getRealCepstrum(speechSegment)

windowedSignal = getWindowedSignal(speechSegment);
logMagnitudeSpectrum = getLogMagnitudeSpectrum(windowedSignal);
realCepstrum = ifft(logMagnitudeSpectrum);

end


%% get a 30 ms window of speech signal

function [windowedSignal, fs] = getWindowedSignal(inputFile)

windowDuration = 0.030; % in ms

[y, fs] = wavread(inputFile);
length = size(y, 1);
centralIndex = round(length/2);
M = round(windowDuration * fs);
startIndex = round(centralIndex - M/2);
windowedSignal = y(startIndex:startIndex + M-1);

end

%% get logarithm of the magnitude spectrum

function logMagnitudeSpectrum = getLogMagnitudeSpectrum(windowedSignal)

mag = fft(windowedSignal);
logMagnitudeSpectrum = log(abs(mag));

end