# graph hyperion test data
set terminal qt size 1200,1000

set multiplot layout 2,1
set title 'predictions for person 9315400'
plot './output/filtered_data.dat' u ($1 == 9315400 ? $2 : 1/0):3 title 'true data', \
	'./output/predict_5.log' u ($1 == 9315400 ? $2 : 1/0):3 title 'predictions @ 5 seconds', \
	'./output/predict_10.log' u ($1 == 9315400 ? $2 : 1/0):3 title 'predictions @ 10 seconds', \
	'./output/predict_15.log' u ($1 == 9315400 ? $2 : 1/0):3 title 'predictions @ 15 seconds', \
	'./output/predict_20.log' u ($1 == 9315400 ? $2 : 1/0):3 title 'predictions @ 20 seconds', \

set title 'predictions for person 9330400'
plot './output/filtered_data.dat' u ($1 == 9330400 ? $2 : 1/0):3 title 'true data', \
	'./output/predict_5.log' u ($1 == 9330400 ? $2 : 1/0):3 title 'predictions @ 5 seconds', \
	'./output/predict_10.log' u ($1 == 9330400 ? $2 : 1/0):3 title 'predictions @ 10 seconds', \
	'./output/predict_15.log' u ($1 == 9330400 ? $2 : 1/0):3 title 'predictions @ 15 seconds', \
	'./output/predict_20.log' u ($1 == 9330400 ? $2 : 1/0):3 title 'predictions @ 20 seconds', \


unset multiplot
pause mouse close
