opts = delimitedTextImportOptions("NumVariables", 1);
opts.DataLines = [2, Inf];
opts.Delimiter = ",";
opts.VariableNames = "VarFIR";
opts.VariableTypes = "double";
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
fir_samples = readtable("samples_input.dat", opts);

opts.VariableNames = "VarKronecker";
kronecker = readtable("kronecker_matlab.dat", opts);

opts.VariableNames = "VarSinus";
sinus = readtable("sinus.dat", opts);

opts.VariableNames = "VarSumaSinus";
suma_sinus = readtable("suma_sinus.dat", opts);

opts.VariableNames = "VarWhiteNoise";
white_noise = readtable("white_noise.dat", opts);

opts.VariableNames = "VarChirp";
chirp = readtable("chirp.dat", opts);

fir_kronecker=filter(fir_samples.VarFIR,1,kronecker.VarKronecker)/32768;
fir_sinus=filter(fir_samples.VarFIR,1,sinus.VarSinus)/32768;
fir_suma_sinus=filter(fir_samples.VarFIR,1,suma_sinus.VarSumaSinus)/32768;
fir_white_noise=filter(fir_samples.VarFIR,1,white_noise.VarWhiteNoise)/32768;
fir_chirp=filter(fir_samples.VarFIR,1,chirp.VarChirp)/32768;

plot(fir_kronecker);

h = [1651,9,5000,1,400,2];
dlmwrite("kronecker_matlab_output.dat",h, ' ');
dlmwrite("kronecker_matlab_output.dat",fir_kronecker, 'delimiter','\n', '-append');

dlmwrite("sinus_matlab_output.dat",h, ' ');
dlmwrite("sinus_matlab_output.dat",fir_sinus, 'delimiter','\n', '-append');

dlmwrite("suma_sinus_matlab_output.dat",h, ' ');
dlmwrite("suma_sinus_matlab_output.dat",fir_suma_sinus, 'delimiter','\n', '-append');

dlmwrite("white_noise_matlab_output.dat",h, ' ');
dlmwrite("white_noise_matlab_output.dat",fir_white_noise, 'delimiter','\n', '-append');

dlmwrite("chirp_matlab_output.dat",h, ' ');
dlmwrite("chirp_matlab_output.dat",fir_chirp, 'delimiter','\n', '-append');

%writematrix(fir_kronecker, 'kronecker_matlab_output.dat')
%writematrix(fir_sinus, 'sinus_matlab_output.dat')
%writematrix(fir_suma_sinus, 'suma_sinus_matlab_output.dat')
%writematrix(fir_white_noise, 'white_noise_matlab_output.dat')
%writematrix(fir_chirp, 'chirp_matlab_output.dat')