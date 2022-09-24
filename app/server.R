library(shiny)

shinyServer(function(input, output){
    
    ## This timer keeps the server/client connection alive
    start.time <- Sys.time()
    output$clock <- renderText({
        invalidateLater(1000)
        dsec <- difftime(Sys.time(), start.time, units = "secs")[[1]] 
        paste("Elapsed time:",round(dsec,digits=0),"seconds")
    })
    
})
