# server.R
# library(shiny)
library(ggplot2)

ds<-mtcars

shinyServer(function(input, output) {
    dataset <- reactive({
        ds[input$carModel,]
    })
    output$plot <- renderPlot({
        p <- ggplot(dataset(), aes_string(x=input$x, y=input$y)) + geom_point()
        if (input$z != 'None') p <- p + aes_string(color=input$z)
        facets <- paste(input$facet_row, '~', input$facet_col)
        if (facets != '. ~ .') p <- p + facet_grid(facets)
        if (input$jitter) p <- p + geom_jitter()
        if (input$smooth) p <- p + geom_smooth()
        print(p)
    }, height=700)
})
### end of server.R
