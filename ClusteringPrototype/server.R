# server.R

shinyServer(function(input, output, session) {
  
  test <- data.frame()
  library(RColorBrewer)
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    test <- cars[, c(input$xcol, input$ycol)]
    #print(test)
    
  })
  
    
  clusters <- reactive({
    kmeans(selectedData(), input$clusters)
  })
  
# Tried qplot and ggplot but did not work  well 
#   output$plot1 <- renderPlot({
#     test3 <- selectedData()
#     print(head(test3))
#     par(mar = c(5.1, 4.1, 0, 1))
#     p <- qplot(test3$speed, test3$dist, data = test3,colour = clusters()$cluster, xlab = "speed", ylab = "dist")
#         
#   })

  output$plot1 <- renderPlot({
    par(mar = c(5.1, 4.1, 0, 1))
    #palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
    #         "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
    #palette(rainbow(7))
    #hsv(h = 0.5, s = 0.5, v = 0.5)
    colorRampPalette(c("blue", "red"))( 4) 
    plot(selectedData(),
         col = clusters()$cluster,
         pch = 20, cex = 3)
    points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
  })


  
})