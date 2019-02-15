#!/bin/sh

rm time.txt
for i in 1 2 3 4 5 6 7 8 9 10
do
./galaxy_opt_mass_lf_lun 10 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 10 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 10 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 10 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 10 ellipse_N_03000.gal 200 0.00001 0

./galaxy_opt_mass_lf_lun 10 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 10 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 10 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 10 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 10 ellipse_N_03000.gal 200 0.00001 0
echo "Loop number $i is finished"
done
echo N=10:
python get_mean_std.py
rm time.txt

for i in 1 2 3 4 5 6 7 8 9 10
do
./galaxy_opt_mass_lf_lun 30 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 30 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 30 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 30 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 30 ellipse_N_03000.gal 200 0.00001 0

./galaxy_opt_mass_lf_lun 30 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 30 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 30 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 30 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 30 ellipse_N_03000.gal 200 0.00001 0
echo "Loop number $i is finished"
done

echo N=30:
python get_mean_std.py
rm time.txt

for i in 1 2 3 4 5 6 7 8 9 10
do
./galaxy_opt_mass_lf_lun 100 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 100 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 100 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 100 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 100 ellipse_N_03000.gal 200 0.00001 0

./galaxy_opt_mass_lf_lun 100 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 100 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 100 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 100 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 100 ellipse_N_03000.gal 200 0.00001 0
echo "Loop number $i is finished"
done

echo N=100:
python get_mean_std.py
rm time.txt

for i in 1 2 3 4 5 6 7 8 9 10
do
./galaxy_opt_mass_lf_lun 300 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 300 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 300 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 300 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 300 ellipse_N_03000.gal 200 0.00001 0

./galaxy_opt_mass_lf_lun 300 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 300 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 300 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 300 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 300 ellipse_N_03000.gal 200 0.00001 0
echo "Loop number $i is finished"
done
echo N=300
python get_mean_std.py
rm time.txt

for i in 1 2 3 4 5 6 7 8 9 10
do
./galaxy_opt_mass_lf_lun 1000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 1000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 1000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 1000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 1000 ellipse_N_03000.gal 200 0.00001 0

./galaxy_opt_mass_lf_lun 1000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 1000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 1000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 1000 ellipse_N_03000.gal 200 0.00001 0
./galaxy_opt_mass_lf_lun 1000 ellipse_N_03000.gal 200 0.00001 0
echo "Loop number $i is finished"
done
echo N=1000
python get_mean_std.py
