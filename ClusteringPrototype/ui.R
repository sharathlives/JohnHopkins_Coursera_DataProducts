shinyUI(pageWithSidebar(
  headerPanel('Cars k-means clustering'),
  sidebarPanel(
    helpText("First, choose the variables you want to plot in the X and Y axes. Then choose the number of clusters  
             based on the number of segments in the cars dataset"),
    selectInput('xcol', 'X Variable', names(cars)),
    selectInput('ycol', 'Y Variable', names(cars),
                selected=names(cars)[[2]]),
    selectInput('clusters', label = "Number of Clusters", choices = list("1" = 1, "2" = 2,
                                                            "3" = 3), selected = "2")
     ),
  mainPanel(
    plotOutput('plot1')
  )
))