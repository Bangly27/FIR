opts = delimitedTextImportOptions("NumVariables", 1);
opts.DataLines = [2, Inf];
opts.Delimiter = ",";
opts.VariableTypes = "double";
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.VariableNames = "VarName1";

kronecker = readtable("kronecker_ccs_output.dat", opts);

A=kronecker.VarName1;
A(:,1)=A(:,1)./32768;
h = [1651,9,5000,1,400,2];
dlmwrite("kronecker_ccs_output.dat",h, ' ');
dlmwrite("kronecker_ccs_output.dat",A, 'delimiter','\n', '-append');

sinus = readtable("sinus_ccs_output.dat", opts);

B=sinus.VarName1;
B(:,1)=B(:,1)./32768;
h = [1651,9,5000,1,400,2];
dlmwrite("sinus_ccs_output.dat",h, ' ');
dlmwrite("sinus_ccs_output.dat",B, 'delimiter','\n', '-append');

suma_sinus = readtable("suma_sinus_ccs_output.dat", opts);

C=suma_sinus.VarName1;
C(:,1)=C(:,1)./32768;
h = [1651,9,5000,1,400,2];
dlmwrite("suma_sinus_ccs_output.dat",h, ' ');
dlmwrite("suma_sinus_ccs_output.dat",C, 'delimiter','\n', '-append');

white_noise = readtable("white_noise_ccs_output.dat", opts);

D=white_noise.VarName1;
D(:,1)=D(:,1)./32768;
h = [1651,9,5000,1,400,2];
dlmwrite("white_noise_ccs_output.dat",h, ' ');
dlmwrite("white_noise_ccs_output.dat",D, 'delimiter','\n', '-append');

chirp = readtable("chirp_ccs_output.dat", opts);

E=chirp.VarName1;
E(:,1)=E(:,1)./32768;
h = [1651,9,5000,1,400,2];
dlmwrite("chirp_ccs_output.dat",h, ' ');
dlmwrite("chirp_ccs_output.dat",E, 'delimiter','\n', '-append');
