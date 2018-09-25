#include "../msm4g/msm4g_lib.h"

int main() {

    Boolean periodic = true;
    int mu = 10; 
    int nu = 4;
    double abar = 6;
    int L = 0 ;
    int M = 0;

    SimulationBox *box = msm4g_box_newCube(0, 2);
    Simulation *simulation = msm4g_simulation_new("data/NaClN8.ini", box, periodic, nu, abar,mu,L,M,M,M);

    msm4g_simulation_run(simulation);
    printf("--------------------------------------\n");
    printf("Running MSM for NaCl N=8 case ended \n");
    printf("--------------------------------------\n");
    printf("Expected   potential energy = %15.8f\n",-6.99025838);
    printf("Calculated potential energy = %15.8f\n",simulation->output->potentialEnergyTotal);   
    msm4g_simulation_delete(simulation);

    return 0;
}
