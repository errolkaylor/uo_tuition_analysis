#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("UO Costs and Tuition Data"),
    #eventually use to choose what school to select for
    #selectInput
        # Show a plot of the generated distribution
    plotOutput("plot",click = "plot_click"),
    plotOutput("plot2",click = "plot_click"),
    dataTableOutput("dynamic")
    )


# Define server logic required to draw a histogram
server <- function(input, output) {
  output$plot <- renderPlot(p1,res=96)
  output$plot2 <- renderPlot(p2,res=96)
  output$dynamic <- renderDataTable(tuition_collected, options = list(pageLength=5))
}

# Run the application 
shinyApp(ui = ui, server = server)
