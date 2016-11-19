#' @export

convert_folder_wac2wav <- function(wac_files_path) {
  if (!is.null(wac_files_path)) 
    dir.create(file.path(wac_files_path), showWarnings = FALSE)
  setwd(file.path(mainDir, subDir))
  cwd <- getwd()
  d <- list.files(file.path(cwd), pattern="\\.wac$")
  garbage <- lapply (d, 
    function(x) {
        wac_file <- c(file.path(cwd, x))
        
        wav_file <- gsub("c$", "v", wac_file)
        
        convert_wac2wav(wac_file, wav_file, TRUE)
        }
  )
}