library(shiny)

shinyUI(
    fluidPage(
        div( textOutput("clock"), style='font-size:100px;')
    )
)
