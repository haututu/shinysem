pathTab <- tabItem(tabName = "path",
                    # This fluid row contains the effect builder and plot boxes
                    fluidRow(
                      # Effect builder
                      box(
                        status = "primary",
                        title = "Effect builder",
                            # Still figuring out what UI element will be used to capture effects, a combination of dropdowns with a text stem updated to the left of it ?
                          box(
                            width=12,
                            effectBuilderUI("builder")
                          ),
                            # This will need to be a selectizeInput below and the selected options get populated as effects get added
                          box(
                            width=12,
                            selectizeInput("effects",
                                           "Effects in model",
                                           choices = c("M mediates X and Y",
                                                       "Y is the outcome"),
                                           multiple=TRUE,
                                           options=list(plugins=list('drag_drop','remove_button')))
                            )
                           
                        ),
                      
                      # Plot box and lavaan code  
                      tabBox(
                        title = "Model",
                        # I need to add code for the panel IDs so we can parse info to server
                        tabPanel("Plot", semPlotterUI("semPlotter")),
                        tabPanel("Code", "Tab content 2")
                        )
                      )
                    )
