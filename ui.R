# Developing Data Products - Coursera Course Project

# ui.R file for the shiny app

# This app will be used to select the best car for a trip based on the variables selected, and it uses the
# mtcars dataset, found within R 

library(markdown)

shinyUI(navbarPage("Selecting the car that best suits your trip requirements",
        tabPanel("Selected Car/s",
                   
        # Sidebar
        sidebarLayout(
            sidebarPanel(
                helpText("Provide the data regarding your trip and the car charachteristics you want"),
                numericInput('dis', 'Distance (In Miles):', 50, min = 1, max = 1000),
                numericInput('cost', 'Price of Gasoline   (Per Gallon):', 2.41, min = 2, max = 4, step=0.01),
                numericInput('gas', 'Maximum Expenditure on Gasoline:', 50, min=1, max=1000),
                checkboxGroupInput('cyl', 'Number of Cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=10),
                sliderInput('hp', 'Horsepower', min=50, max=340, value=c(50,340), step=10),
                checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1))
            ),
            
            mainPanel(
               dataTableOutput('table')
            )
        )
),
        tabPanel("Application Information",
            mainPanel(
                includeMarkdown("AppInfor.MD")
            )
        )
    )
)   
