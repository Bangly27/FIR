opts = delimitedTextImportOptions("NumVariables", 1);
opts.DataLines = [2, Inf];
opts.Delimiter = ",";
opts.VariableTypes = "double";
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.VariableNames = "VarName1";

sinus = readtable("sinus.dat", opts);

B=sinus.VarName1;
B(:,1)=round(B(:,1).*32768);
h = [1651,9,5000,1,400,2];
dlmwrite("sinus_ccs_input.dat",h, ' ');
dlmwrite("sinus_ccs_input.dat",B, 'delimiter','\n', '-append');

suma_sinus = readtable("suma_sinus.dat", opts);

C=suma_sinus.VarName1;
C(:,1)=round(C(:,1).*32768);
h = [1651,9,5000,1,400,2];
dlmwrite("suma_sinus_ccs_input.dat",h, ' ');
dlmwrite("suma_sinus_ccs_input.dat",C, 'delimiter','\n', '-append');

white_noise = readtable("white_noise.dat", opts);

D=white_noise.VarName1;
D(:,1)=round(D(:,1).*32768);
h = [1651,9,5000,1,400,2];
dlmwrite("white_noise_ccs_input.dat",h, ' ');
dlmwrite("white_noise_ccs_input.dat",D, 'delimiter','\n', '-append');

chirp = readtable("chirp.dat", opts);

E=chirp.VarName1;
E(:,1)=round(E(:,1).*32768);
h = [1651,9,5000,1,400,2];
dlmwrite("chirp_ccs_input.dat",h, ' ');
dlmwrite("chirp_ccs_input.dat",E, 'delimiter','\n', '-append');