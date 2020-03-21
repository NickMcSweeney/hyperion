# graph hyperion test data
set terminal qt size 1200,1000

set multiplot layout 2,1
set title 'average position error'
#f(x) = m*x+b
#fit f(x) './output/data_analysis.dat' u 2:3 via m,b
plot './output/data_analysis.dat' u ($2 == 1 ? $1-0.2 : 1/0):3:4 w yerrorbars title '1 seconds', \
	'./output/data_analysis.dat' u ($2 == 2 ? $1-0.1 : 1/0):3:4 w yerrorbars title '2 seconds', \
	'./output/data_analysis.dat' u ($2 == 3 ? $1 : 1/0):3:4 w yerrorbars title '3 seconds', \
	'./output/data_analysis.dat' u ($2 == 5 ? $1+0.1 : 1/0):3:4 w yerrorbars title '5 seconds', \
	'./output/data_analysis.dat' u ($2 == 8 ? $1+0.2 : 1/0):3:4 w yerrorbars title '8 seconds'

set title 'average trajectory error'
plot './output/data_analysis.dat' u ($2 == 1 ? $1-0.2 : 1/0):5:6 w yerrorbars title '1 seconds', \
	'./output/data_analysis.dat' u ($2 == 2 ? $1-0.1 : 1/0):5:6 w yerrorbars title '2 seconds', \
	'./output/data_analysis.dat' u ($2 == 3 ? $1 : 1/0):5:6 w yerrorbars title '3 seconds', \
	'./output/data_analysis.dat' u ($2 == 5 ? $1+0.1 : 1/0):5:6 w yerrorbars title '5 seconds', \
	'./output/data_analysis.dat' u ($2 == 8 ? $1+0.2 : 1/0):5:6 w yerrorbars title '8 seconds'


unset multiplot

pause mouse close
