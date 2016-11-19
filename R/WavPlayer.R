#' @export

setWavPlayer <- function(player){
    options(WavPlayer = player)
}

#' @export

getWavPlayer <- function(){
    options("WavPlayer")$WavPlayer
}
