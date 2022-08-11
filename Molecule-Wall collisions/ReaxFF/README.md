## Procedure:
To produce the results, follow these steps:

   1- Go to "Equilibration_300K" and run "in.sys_eq" to equilibrate the system at 300K.
   This step will produce the file of the equilibrated system named "eq_SYST.dat". 
   
      Note: If you want to change the temperature of the molecule go to line 96 and edit it. 
             If you want to change the temperature of the plate go to line 97 and edit it.
   
   2- Copy "eq_SYST.dat" and paste in the folder "data_files". Then, run the Matlab code "call.m".  
   This will produce many data files that correspond to different landing configurations and different impact energies.
   
   
   3- Run the file "in.loops".  This will produce the dump files and the log files that will be used later.
   
    Note: the files "kevalues.txt", "phiyvalues.txt" and "phizvalues.txt" contain the values of the impact energy in eV,
          the angles Phi_y and the angles Phi_z respectively.
   
   4- To produce the mass spectra: run "produce_mass_spectrum.m" on Matlab.

