function [freq,normalized] = espectroPotencia(sig)
fftSig=fft(sig);
p = fftSig.*conj(fftSig)/length(fftSig);
freq = 1000 / length(fftSig)*(0:(length(fftSig)/2)-1);
normalized = p(1:length(fftSig)/2);