library(shiny)

function(input, output) {
  
  output$distPlot <- renderPlot({
    
    x <- faithful[,2]
    bin <- seq(min(x), max(x), length.out = input$bins + 1)
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  
}