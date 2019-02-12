#include <stdio.h>
#include <string.h>
#include <stdlib.h>

//output should be a a binary file
float eps= 0.001;


void update_particle(int N, double** pos, double** vel, double* mass,
  int i , double delta_t, double G);
void get_a(int i, double* m, double** pos, double ** a, double G, int N);

int main(int argc, char const *argv[]) {
  int N, nsteps, graphics, i, step;
  double delta_t, G;
  const char * filename =argv[2];
  if(argc !=5){
    printf("Invalid number of arguments.");
    printf("The arguments are: N filename nsteps delta_t graphics \n");
  }

  N = atoi(argv[1]);
  nsteps = atoi(argv[3]);
  delta_t = atof(argv[4]);
  graphics = atoi(argv[5]);
  G= 100/(double)N;
  double** pos = (double **)malloc(N*sizeof(double*));
  for(i=0; i<N; i++){
    pos[i]= (double *)malloc(2*sizeof(double));
  }
  double** vel = (double **)malloc(N*sizeof(double*));
    for(i=0; i<N; i++){
      vel[i]= (double *)malloc(2*sizeof(double));
    }
  //initialize and eclare with that funct in lab 3
  double** a = (double **)malloc(N*sizeof(double*));
    for(i=0; i<N; i++){
      a[i]= (double *)malloc(2*sizeof(double));
    }

  double* m = (double *)malloc(N*sizeof(double));
  double* bright = (double *)malloc(N*sizeof(double));

  // Read the read_data
  FILE *file;
  file=fopen(filename, "rb");
  for(i=0; i< N; i++){
    fread(&pos[i][0], sizeof(double), 1, file);
    fread(&pos[i][1], sizeof(double), 1, file);
    fread(&m[i], sizeof(double), 1, file);
    fread(&vel[i][0], sizeof(double), 1, file);
    fread(&vel[i][1], sizeof(double), 1, file);
    fread(&bright[i], sizeof(double), 1, file);
  }

  for (i = 0; i < N; i++) {
    printf("%f\n", pos[i][0]);
    printf("%f\n", pos[i][1]);
    printf("%f\n", m[i]);
    printf("%f\n", vel[i][0]);
    printf("%f\n", vel[i][1]);
    printf("%f\n", bright[i]);
  }


  for(step=0; step < nsteps; step++){
    for(i=0; i < N; i++){
      //you gotta make sure you update with the "old " vectors (make copy)
      update_particle(N, pos, vel, m, i, delta_t, G);
      //graphics
    }
  }
  return 0;
}



void update_particle(int N, double** pos, double** vel, double* m,
  int i , double delta_t, double G){

    //update according to symplectic Eulor method
    double** a = (double**)malloc(sizeof(double*)*N);
    for (i = 0; i < N; i++){
      a[i]=(double*)malloc(sizeof(double)*N);
    }
    //get acceleration for all particles
    for(i=0; i < N; i++){
      get_a(i, m, pos, a, G, N);
    }
    //update pos and vel
    for(i=0; i < N; i++){
      vel[i][0] += delta_t*a[i][0];
      vel[i][1] += delta_t*a[i][1];
      pos[i][0] += delta_t*vel[i][0];
      pos[i][1] += delta_t*vel[i][1];
    }
    return;
  }

void get_a(int i, double* m, double** pos, double** a, double G, int N){
  double sumx=0, sumy=0, r;
  int j;

  for(j=0; j<i; j++){
    r= (pos[i][0] - pos[j][0])*(pos[i][0] - pos[j][0])
     + (pos[i][1] - pos[j][1])*(pos[i][1] - pos[j][1]);
    sumx += m[j]/(r*r*r)*(pos[i][0]-pos[j][0]);
    sumy += m[j]/(r*r*r)*(pos[i][1]-pos[j][1]);
  }
  //in order to not have ifs in the for loop
  for(j=i+1; j<N; j++){
    r= (pos[i][0] - pos[j][0])*(pos[i][0] - pos[j][0])
     + (pos[i][1] - pos[j][1])*(pos[i][1] - pos[j][1]) + eps;
    sumx += m[j]/(r*r*r)*(pos[i][0]-pos[j][0]);
    sumy += m[j]/(r*r*r)*(pos[i][1]-pos[j][1]);
  }

  a[i][0] = -G*sumx;
  a[i][1] = -G*sumy;
  return;
}
