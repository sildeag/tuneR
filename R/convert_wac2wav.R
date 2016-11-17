convert_wac2wav <- 
function(wac_filename, wav_filename, overwrite = FALSE){
    if(!is.character(wac_filename))
        stop("'wac_filename' must be of type character.")
    if(!is.character(wav_filename))
        stop("'wav_filename' must be of type character.")
    if(length(wac_filename) < 1)
        stop("Please specify 'wac_filename'.")
    if(length(wav_filename) < 1)
        stop("Please specify 'wav_filename'.")
    if(!file.exists(wac_filename))
        stop("File '", wac_filename, "' does not exist.")
    if(file.access(wac_filename, 4))
        stop("No read permission for file ", wac_filename)
    # tests to determine whether or not to overwrite 
    if(file.exists(wav_filename) && overwrite == FALSE)
        stop("Cannot overwrite existing file ", wav_filename)
    if(file.exists(wav_filename) && overwrite == TRUE &&
       file.access(wav_filename, 2) != 0)
        stop("No write permission for file ", wav_filename)
  ## for windows 10 64-bit environment
  ## source("C:/users/gordo/tuneR/R/convert_wac2wav.R")
  ## arg1 <- c("C:/users/gordo/tuneR/tests/Testfiles/test.wac")
  ## arg2 <- c("C:/users/gordo/tuneR/tests/Testfiles/test.wav")
  ##  dyn.load("C:/users/gordo/tuneR/src-x64/tuneR.dll")
    
  ## for ubuntu 16.04 64-bit environment
  ## source("C:/users/gordo/tuneR/R/convert_wac2wav.R")
  ## arg1 <- c("/home/gordon/tuneR/tests/Testfiles/test.wac")
  ## arg2 <- c("/home/gordon/tuneR/tests/Testfiles/test.wav")
  ## dyn.load("/home/gordon/tuneR/src/wac2wav.so")
    .Call("wac2wav", wac_filename, wav_filename,PACKAGE="tuneR")
}
