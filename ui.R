
library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Cars Dataset - Miles per Gallon"),
  
  sidebarPanel(
    
    selectInput("variable", "Variable:", 
                c("Cylinders" = "cyl",
                  "Transmission" = "am",
                  "Gears" = "gear"))
  ),
  
  mainPanel(
    # Output: Formatted text for caption ----
    h3(textOutput("caption")),
    
    # Output: Plot of the requested variable against mpg ----
    plotOutput("mpgPlot")
  )
))
