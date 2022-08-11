## Procedure:
To produce the results, follow these steps:

   1- Go to "Equilibration_300K" and run "in.Gold_EMIBF4" to equilibrate the system at 300K.
   This step will produce the file of the equilibrated system named "eq_SYST.dat". 
   
      Note: If you want to change the temperature of the molecule go to line 96 and edit it. 
             If you want to change the temperature of the plate go to line 97 and edit it.
   
   2- Copy "eq_SYST.dat" and paste in the folder "data_files". Then, run the Matlab code "call.m".  
   This will produce many data files that correspond to different landing configurations and different impact energies.
   
   
   
   3- In the command line, run the command shown in the file "run_loop.txt". These commands are written in Bash language, they need to be translated to work on Windows machines.
   
   4- To produce the probability curves: run the commands shown in "count_loop1.txt" and save the results (These commands are written in Bash language) . Then go to the folder "plot" and open "probability_curves.m". Go to line 5 to insert the probabilities of dissociation at 300K given by "count_loop1.txt".  Then, run "probability_curves.m".
   
   5- To produce probability maps: run the commands shown in "count_loop2.txt" (These commands are written in Bash language). Then, go to the folder "plot" and save the results in a file named "vector300K". Then run the file "savefiles.m". Then run "map.m".


