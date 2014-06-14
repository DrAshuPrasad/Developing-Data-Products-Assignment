library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Property Hunter"),
  sidebarPanel(
    h4('Property'),
    textInput('text', 'Address', value=''),
    numericInput('price', 'Price ($)', 550000),
    numericInput('weeklyRent', 'Weekly Rent ($)', 550),
    h5('Costs'),
    numericInput('weeklyRepayments', 'Weekly Repayments ($ per week)', 503),
    numericInput('strataPerQuarter', 'Strata ($ per quarter)', 1050),
    numericInput('councilPerQuarter', 'Council ($ per quarter)', 163),
    numericInput('waterPerQuarter', 'Water ($ per quarter)', 180),
    numericInput('managementFees', 'Management Fees ($ per week)', 38)
  ),
  mainPanel(
    h4('Rental Yield (%)'),
    textOutput("rentalYield"),
    h4('Cashflow Per Week ($)'),
    textOutput("cashflowPerWeek"),
    h4('Cashflow Per Year ($)'),
    textOutput("cashflowPerYear")
  )
))