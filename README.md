# tuneR
:exclamation: This is a read-only mirror of the CRAN R package repository.  tuneR — Analysis of Music and Speech 

An additional functionality provides the ability to 'convert_wac2wav'.  This uses a C program written by ABMI.  

There may be an issue with loading the share library depending on
operating environment and whether it is 64 bit or 32 bit.

The R code shown below shows how to dynamically load for 64 bit Windows
and Ubuntu 16.04 64 bit.

Update to the latest version of tuneR

It might help to have a working development environment and these instructions might
get you started:

Windows: Install Rtools.

Mac: Install Xcode from the Mac App Store.

Linux: Install a compiler and various development libraries (details vary across different flavors of Linux).

Install package devtools.

Then install the development version of tuneR.

devtools::install_github("sildeag/tuneR")

18/11/2016 changed to add roxygen2 export and dynamic calls


If that fails either clone https://github.com/sildeag/tuneR.git to empty folder: 'folder name' and then in R use:

source("'folder name'/R/convert_wac2wav.R")

The git repository has examples of dynamic load dyn.load
 
## for windows 10 64-bit environment

wac_filename <- c("C:/users/sildeag/tuneR/tests/Testfiles/test.wac")
 
wav_filename <- c("C:/users/sildeag/tuneR/tests/Testfiles/test.wav")
 
convert_wac2wav(wac_filename,wav_filename)

or

## for ubuntu 16.04 64-bit environment

 
wac_filename <- c("/home/sildeag/tuneR/tests/Testfiles/test.wac")

wav_filename <- c("/home/sildeag/tuneR/tests/Testfiles/test.wav")

convert_wac2wav(wac_filename,wav_filename)

Note: be careful in accessing the 'binary' wac files in both unix and windows
at same time as EOF encoding may be slightly different.

In order to convert all wac files in a folder follow the test example given in:

'folder name'/tuneR/tests/readWacTest.R

this uses 'folder name'/tuneR/tests/Testfiles

or try convert_folder_wac2wav(wac_folder)

Note: whether the operating environment is 32-bit/64-bit or windows or unix makes a difference to the shared library.