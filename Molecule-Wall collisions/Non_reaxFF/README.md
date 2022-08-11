## Procedure:
To produce the results, follow these steps:

   1- Go to "Equilibration_300K" and run "in.Gold_EMIBF4" to equilibrate the system at 300K.
   This step will produce the file of the equilibrated system named "eq_SYST.dat". 
   
      Note: If you want to change the temperature of the molecule go to line 96 and edit it. 
             If you want to change the temperature of the plate go to line 97 and edit it.
   
   2- Copy "eq_SYST.dat" and paste in the folder "data_files". Then, run the Matlab code "call.m".  
   This will produce many data files that correspond to different landing configurations and different impact energies.
   
   
   
   3- In the command line, run the command shown in the file "run_loop.txt". These commands are written in Bash language, they need to be translated to work on Windows machines.


