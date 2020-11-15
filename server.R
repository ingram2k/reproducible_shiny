#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

Data <- iris

# Define server logic to plot various variables against mpg ----
server <- function(input, output) {
    
    formulaText <- reactive({
        paste(input$variable," ~ Species")
    })
    
    # Return the formula text for printing as a caption ----
    output$caption <- renderText({
        formulaText()
    })
    
    output$Plot_Iris <- renderPlot({
        plot(as.formula(formulaText()),
             data = Data,
             col = "#75AADB", pch = 19)
        
        
    })
    
    
    output$Scatter <- renderPlot({
        plot(Sepal.Length~Sepal.Width,data= subset(iris,Species == input$species)
             ,main = paste("Scatter Plot ",input$species)
        )
    })
}


