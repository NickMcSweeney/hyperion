import tensorflow as tf

#import matplotlib as mpl
#import matplotlib.pyplot as plt
import numpy as np
import os
#import pandas as pd


model_path = '/home/usernamix/Workspace/src/hyperion/hyperion_python/model'
new_model = tf.keras.models.load_model(model_path)

# Evaluate the restored model
#out = new_model.evaluate(val_data_single, verbose=2, steps=50)

new_model.summary()


def predict(datavector):
	prediction = new_model.predict(datavector)
	return prediction[-1]

x = [[[1,1,1,0,0], [1.1,1.1,1,0,0], [1.2,1.2,1,0,0],[1.3,1.3,1,0,0],[1.4,1.4,1,0,0],
		[1.5,1.5,1,0,0],[1.6,1.6,1,0,0], [1.7,1.7,1,0,0],[1.8,1.8,1,0,0],[1.9,1.9,1,0,0]]]
y = [[0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0]]
test_data = tf.data.Dataset.from_tensor_slices((x))
test_data = test_data.batch(1).repeat()
for val, ind in test_data.take(1):
	print(predict(val))
	print(ind)

