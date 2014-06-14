library(shiny)
shinyServer(
  function(input, output){
    output$rentalYield <- renderPrint({ calculateRentalYield(input$weeklyRent, input$price) })
  }
)

calculateRentalYield <- function (weeklyRent, propertyPrice) 
{
  weeklyRent * 52 / propertyPrice * 100
}