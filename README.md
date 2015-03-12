# AndroidNativeLauncher
An Android application which allows to execute native program.

## Benifits
* Do not require ROOT permission. Enabling native program execution on non-rooted devices.
* Allows to run native code without USB cable and ADB. This is very important for some special purpose, for example, if we want to measure power consumption of the devices when running the native code, we don't want to connect USB cable which will provide power to the device.

## Features
* Support load native program from sdcard.
* Support command line arguments.
* Allow the user to set up LD_LIBRARY_PATH.
* Support subfolders. Input files and configurations loaded by the native program can be put in subfolders, in the native program, use relative path to access them.
* Support output files.
* 

## Screenshot
![alt tag](https://github.com/robertwgh/AndroidNativeLauncher/blob/master/screenshot/test1.png)
