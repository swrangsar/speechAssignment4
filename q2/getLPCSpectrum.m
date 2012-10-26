function [LPCSpectrum, narrowbandSpectrum, w] = getLPCSpectrum(speechSegment, poleOrder)

if nargin < 2, poleOrder = 10; end

[windowedSignal, fs] = getWindowedSignal(speechSegment);
M = length(windowedSignal);
% the narrowband spectrum first
narrowbandSpectrum = log(abs(fft(windowedSignal)));
narrowbandSpectrum = narrowbandSpectrum(1:round(M/2));

preEmpdSignal = preEmphasize(windowedSignal);
LPCoeffs = getLPCoefficients(preEmpdSignal, poleOrder);
frequencies = (fs/M) * (0:M-1);

denominator = 0;
numerator = 1;

for k = 1:poleOrder
    denominator = denominator + (LPCoeffs(k) * (exp(-1i * 2 * pi * frequencies ./ fs) .^ (k-1)));
end

H = numerator ./ denominator;
LPCSpectrum = log(abs(H));
LPCSpectrum = LPCSpectrum(1:round(M/2));
w = frequencies(1:round(M/2));
LPCSpectrum = LPCSpectrum(:);
narrowbandSpectrum=narrowbandSpectrum(:);
w=w(:);

end

%% get a 30 ms window of speech signal

function [windowedSignal, fs] = getWindowedSignal(speechSegment)

windowDuration = 0.030; % in ms
[y, fs] = wavread(speechSegment);
length = size(y, 1);
centralIndex = round(length/2);
M = round(windowDuration * fs);
startIndex = round(centralIndex - M/2);
windowedSignal = y(startIndex:startIndex + M-1);

end

%% pre emphasize the speech segment

function preEmpdSignal = preEmphasize(windowedSignal)

y = windowedSignal;
length = size(y, 1);
for k = 1:length
    if k > 1
        y(k) = y(k) - (0.97*y(k-1));
    end
end
preEmpdSignal = y;

end


%% get autocorrelation coefficients

function autocorrVector = getAutoCorrelation(preEmpdSignal, poleOrder)

ACCoeff = zeros(poleOrder+1, 1);
for p = 0:poleOrder
    for k = 0:(length(preEmpdSignal)-1)
        valueToBeAdded = 0;
        if k-p >= 0
            valueToBeAdded = preEmpdSignal(k+1) .* preEmpdSignal(k+1-p);
        end
        ACCoeff(p+1) = ACCoeff(p+1) + valueToBeAdded;
    end
end
autocorrVector = ACCoeff;

end


%% get LPC Coefficients

function LPCoeffs = getLPCoefficients(preEmpdSignal, poleOrder)

autocorrVector = getAutoCorrelation(preEmpdSignal, poleOrder);
LPCoeffs = levinson(autocorrVector);

end