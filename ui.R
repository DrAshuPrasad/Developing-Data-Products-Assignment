library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Property Hunter"),
  sidebarPanel(
    textInput('text', 'Address', value=''),
    numericInput('price', 'Property Price ($)', 0),
    numericInput('weeklyRent', 'Weekly Rent ($)', 0)
  ),
  mainPanel(
    h3('Rental Yield'),
    code('some code'),
    verbatimTextOutput("rentalYield")
  )
))