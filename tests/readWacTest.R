library("tuneR")
cwd <- getwd()
d <- list.files(file.path(cwd,"tests","Testfiles"), pattern="\\.wac$")
garbage <- lapply (d, 
    function(x) {
        wac_file <- c(file.path(cwd,"tests","Testfiles", x))
        
        wav_file <- gsub("c", "v", wac_file)
        
        #if(.Platform$OS.type == "unix") {
        #  dyn.load(file.path(cwd,"src","tuneR.so"))
        #  } else {
        #  dyn.load(file.path(cwd,"src","tuneR.dll"))
        #}
        convert_wac2wav(wac_file, wav_file, TRUE)
        }
 )
