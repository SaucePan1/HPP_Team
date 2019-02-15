#!/bin/sh
#-ﬀast-math

rm time.txt
gcc -O3 -march=native -o galaxy_without_graphics galaxy_without_graphics.c

./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0

./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_without_graphics 3000 ellipse_N_03000.gal 200 0.00001 0

mv time.txt time_no_opt.txt

echo finished no opt execution

gcc -Wall -O3 -march=native -o galaxy_opt_mass galaxy_without_graphics_optimized_mass.c

./galaxy_opt_mass 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass 3000 ellipse_N_03000.gal 200 0.00001 0

./galaxy_opt_mass 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass 3000 ellipse_N_03000.gal 200 0.00001 0

mv time.txt time_mass_opt.txt
echo finished opt mass execution

gcc -Wall -O3 -march=native -o galaxy_opt_mass_lf galaxy_without_graphics_optimized_mass_loop_fusion.c

./galaxy_opt_mass_lf 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf 3000 ellipse_N_03000.gal 200 0.00001 0

./galaxy_opt_mass_lf 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf 3000 ellipse_N_03000.gal 200 0.00001 0

mv time.txt time_mass_lf_opt.txt
echo finished opt mass_lf execution

gcc -Wall -O3 -march=native -o galaxy_opt_mass_lf_lun galaxy_without_graphics_optimized_mass_loop_unroll.c

./galaxy_opt_mass_lf_lun 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 3000 ellipse_N_03000.gal 200 0.00001 0

./galaxy_opt_mass_lf_lun 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 3000 ellipse_N_03000.gal 200 0.00001 0

mv time.txt time_mass_lf_lun_opt.txt
echo finished opt mass_lf_lun execution

gcc -Wall -O3 -march=native -o galaxy_opt_mass_lf_lun_res galaxy_without_graphics_optimized_mass_loop_unroll_restrict.c

./galaxy_opt_mass_lf_lun_res 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun_res 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun_res 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun_res 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun_res 3000 ellipse_N_03000.gal 200 0.00001 0

./galaxy_opt_mass_lf_lun_res 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun_res 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun_res 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun_res 3000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun_res 3000 ellipse_N_03000.gal 200 0.00001 0

mv time.txt time_mass_lf_lun_res_opt.txt
echo finished opt mass_lf_lun_res execution
