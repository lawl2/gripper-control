# Development of a bidirectional communication system for controlling a 3D-printed robotic gripper


The aim of the project is to control the gripper hand developped by the SIRSlab of University of Siena.
![7Releasing](https://github.com/lawl2/gripper-control/assets/105045290/a6eedaed-7d34-46ba-bf45-70afe0edc7cd)

![02OpenHandClosing](https://github.com/lawl2/gripper-control/assets/105045290/e18afdae-4b6b-49b5-b64c-a85f227b8e72)

![2CloseTorqueMode](https://github.com/lawl2/gripper-control/assets/105045290/5a24151e-b575-4e73-bd7e-e6d35b1c6e61)
![01OpenHandClosing](https://github.com/lawl2/gripper-control/assets/105045290/daeef735-91ec-4a23-a794-c692087ad140)

![1ClosingFirstContact](https://github.com/lawl2/gripper-control/assets/105045290/8a0a2506-e566-4e91-a68f-cc677438fcc4)

![0OpenHand](https://github.com/lawl2/gripper-control/assets/105045290/88d35574-2a64-4fae-bc6e-ffc952f4298a)

## Reading data from 3D Gripper Hand

![xctuLayout](https://github.com/lawl2/gripper-control/assets/105045290/9d1b09ed-b615-4f4f-991a-7f635111c816)

In the first part of the project there's the opening and setting of serial communication, reading and consecutive recognition of the pressed button.
Then the data is written and there's the calculation of the mechanical moment to plan the make the grab.

![serialReadText](https://github.com/lawl2/gripper-control/assets/105045290/335e9a17-53de-49d5-9746-935c9b993dbb)

## 3D gripper control

![GUIOpen](https://github.com/lawl2/gripper-control/assets/105045290/f77ad7db-d10b-4b65-a81e-0a67ecdc6c15)

Creation of a GUI using GUIDE, creation of fucntions to open or close serial communication using an Xbee module and creation of functions to control the robotic hand. Finally there's the generation of the graph showing the torque of the gripper.

![torque](https://github.com/lawl2/gripper-control/assets/105045290/e7560969-a34e-4d54-a02b-c62fcee061aa)
