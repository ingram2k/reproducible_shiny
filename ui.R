library(shiny)

ui <- fluidPage(
    
    # App title ----
    titlePanel("Iris Data Set EDA"),
    
    # Sidebar layout with input and output definitions ----
    sidebarLayout(
        
        # Sidebar panel for inputs ----
        sidebarPanel(
            # Input: Selector for variable to plot against mpg ----
            tags$a(href = "readme.txt", "Instruction Link", target = "_blank"),
            selectInput("variable", "Variable:",
                        c("Sepal.Length" = "Sepal.Length",
                          "Sepal.Width" = "Sepal.Width",
                          "Petal.Length" = "Petal.Length",
                          "Petal.Width"  = "Petal.Width"
                        )),
            selectInput("species", "Species:",
                        c("setosa" = "setosa",
                          "versicolor" = "versicolor",
                          "virginica" = "virginica"
                        ))
        ),
        
        # Main panel for displaying outputs ----
        mainPanel(
            # Output: Formatted text for caption ----
            h3(textOutput("caption")),
            # Output: Plot of the requested variable ----
            plotOutput("Plot_Iris"),
            plotOutput("Scatter")
            
        )
    )
)

