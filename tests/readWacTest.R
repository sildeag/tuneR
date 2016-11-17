library("tuneR")
cwd <- getwd()
d <- list.files(file.path(cwd,"tests","Testfiles"), pattern="\\.wac$")
garbage <- lapply (d, 
    function(x) {
        #print (x)
        wac_file <- c(file.path(cwd,"tests","Testfiles", x))
        #print (wac_file)
        wav_file <- gsub("c", "v", wac_file)
        #print (wav_file)
        #cat(wav_file, "wav")
        if(.Platform$OS.type == "unix") {
          dyn.load(file.path(cwd,"src","wac2wav.so"))
          } else {
          dyn.load(file.path(cwd,"src-w64","tuneR.dll"))
        }
        convert_wac2wav(wac_file, wav_file, TRUE)
        }
 )