# hyperion
rgb-d based people detection, tracking and prediction.

### Basic Info
this is build to run on Ubuntu 18 with ROS melodic.

to run on ROS kinetic/Ubuntu 16 edits would need to be made to the build files, particularly how the __eigen__ library is imported.

## Setup

### Bring in the data files.
go to `hyperion/hyperion` data and run `sh get_data.sh`. you will need to have `p7zip` installed (`sudo apt install p7zip`) to unzip the data file.

### build the ROS code
everything builds with `catkin_make`

## Run app
start ros: `roscore`

### Detection
start publishing people tracks by running `rosrun hyperion_detect hyperion_detect_node`

### Prediction
run a 30 second data collection and analysis with `rosrun hyperion_predict hyperion_predict_node`.

once the collection has run notes can be added to the file by answering the prompt. once this is done a evaluation file will be created.

## Evaluation
there is a evaluation file that gived a detailed output of prediction data and it's acuracy, both on a per trial basis and on average.
there is also a *gnuplot* script for creating plots of the data.
