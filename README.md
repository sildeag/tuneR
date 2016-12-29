## tuneR

## About

This is a read-only mirror of the CRAN R package repository tuneR: Analysis of Music and Speech. 

## Additional functionality

An additional functionality provides the ability to 'convert_wac2wav'.  This uses a C program written by ABMI.  

## Install

It might help to have a working development environment and these instructions might get you started:

Windows: Install Rtools.

Mac: Install Xcode from the Mac App Store.

Linux: Install a compiler and various development libraries (details vary across different flavors of Linux).

Install package devtools.

Then install the development version of tuneR.


###`devtools::install_github("sildeag/tuneR")`



18/11/2016 changed to add roxygen2 export and dynamic calls

20/11/2016 fixed fopen for Windows 10 for wac2wav binary conversions

 
for windows 10 64-bit environment

`wac_filename <- c("C:/users/sildeag/tuneR/tests/Testfiles/test.wac")`
 
`wav_filename <- c("C:/users/sildeag/tuneR/tests/Testfiles/test.wav")`
 
`convert_wac2wav(wac_filename,wav_filename)`

or

for ubuntu 16.04 64-bit environment

 
`wac_filename <- c("/home/sildeag/tuneR/tests/Testfiles/test.wac")`

`wav_filename <- c("/home/sildeag/tuneR/tests/Testfiles/test.wav")`

`convert_wac2wav(wac_filename,wav_filename)`


### to convert all wac files in a folder 

On Windows

`convert_folder_wac2wav('C:/users/sildeag/Downloads')`

###console output:

<p>Blocksize 32</p>
<p>Samplerate 44100</p>
<p>Samplecount 7938048</p>
<p>Seeksize 16</p>
<p>Seekentries 8192</p>

<p>Processing: testxyz2 .............................................................Done.</p>


###Note: whether the operating environment is 32-bit/64-bit or windows or unix makes a difference to the shared library.