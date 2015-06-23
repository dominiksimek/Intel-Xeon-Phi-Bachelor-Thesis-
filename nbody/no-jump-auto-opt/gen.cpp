/**
* @file gen.cpp
* 
* N-Body Simuluation - Particles system
* Generate input file for particles simulation
* 
* Format:
*       pos_x pos_y pos_z vel_x vel_y vel_z weight
*
* Bachelor Thesis FIT VUT 2015
*
* @author: Dominik Simek <xsimek23@stud.fit.vutbr.cz>
*/

#include <cstdlib>
#include <cstdio>
#include <cfloat>
#include <ctime>

/**
* Generate "random" float
*/
float randf()
{
	float a = (float)rand() / (float)RAND_MAX;

	if (a == 0.0f)
		a = FLT_MIN;

	return a;
}

/**
* Main function
*/
int main(int argc, char **argv)
{
    int N;
    FILE *fp;

    srand(time(NULL));

    if (argc != 3)
    {
        fprintf(stderr, "Usage: ./gen N <output>\n");
        return EXIT_FAILURE;
    }

    N = atoi(argv[1]);

    // print parameters
    printf("N: %d\n", N);

    // write particles to file
    fp = fopen(argv[2], "w");
    if (fp == NULL)
    {
        fprintf(stderr, "Can't open output file %s!\n", argv[2]);
        return EXIT_FAILURE;
    }

    // generate input file
    for (unsigned i = 0; i < N; i++)
    {
        fprintf(fp, "%10.4f %10.4f %10.4f %10.4f %10.4f %10.4f %10.4f \n",
            randf() * 100.0f,
            randf() * 100.0f,
            randf() * 100.0f,
            randf() * 4.0 - 2.0f,
            randf() * 4.0 - 2.0f,
            randf() * 4.0 - 2.0f,
            randf() * 25000.0f);
    }

    fclose(fp);

    return EXIT_SUCCESS;
}
