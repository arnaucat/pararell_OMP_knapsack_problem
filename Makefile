SERIAL_TARGET_BB=knapsackBB_serial
OMP_TARGET_BB=knapsackBB_omp
RESULTS=Results_times.csv
RESULTS_SPEEDUPS=Speedups.csv
RESULTS_TIMES=Results_per_Thread.csv
OUTPUT_FOLER=output
ERROR_FOLDER=errors

run : 
	g++ knapsackBB_serial.cpp -o $(SERIAL_TARGET_BB)
	
	g++ -fopenmp knapsackBB_omp.cpp -o $(OMP_TARGET_BB)
	
	./run_all.sh

