# Developing Data Products- A Coursera Course Project

# This app was developed to help people choose the best car for their trip, 
# using mtcars dataset found in R

library(shiny)
library(datasets)
data("mtcars")
library(dplyr)

shinyServer(function(input, output) {

    # Show the cars that correspond to the selected variables
    output$table <- renderDataTable({
        disp_seq <- seq(from = input$disp[1], to = input$disp[2], by = 0.1)
        hp_seq <- seq(from = input$hp[1], to = input$hp[2], by = 1)
        data <- transmute(mtcars, Car_Name = rownames(mtcars), MilesPerGallon = mpg, 
                          Gas_Cost = (input$dis/mpg)*input$cost,
                          No._Cylinders = cyl, Displacement = disp, Horsepower = hp, 
                          Transmission = am)
        data <- filter(data, Gas_Cost <= input$gas, No._Cylinders %in% input$cyl, 
                       Displacement %in% disp_seq, Horsepower %in% hp_seq, Transmission %in% input$am)
        data <- mutate(data, Transmission = ifelse(Transmission==0, "Automatic", "Manual"))
        data <- arrange(data, Gas_Cost)
        data
    }, options = list(lengthMenu = c(5, 15, 30), pageLength = 30))
})