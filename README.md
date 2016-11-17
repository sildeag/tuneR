# tuneR
:exclamation: This is a read-only mirror of the CRAN R package repository.  tuneR — Analysis of Music and Speech 

An additional functionality provides the ability to 'convert_wac2wav'.  This uses a C program written by ABMI.  

There may be an issue with loading the share library and the R code shows how to dynamically load for 64 bit Windows
and Ubuntu 16.04.

Updating to the latest version of tuneR

Make sure you have a working development environment.

Windows: Install Rtools.

Mac: Install Xcode from the Mac App Store.

Linux: Install a compiler and various development libraries (details vary across different flavors of Linux).

Install the development version of devtools.

devtools::install_github("sildeag/tuneR")

If that fails use https://github.com/sildeag/tuneR.git to empty folder and
then in R use:

source("folder name/R/convert_wac2wav.R")

The code has examples of dynamic load dyn.load
 
 ## for windows 10 64-bit environment
 
 source("C:/users/gordo/tuneR/R/convert_wac2wav.R")
 
 ## character vectors
 
 arg1 <- c("C:/users/gordo/tuneR/tests/Testfiles/test.wac")
 
 arg2 <- c("C:/users/gordo/tuneR/tests/Testfiles/test.wav")
 
 dyn.load("C:/users/gordo/tuneR/src-x64/tuneR.dll")

or

 ## for ubuntu 16.04 64-bit environment

 source("C:/users/gordo/tuneR/R/convert_wac2wav.R")

 arg1 <- c("/home/gordon/tuneR/tests/Testfiles/test.wac")

 arg2 <- c("/home/gordon/tuneR/tests/Testfiles/test.wav")

 dyn.load("/home/gordon/tuneR/src/wac2wav.so")

## both use

 .Call("wac2wav", wac_filename, wav_filename,PACKAGE="tuneR")


Note: be careful in moving accessing wac files in both unix and windows
at same time as EOF encoding may be slightly diffent.