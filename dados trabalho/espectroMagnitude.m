function [freq,normalized] = espectroMagnitude(sig)
fftSig = fft(sig); % obtem a transformada de fourier
p = abs(fftSig) / length(fftSig); % obtem o modulo e normaliza pelo numero de amostras
freq = 1000 / length(fftSig)*(0:(length(fftSig)/2)-1); 
normalized = p(1:length(fftSig)/2); % sinal normalizado. Metade das amostras (a outra metade e simetrica)