filename='eq_SYST.dat';
KE= [10 20 30 40 50 60 70 80 90 1000];
for i=1:length(KE)
    datafiles_generator(filename,KE(i));
end