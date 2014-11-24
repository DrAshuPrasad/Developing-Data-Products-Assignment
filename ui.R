# ui.R
# library(shiny)
library(ggplot2)

ds<-mtcars

shinyUI(pageWithSidebar(
    headerPanel("Data Exploration Tool (mtcars dataset)")
    , sidebarPanel(
        selectInput('x', 'X-axis Parameter (choose one)', names(ds), names(ds)[[2]])
        , selectInput('y', 'Y-axis Parameter (choose one)', names(ds), names(ds)[[1]])
        , selectInput('z', 'Third Parameter (optional)', c('None', names(ds)), selected = NULL)
        , checkboxInput('jitter', 'Jitter (optional)')
        , checkboxInput('smooth', 'Smooth (optional)')
        , selectInput('facet_row', 'Row Facet (optional)', c(None='.', names(ds)))
        , selectInput('facet_col', 'Column Facet (optional)', c(None='.', names(ds)))
        , checkboxGroupInput("carModel", "Car Model (choose one or more)", choices = rownames(ds), selected = c(rownames(ds)))
    )
    , mainPanel(
	h3('Choose variables on the left, and see their relationship below.\n')
	, plotOutput('plot')
      )
))
### end of ui.R