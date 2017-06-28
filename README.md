# nanoHUB-user-access-data-clustering
Thesis topic : Data clustering techniques to identify User Groups and Resource Grouping in nanoHUB

(note : Please find the complete result dataset on Purdue University Research Reporsitory - https://purr.purdue.edu/projects/mugdhathesis/files/browse?subdir=Final%20Results )

Below is a step wise implementation of the methodology used in my thesis. The following steps are written for the sample year 2011. The names of all input and output files will change for different years.

STEP 1 : 
Establish connection with nanohub database and extract data using "Data_extract.sql" into output file titles "in_STDB_2011_1.csv". Copy this file into the "data_extract" folder

STEP 2: 
Run ST_DBSCAN.ipynb

STEP 3: 
Combine cores/cores.csv and neighbors/neigh.csv

STEP 4:
Run Jaccard_sim.ipynb

STEP 5:
You will need to manually or programmatically edit the output file "Jaccard/sim_jacc_2011.csv". Combine to latitude and longitude columns to create two new columns in their place. The format of the first column is "LatitudeLongitude" with no spaces and second column is "Latiude,Longitude"

STEP 6
Use tableau to create the Jaccard matrix.

Note:- The file path in the code will need to be changed based on your implementation. The root directory path in the case of my implementation was "D:/Nanohub/results/Final Results". Please replace that with your root directory. There are five sub folders under this directory
1. data extract (STEP 1 output)
2. cores (STEP 2 output)
3. neighbors (STEP 2 output)
4. cores_neighbors (STEP 3 output)
5. Jaccard (stores output of STEP 4 and 5)
