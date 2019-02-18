#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

#define MASS 2

int main(int argc , char *args[]){
	if (argc!=6){
		printf("Invalid number of arguments \n");
		return -1;
	}
	clock_t begin = clock();
	const char *file_name = args[2];
	const int N = atoi(args[1]);
	const int n_steps = atoi(args[3]);
	/*not sure if this is the correct way of converting from
	character to double, maybe a single cast would suffice */
  const double delta_t = atof(args[4]);
	FILE *file;

	file = fopen(file_name , "rb");
	/*maybe in this case we could allocate memory for this
	matrix statically*/
	double **arr = (double **)malloc(N*sizeof(double*));
	double **acc_matrix_x = (double**)malloc(N*sizeof(double*));
	double **acc_matrix_y = (double**)malloc(N*sizeof(double*));
	for (int i = 0 ; i<N ;i++){
		arr[i] = (double*)malloc(6 * sizeof(double));
		acc_matrix_x[i] = (double*)malloc((i+1) * sizeof(double));
		acc_matrix_y[i] = (double*)malloc((i+1) * sizeof(double));
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


	const float G = 100/(double)N;
	const	float epsilon_0 = 0.001;

	//do we need to save the position for each step?
	for (int k = 0 ; k<n_steps ; k++){
		int i, j;
		for (i = 0; i<N ; i+=4){
			//calculates new positions in just one step
			for (j = 0; j<=i ; j++){
					/* first we calculate the coordinates with respect
					to the initial frame of reference, then
					the denominator and finally multiply the result
					by the mass of the particle and the distance vector.
					*/
					double x_direction_1 = arr[i][0] - arr[j][0];
					double x_direction_2 = arr[i+1][0] - arr[j][0];
					double x_direction_3 = arr[i+2][0] - arr[j][0];
					double x_direction_4 = arr[i+3][0] - arr[j][0];
					double y_direction_1 = arr[i][1] - arr[j][1];
					double y_direction_2 = arr[i+1][1] - arr[j][1];
					double y_direction_3 = arr[i+2][1] - arr[j][1];
					double y_direction_4 = arr[i+3][1] - arr[j][1];
					double denominator_1 = pow((sqrt((x_direction_1)*(x_direction_1) + (y_direction_1)*(y_direction_1))+epsilon_0),3);
					acc_matrix_x[i][j] = -G*x_direction_1/denominator_1;
					acc_matrix_y[i][j] = -G*y_direction_1/denominator_1;
					double denominator_2 = pow((sqrt((x_direction_2)*(x_direction_2) + (y_direction_2)*(y_direction_2))+epsilon_0),3);
					acc_matrix_x[i+1][j] = -G*x_direction_2/denominator_2;
					acc_matrix_y[i+1][j] = -G*y_direction_2/denominator_2;
					double denominator_3 = pow((sqrt((x_direction_3)*(x_direction_3) + (y_direction_3)*(y_direction_3))+epsilon_0),3);
					acc_matrix_x[i+2][j] = -G*x_direction_3/denominator_3;
					acc_matrix_y[i+2][j] = -G*y_direction_3/denominator_3;
					double denominator_4 = pow((sqrt((x_direction_4)*(x_direction_4) + (y_direction_4)*(y_direction_4))+epsilon_0),3);
					acc_matrix_x[i+3][j] = -G*x_direction_4/denominator_4;
					acc_matrix_y[i+3][j] = -G*y_direction_4/denominator_4;
					//printf("%lf \n" , acc_matrix_y[i][j]);
			}
			for ( i = i ; i<N ; i++){
				double x_direction_1 = arr[i][0] - arr[j][0];
				double y_direction_1 = arr[i][1] - arr[j][1];
				double denominator_1 = pow((sqrt((x_direction_1)*(x_direction_1) + (y_direction_1)*(y_direction_1))+epsilon_0),3);
				acc_matrix_x[i][j] = -G*x_direction_1/denominator_1;
				acc_matrix_y[i][j] = -G*y_direction_1/denominator_1;
			}

		}

		for (int i = 0 ; i < N ; i++){
			double total_acc_x = 0;
		  double total_acc_y = 0;
			for (int j = 0 ; j <= i ; j++){
				//printf("%lf \n" , acc_matrix_y[i][j]);
				total_acc_x = total_acc_x + arr[j][2]*acc_matrix_x[i][j];
				total_acc_y = total_acc_y + arr[j][2]*acc_matrix_y[i][j];
				//printf("First loop : %d\n" , j );
			}
			for (int j = i+1 ; j < N ; j++){
				total_acc_x = total_acc_x-arr[j][2]*acc_matrix_x[j][i];
				total_acc_y = total_acc_y-arr[j][2]*acc_matrix_y[j][i];
				//printf("Second loop : %d \n" , j);
			}
			//printf("N ::::___>>> %d \n" , N);
			arr[i][3] = arr[i][3] + delta_t*total_acc_x;
			arr[i][4] = arr[i][4] + delta_t*total_acc_y;
			arr[i][0] = arr[i][0] + delta_t*arr[i][3];
			arr[i][1] = arr[i][1] + delta_t*arr[i][4];
		}

	}


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
		free(acc_matrix_x[i]);
		free(acc_matrix_y[i]);
	}

	free(arr);
	free(acc_matrix_x);
	free(acc_matrix_y);


	clock_t end = clock();
	double time_spent = (double)(end - begin)/CLOCKS_PER_SEC;

	FILE *file3;
	file3 = fopen("time.txt" , "a+");
	fprintf(file3 , "%lf \n" , time_spent );
	fclose(file3);
	return 0;
}
