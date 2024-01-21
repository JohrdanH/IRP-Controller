This files are used to estimate the DC Motor parameters
using the Parameter Estimator App of MATLAB.

For this, I used the Teensy 4.0 and an Excel macro (https://www.parallax.com/package/plx-daq/)
to read the DC motor speed during 10 seconds
with a sample period of 10 ms. With the macro,
you get a table of time, speed and voltage that
is introduced in the Parameter Estimator App
to estimate the DC motor Parameters.