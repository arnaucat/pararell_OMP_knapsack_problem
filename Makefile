SERIAL_TARGET_BB=knapsackBB_serial
OMP_TARGET_BB=knapsackBB_omp

run : 
	g++ knapsackBB_serial.cpp -o $(SERIAL_TARGET_BB)
	
	g++ -fopenmp knapsackBB_omp.cpp -o $(OMP_TARGET_BB)
	
	./run_all.sh

