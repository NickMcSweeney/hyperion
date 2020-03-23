# graph hyperion test data
set terminal png size 1200,1000
set output './graphs/raw_data_3.png'

set multiplot layout 2,1

set title 'position data'
plot './output/raw_data.dat' u 2:3, './output/filtered_data.dat' u 2:3

set title 'velocity data'
plot './output/raw_data.dat' u 4:5, './output/filtered_data.dat' u 4:5

unset multiplot
pause mouse close
