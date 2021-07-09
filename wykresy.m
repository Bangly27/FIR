N=202;
sig_len=1024;
N2 = sig_len/2;
f1 = linspace(0,24000,N2);
%kronecker
figure(1);
opts = delimitedTextImportOptions("NumVariables", 1);
opts.DataLines = [2, Inf];
opts.Delimiter = ",";
opts.VariableNames = "VarKronecker";
opts.VariableTypes = "double";
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
kronecker = readtable("kronecker_matlab.dat", opts);

opts.VariableNames = "VarCCSOutput";
kronecker_ccs_output = readtable("kronecker_ccs_output.dat", opts);

opts.VariableNames = "VarMatlabInput";
samples_matlab_input = readtable("samples_input.dat", opts);

opts.VariableNames = "VarMatlabOutput";
kronecker_matlab_output = readtable("kronecker_matlab_output.dat", opts);

roznica_kronecker=kronecker_ccs_output.VarCCSOutput-kronecker_matlab_output.VarMatlabOutput;

subplot(2,2,1);
plot(kronecker.VarKronecker);
xlim([0 sig_len]);
xlabel("Próbki");
title("Input - delta Kroneckera");

subplot(2,2,2);
plot(roznica_kronecker);
xlim([0 sig_len]);
xlabel("Próbki");
title("Różnica CCS - Matlab");

subplot(2,2,3);
plot(kronecker_ccs_output.VarCCSOutput);
xlim([0 sig_len]);
ylim([-1 1]);
xlabel("Próbki");
title("Filtr po - CCS");

subplot(2,2,4);
plot(kronecker_matlab_output.VarMatlabOutput);
xlim([0 sig_len]);
ylim([-1 1]);
xlabel("Próbki");
title("Filtr po - Matlab");
clear opts

figure(2);
kronecker_abs_fft_ccs=abs(fft(kronecker_ccs_output.VarCCSOutput));
kronecker_abs_fft_matlab=abs(fft(kronecker_matlab_output.VarMatlabOutput));

subplot(2,1,1);
bar(f1,kronecker_abs_fft_ccs(1:N2));
title("Moduł FFT - po filtracji CCS");
xlim([0 24000]);
xlabel("Częstotliwość [Hz]");

subplot(2,1,2);
bar(f1,kronecker_abs_fft_matlab(1:N2));
title("Moduł FFT - po filtracji Matlab");
xlim([0 24000]);
xlabel("Częstotliwość [Hz]");

%sinus
figure(3);
opts = delimitedTextImportOptions("NumVariables", 1);
opts.DataLines = [2, Inf];
opts.Delimiter = ",";
opts.VariableNames = "VarSinus";
opts.VariableTypes = "double";
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
sinus = readtable("sinus.dat", opts);

opts.VariableNames = "VarCCSOutput";
sinus_ccs_output = readtable("sinus_ccs_output.dat", opts);

opts.VariableNames = "VarMatlabOutput";
sinus_matlab_output = readtable("sinus_matlab_output.dat", opts);

roznica_sinus=sinus_ccs_output.VarCCSOutput-sinus_matlab_output.VarMatlabOutput;

subplot(2,2,1);
plot(sinus.VarSinus);
xlim([0 sig_len]);
xlabel("Próbki");
title("Input - sinus");

subplot(2,2,2);
plot(roznica_sinus);
xlim([0 sig_len]);
xlabel("Próbki");
title("Różnica CCS - Matlab");

subplot(2,2,3);
plot(sinus_ccs_output.VarCCSOutput);
xlim([0 sig_len]);
ylim([-1 1]);
xlabel("Próbki");
title("Filtr po - CCS");

subplot(2,2,4);
plot(sinus_matlab_output.VarMatlabOutput);
xlim([0 sig_len]);
ylim([-1 1]);
xlabel("Próbki");
title("Filtr po - Matlab");
clear opts

figure(4);

sinus_abs_fft_ccs=abs(fft(sinus_ccs_output.VarCCSOutput));
sinus_abs_fft_matlab=abs(fft(sinus_matlab_output.VarMatlabOutput));

subplot(2,1,1);
bar(f1,sinus_abs_fft_ccs(1:N2));
title("Moduł FFT - po filtracji CCS");
xlim([0 24000]);
xlabel("Częstotliwość [Hz]");

subplot(2,1,2);
bar(f1,sinus_abs_fft_matlab(1:N2));
title("Moduł FFT - po filtracji Matlab");
xlim([0 24000]);
xlabel("Częstotliwość [Hz]");

%suma sinusów
figure(5);
opts = delimitedTextImportOptions("NumVariables", 1);
opts.DataLines = [2, Inf];
opts.Delimiter = ",";
opts.VariableNames = "VarSumaSinus";
opts.VariableTypes = "double";
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
suma_sinus = readtable("suma_sinus.dat", opts);

opts.VariableNames = "VarCCSOutput";
suma_sinus_ccs_output = readtable("suma_sinus_ccs_output.dat", opts);

opts.VariableNames = "VarMatlabOutput";
suma_sinus_matlab_output = readtable("suma_sinus_matlab_output.dat", opts);

roznica_suma_sinus=suma_sinus_ccs_output.VarCCSOutput-suma_sinus_matlab_output.VarMatlabOutput;

subplot(2,2,1);
plot(suma_sinus.VarSumaSinus);
xlim([0 sig_len]);
xlabel("Próbki");
title("Input - suma sinusów");

subplot(2,2,2);
plot(roznica_suma_sinus);
xlim([0 sig_len]);
xlabel("Próbki");
title("Różnica CCS - Matlab");

subplot(2,2,3);
plot(suma_sinus_ccs_output.VarCCSOutput);
xlim([0 sig_len]);
ylim([-1 1]);
xlabel("Próbki");
title("Filtr po - CCS");

subplot(2,2,4);
plot(suma_sinus_matlab_output.VarMatlabOutput);
xlim([0 sig_len]);
ylim([-1 1]);
xlabel("Próbki");
title("Filtr po - Matlab");
clear opts

figure(6);
suma_sinus_abs_fft_ccs=abs(fft(suma_sinus_ccs_output.VarCCSOutput));
suma_sinus_abs_fft_matlab=abs(fft(suma_sinus_matlab_output.VarMatlabOutput));

subplot(2,1,1);
bar(f1,suma_sinus_abs_fft_ccs(1:N2));
title("Moduł FFT - po filtracji CCS");
xlim([0 24000]);
xlabel("Częstotliwość [Hz]");

subplot(2,1,2);
bar(f1,suma_sinus_abs_fft_matlab(1:N2));
title("Moduł FFT - po filtracji Matlab");
xlim([0 24000]);
xlabel("Częstotliwość [Hz]");

%szum biały
figure(7);
opts = delimitedTextImportOptions("NumVariables", 1);
opts.DataLines = [2, Inf];
opts.Delimiter = ",";
opts.VariableNames = "VarWhiteNoise";
opts.VariableTypes = "double";
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
white_noise = readtable("white_noise.dat", opts);

opts.VariableNames = "VarCCSOutput";
white_noise_ccs_output = readtable("white_noise_ccs_output.dat", opts);

opts.VariableNames = "VarMatlabOutput";
white_noise_matlab_output = readtable("white_noise_matlab_output.dat", opts);

roznica_white_noise=white_noise_ccs_output.VarCCSOutput-white_noise_matlab_output.VarMatlabOutput;

subplot(2,2,1);
plot(white_noise.VarWhiteNoise);
xlim([0 sig_len]);
xlabel("Próbki");
title("Input - szum biały");

subplot(2,2,2);
plot(roznica_white_noise);
xlim([0 sig_len]);
xlabel("Próbki");
title("Różnica CCS - Matlab");

subplot(2,2,3);
plot(white_noise_ccs_output.VarCCSOutput);
xlim([0 sig_len]);
ylim([-1 1]);
xlabel("Próbki");
title("Filtr po - CCS");

subplot(2,2,4);
plot(white_noise_matlab_output.VarMatlabOutput);
xlim([0 sig_len]);
ylim([-1 1]);
xlabel("Próbki");
title("Filtr po - Matlab");
clear opts

figure(8);
white_noise_abs_fft_ccs=abs(fft(white_noise_ccs_output.VarCCSOutput));
white_noise_abs_fft_matlab=abs(fft(white_noise_matlab_output.VarMatlabOutput));

subplot(2,1,1);
bar(f1,white_noise_abs_fft_ccs(1:N2));
title("Moduł FFT - po filtracji CCS");
xlim([0 24000]);
xlabel("Częstotliwość [Hz]");

subplot(2,1,2);
bar(f1,white_noise_abs_fft_matlab(1:N2));
title("Moduł FFT - po filtracji Matlab");
xlim([0 24000]);
xlabel("Częstotliwość [Hz]");

%chirp
figure(9);
opts = delimitedTextImportOptions("NumVariables", 1);
opts.DataLines = [2, Inf];
opts.Delimiter = ",";
opts.VariableNames = "VarChirp";
opts.VariableTypes = "double";
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
chirp = readtable("chirp.dat", opts);

opts.VariableNames = "VarCCSOutput";
chirp_ccs_output = readtable("chirp_ccs_output.dat", opts);

opts.VariableNames = "VarMatlabOutput";
chirp_matlab_output = readtable("chirp_matlab_output.dat", opts);

roznica_chirp=chirp_ccs_output.VarCCSOutput-chirp_matlab_output.VarMatlabOutput;

subplot(2,2,1);
plot(chirp.VarChirp);
xlim([0 sig_len]);
xlabel("Próbki");
title("Input - chirp");

subplot(2,2,2);
plot(roznica_chirp);
xlim([0 sig_len]);
xlabel("Próbki");
title("Różnica CCS - Matlab");

subplot(2,2,3);
plot(chirp_ccs_output.VarCCSOutput);
xlim([0 sig_len]);
ylim([-1 1]);
xlabel("Próbki");
title("Filtr po - CCS");

subplot(2,2,4);
plot(chirp_matlab_output.VarMatlabOutput);
xlim([0 sig_len]);
ylim([-1 1]);
xlabel("Próbki");
title("Filtr po - Matlab");
clear opts

figure(10);
chirp_abs_fft_ccs=abs(fft(chirp_ccs_output.VarCCSOutput));
chirp_abs_fft_matlab=abs(fft(chirp_matlab_output.VarMatlabOutput));

subplot(2,1,1);
bar(f1,chirp_abs_fft_ccs(1:N2));
title("Moduł FFT - po filtracji CCS");
xlim([0 24000]);
xlabel("Częstotliwość [Hz]");

subplot(2,1,2);
bar(f1,chirp_abs_fft_matlab(1:N2));
title("Moduł FFT - po filtracji Matlab");
xlim([0 24000]);
xlabel("Częstotliwość [Hz]");