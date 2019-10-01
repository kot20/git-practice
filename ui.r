library(shiny)

fluidPage(
  titlePanel("This is the title fo my app"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      sliderInput("bins", #id for shiny
                  "Number of bins:", #what user sees
                  min = 1,
                  max = 50,
                  value = 30) #default value
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
 
  )
