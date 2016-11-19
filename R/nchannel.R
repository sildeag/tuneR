#' @export

setGeneric("nchannel",
function(object) standardGeneric("nchannel"))

#' @export

setMethod("nchannel", signature(object = "Wave"), 
function(object){
    object@stereo + 1
})

#' @export

setMethod("nchannel", signature(object = "WaveMC"), 
function(object){
    ncol(object)
})
