# Android Native Launcher
An Android application which allows to execute native program.

## Screenshot
<img src="https://raw.githubusercontent.com/robertwgh/AndroidNativeLauncher/master/screenshot/test1.png?raw=true" alt="NativeLauncher screenshot" height="400"/>

## Benifits
* Do not require ROOT permission. Enabling native program execution on non-rooted devices.
* Allows to run native code without USB cable and ADB. This is very important for some special purpose, for example, if we want to measure power consumption of the devices when running the native code, we don't want to connect USB cable which will provide power to the device.
* Help debug native code before porting it using JNI code in an Android app.

## Features
* Support loading native program from sdcard.
* Support command line arguments.
* Allow the user to set up `LD_LIBRARY_PATH`.
* Support subfolders. Input files and configurations loaded by the native program can be put in subfolders, in the native program, use relative path to access them.
* Support output files. Output files can be retrieved from the working directory.

## Install
* Install is simple. Download the apk file under `android_apk`, and install it on your Android device. Then you are good to go.

## Instructions
  1. Copy your native program (compiled by `ndk-build`) in a folder on your sdcard, e.g. `/sdcard/test/`.
  2. Copy all dependent shared libraries (.so) to that folder.
  3. Copy input files to the same folder.
  4. Press the button "Load native program".
  5. Set command line arguments if there is any.
  6. Press button "Run" to execute the program.
  7. Check results under your folder, such as `/sdcard/test/`.
        
## FAQ
1. Q: Where is the working directory?
  * A: The working directory is the directory the executable located.
2. Q: How to set `LD_LIBRARY_PATH`? What is the library loading order?
  * A: In the textedit field, type your custom library path. Please notice that, your working directory will be added to `LD_LIBRARY_PATH` automatically. For example, if you type "`mylib`" in the field, the `LD_LIBRARY_PATH` will be set as `LD_LIBRARY_PATH=mypath:working_directory:$LD_LIBRARY_PATH.`
3. Q: How to use subfolder?
  * A: Subfolder can be accessed via relative path. For example, if we have a folder named "`image`" in working directory containing an input image "`lena.png`", in your code, you can access it via `image/lena.png`. Your output files will also be under the working directory.

## Examples
Two examples are provided to demonstrate the usage of native program launcher. Pre-compiled binaries are provided under `bin` folder. But you can also compile them using ndk-bulid.

1. Compile the examples with Android NDK: 
  1. Have ndk installed and ndk-build is in the system path.
  2. in shell, run `./build_examples.sh`. Then you have the binareis in bin folder
  ```
  $ cd examples
  $ ./build_examples.sh
  ```
2. example1 shows basic usage, and command line arguments. You can set up command line arguments, and they will be displayed one by one. 
3. example2 shows the case where we have executable file along with shared library.

