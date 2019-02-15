#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include "graphics.h"

//graphics shit
const float circleRadius=0.01, circleColor=0;
const int windowWidth=800;


int main(int argc , char *args[]){
	if (argc!=6){
		printf("Invalid number of arguments. \n");
		printf("galsim expects: N filename nsteps delta_t graphics\n");
		return -1;
	}
	clock_t begin = clock();
	char *file_name = args[2];
	const int N = atoi(args[1]);
	const int n_steps = atoi(args[3]);
	//graphic constants
	int L=1,W=1;
	/*not sure if this is the correct way of converting from
	character to double, maybe a single cast would suffice */
	const double delta_t = atof(args[4]);

	FILE *file;
	file = fopen(file_name , "rb");
	/*maybe in this case we could allocate memory for this
	matrix statically*/
	double **arr = (double **)malloc(N*sizeof(double*));
	for (int i = 0 ; i<N ; i++){
		arr[i] = (double*)malloc(6 * sizeof(double));
	}

	for (int i = 0 ; i<(N) ; i++){
		double x , y , vx , vy , mass , bright;
		fread(&x , sizeof(double) , 1 ,file);
		fread(&y , sizeof(double) , 1 ,file);
		fread(&mass , sizeof(double) , 1 ,file);
		fread(&vx , sizeof(double) , 1 ,file);
		fread(&vy , sizeof(double) , 1 ,file);
		fread(&bright, sizeof(double) , 1 ,file);
		arr[i][0] = x;
		arr[i][1] = y;
		arr[i][2] = mass;
		arr[i][3] = vx;
		arr[i][4] = vy;
		arr[i][5] = bright;
	}
	fclose(file);

	/* check whether the file was read properly
	for (int i = 0 ; i<N ; i++){
		for (int j = 0; j<6 ; j++){
			printf("Number %lf \n" , arr[i][j]);
		}
	}*/


	const float G = 100/(double)N;
	const float epsilon_0 = 0.001;

	double **new_arr = (double **)malloc(N*sizeof(double*));
	for (int i = 0 ; i<N ; i++){
		new_arr[i] = (double*)malloc(4 * sizeof(double));
	}
	//array to save initial
	double **initial_arr = (double **)malloc(N*sizeof(double*));
	for (int i = 0 ; i<N ; i++){
		initial_arr[i] = (double*)malloc(4 * sizeof(double));
		initial_arr[i][0] = arr[i][0];
		initial_arr[i][1] = arr[i][1];
		initial_arr[i][3] = arr[i][2];
		initial_arr[i][4] = arr[i][3];
	}

	//initialize graphics window
	InitializeGraphics("0",windowWidth,windowWidth);
	SetCAxes(0,1);
	printf("Hit q to quit.\n");
	while(!CheckForQuit()){
		//do we need to save the position for each steps
		for (int k = 0 ; k<n_steps ; k++){
			for (int i = 0; i<N ; i++){
				//calculates new positions in just one step
				double sum_x = 0;
				double sum_y = 0;
				double force_x = 0;
				double force_y = 0;
				double acceleration_x,acceleration_y,new_velocity_x,new_velocity_y , new_position_x , new_position_y;
				for (int j = 0; j<(N) ; j++){
					if (j != i){
						/* first we calculate the coordinates with respect
						to the initial frame of reference, then
						the denominator and finally multiply the result
						by the mass of the particle and the distance vector.
						*/
						double x_direction = arr[i][0] - arr[j][0];
						double y_direction = arr[i][1] - arr[j][1];
						double denominator = pow((sqrt((x_direction)*(x_direction) + (y_direction)*(y_direction))+epsilon_0),3);
						sum_x += arr[j][2]*x_direction/denominator;
						sum_y += arr[j][2]*y_direction/denominator;
						//printf("Suma x ---> %lf \n" , sum_x );
						//printf("Suma y ---> %lf \n" , sum_y);
					}

				}
				force_x = -G*arr[i][2]*sum_x;
				force_y = -G*arr[i][2]*sum_y;


				/*
					Update the force matrix and then the positions;
				*/
				acceleration_x = force_x/arr[i][2];
				acceleration_y = force_y/arr[i][2];
				new_velocity_x = arr[i][3] + delta_t*acceleration_x;
				new_velocity_y = arr[i][4] + delta_t*acceleration_y;
				new_position_x = arr[i][0] + delta_t*new_velocity_x;
				new_position_y = arr[i][1] + delta_t*new_velocity_y;

				new_arr[i][0] = new_position_x;
				new_arr[i][1] = new_position_y;
				new_arr[i][2] = new_velocity_x;
				new_arr[i][3] = new_velocity_y;
			}
			//we are on the step loop now
			//start with graphic drawing for step k
			ClearScreen();
			for (int i = 0; i<N ; i++){
				//Draw particle i
				DrawCircle(arr[i][0], arr[i][1], L, W, circleRadius, circleColor);
				//update positions/velocities of particle i
				arr[i][0] = new_arr[i][0];
				arr[i][1] = new_arr[i][1];
				arr[i][3] = new_arr[i][2];
				arr[i][4] = new_arr[i][3];
			}
			Refresh();
			/* Sleep a short while to avoid screen flickering. */
			usleep(8000);
		}
		//out of step loop
		//set arr to initial values so simulation can loop
		for(int i= 0; i < N; i++) {
			arr[i][0] = initial_arr[i][0];
			arr[i][1] = initial_arr[i][1];
			arr[i][3] = initial_arr[i][2];
			arr[i][4] = initial_arr[i][3];
		}
	}
	//graphic clearing user pressed q
	FlushDisplay();
	CloseDisplay();

	//wirte final position on output.gal
	FILE *file2;
	file2 = fopen("output.gal" , "wb");
	for (int i = 0 ; i<(N) ; i++){
		double x , y , vx , vy , mass , bright;
		x = arr[i][0] ;
		y = arr[i][1] ;
		mass = arr[i][2];
		vx = arr[i][3];
		vy = arr[i][4];
		bright = arr[i][5];
		fwrite(&x , sizeof(double) , 1 ,file2);
		fwrite(&y , sizeof(double) , 1,file2);
		fwrite(&mass , sizeof(double) , 1 ,file2);
		fwrite(&vx , sizeof(double) , 1 ,file2);
		fwrite(&vy , sizeof(double) , 1 ,file2);
		fwrite(&bright, sizeof(double) , 1 ,file2);

	}
	fclose(file2);


	for (int i = 0; i<N ; i++){
		free(arr[i]);
	}

	free(arr);

	for (int i = 0; i<N ; i++){
		free(new_arr[i]);
	}
	free(new_arr);

	for (int i = 0; i<N ; i++){
		free(initial_arr[i]);
	}
	free(initial_arr);

	clock_t end = clock();
	double time_spent = (double)(end - begin)/CLOCKS_PER_SEC;

	FILE *file3;
	file3 = fopen("time.txt" , "a+");
	fprintf(file3 , "%lf \n" , time_spent );
	fclose(file3);
	return 0;
}
