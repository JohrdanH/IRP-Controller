# Inverted Rotary Pendulum

## Overview

Welcome to the "Inverted Rotary Pendulum" GitHub repository! This project focuses on implementing a State Space feedback controller to stabilize an inverted Rotary Pendulum around its upward position using Arduino. Additionally, the repository includes a simulation of the inverted rotary pendulum with the controller in Simulink and code to estimate the parameters of the DC motor.

## Contents

1. [Arduino Code](#arduino-code)
2. [Simulink Simulation](#simulink-simulation)
3. [DC Motor Parameter Estimation](#dc-motor-parameter-estimation)

## Arduino Code

The `SS_Feedback_Controller` directory contains the source code written in Arduino for implementing the State Space feedback controller. The controller is designed to stabilize the inverted Rotary Pendulum, maintaining its equilibrium position.

### Instructions

To run the Arduino code:
1. Open the Arduino IDE.
2. Create a new project.
3. Copy and paste the code from the `SS_Feedback_Controller` directory into the Arduino IDE.
4. Connect your Teensy 4.0 board and upload the code.

## Simulink Simulation

The `SimulinkSimulation` directory includes a Simulink model for simulating the behavior of the inverted rotary pendulum with the implemented State Space feedback controller. This simulation provides insights into the system's dynamics and the controller's effectiveness.

### Instructions

To run the Simulink simulation:
1. Open MATLAB and navigate to the `Simulation of IRP Control` directory.
2. Open the Simulink model file using the instructions given in the Readme file.
3. Run the simulation to visualize the behavior of the inverted rotary pendulum under the State Space feedback control.

## DC Motor Parameter Estimation

In the `Estimation of DC Motor Parameters` directory, you will find code related to the estimation of DC motor parameters. Accurate motor parameters are crucial for the proper functioning of the feedback controller. This code helps in identifying and setting the necessary motor parameters.

### Instructions

To estimate DC motor parameters:
1. Navigate to the `Estimation of DC Motor Parameters` directory.
2. Run the parameter estimation code using the instructions given in the Readme file to determine the DC motor parameters.

## Contributing

If you find any issues or have suggestions for improvements, feel free to contribute! Fork the repository, make your changes, and submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE), allowing for open collaboration and sharing.

Feel free to explore the project, learn from it, and adapt it to your needs. Happy coding! 🚀
