This zip-Folder contains all NEURON simulator files used for the modeling in the Paper 

Lombardi, Jedlicke, Luhmann, Kilb "Interactions between membrane resistance, GABA-A receptor properties, 
bicarbonate dynamics and Cl--transport shape activity-dependent changes of intra-cellular Cl- concentration."
International Journal of Molecular Science 2019

Each subfolder contains the hoc and ses files required for the modeling of one subproject.
In each subfolder all mod files are stored, they must be tranformed into a DLL with the MkNrnDll.exe program.

To start the model the Start_xxxx.hoc schould be started, which loads the correct cell, implemented the correct 
mechanisms and runs the simulations. Only some of the "isolated dendrite files" requires the manual implementation
of .ses files to implement voltage-clamp.

The programs runs without GUI and the results are stored in ASCII files. Please contact me (wkilb at uni-mainz.de)
for a .xls speadsheed that eases the readout of relevant values (e.g. max min) from these ASCII sheets.

Please be aware that these complex simulations with several repetitions require some time. For most 
simulations a status report was printed in the main NEURON screen. Most folders also provide a .ses file that 
can be loaded manually via the GUI and allows visualization of most relevant parameters.  
