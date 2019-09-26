
# Plots the model
# Should eventually listen to the selectize in effect builder and update every time it changes
semPlotterUI <- function(id) {
  ns <- NS(id)
  plotOutput(ns("semPlotter"))
}

semPlotter <- function(input, output, session) {
  
  ns <- session$ns
  
  # This should perhaps be in openMX, more flexible.
  output$semPlotter <- renderPlot({
    test.fit <- lavaan::sem("y ~ x + m + mod:x
            m ~ x",
                            data = data.frame(x = rnorm(10), m = rnorm(10), y = rnorm(10), mod = rnorm(10)))
    
    semPlot::semPaths(
      test.fit,
      node.width = 2,
      node.height = 2
    )
    
  })
  
}
