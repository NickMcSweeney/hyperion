
set terminal qt size 1200,1000


set title 'predictions'
plot './output/measure.log' u 2:3:6, \
       './output/predict_5.log' u 2:3,\
       './output/predict_6.log' u 2:3,\
       './output/predict_7.log' u 2:3,\
       './output/predict_8.log' u 2:3,\
       './output/predict_9.log' u 2:3,\
       './output/predict_10.log' u 2:3,\
       './output/predict_11.log' u 2:3,\
       './output/predict_12.log' u 2:3,\
       './output/predict_13.log' u 2:3,\
       './output/predict_14.log' u 2:3,\
       './output/predict_15.log' u 2:3,\
       './output/predict_16.log' u 2:3,\
       './output/predict_17.log' u 2:3,\
       './output/predict_18.log' u 2:3,\
       './output/predict_19.log' u 2:3,\
       './output/predict_20.log' u 2:3,\
       './output/predict_21.log' u 2:3,\
       './output/predict_22.log' u 2:3,\
       './output/predict_23.log' u 2:3,\
       './output/predict_24.log' u 2:3,\
       './output/predict_25.log' u 2:3


pause mouse close
