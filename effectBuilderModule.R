
# UI elements to effect builder
effectBuilderUI <- function(id) {
  ns <- NS(id)
  fluidPage(
    fluidRow(
      p(strong("Effect builder"))
    ),
    fluidRow(
      uiOutput(ns("variables"), style = "display: inline-block;vertical-align:top;"),
      uiOutput(ns("effect_2"), style = "display: inline-block;vertical-align:top;padding-top: 5px;"),
      uiOutput(ns("effect"), style = "display: inline-block;vertical-align:top;"),
      uiOutput(ns("effect_4"), style = "display: inline-block;vertical-align:top;padding-top: 5px;"),
      uiOutput(ns("effect_5"), style = "display: inline-block;vertical-align:top;"),
      uiOutput(ns("effect_6"), style = "display: inline-block;vertical-align:top;padding-top: 5px;"),
      uiOutput(ns("outcome"), style = "display: inline-block;vertical-align:top;"),
      actionButton("add", "Add", style = "display: inline-block;vertical-align:top; float:right"),
      style = "padding: 0px 20px 0px 20px"
    ) 
  )
  }

# Server elements to effect builder
effectBuilder <- function(input, output, session) {
  
  ns <- session$ns
  
  output$variables <- renderUI({
    selectizeInput("variables",
                   NULL,
                   selected = "Variable",
                   choices = c("Variable" = "", "X", "Y", "Z")
                   )
    })
  
  output$effect_2 <- renderUI({
    p("is a")
    })
  
  output$effect <- renderUI({
    selectizeInput(ns("effect"),
                   NULL,
                   selected = "effect",
                   choices = c("effect"="", "mediator", "moderator", "latent variable")
                   )
    })
  
  output$effect_4 <- renderUI({
    p("between")
    })
  
  output$effect_5 <- renderUI({
    selectizeInput("predictor",
                   NULL,
                   selected = "predictor",
                   choices = c("predictor" = "", "X", "Y", "Z")
    )
    })
  
  output$effect_6 <- renderUI({
    p("and")
  })
  
  output$outcome <- renderUI({
    selectizeInput("outcome",
                   NULL,
                   selected = "outcome",
                   choices = c("outcome" = "", "X", "Y", "Z")
    )
  })
  
  # Example to show hide the inputs dynamically for effects
  # Note you need the ns() stuff as in effect_3
  #observe(shinyjs::toggle("effect_4", condition = input$effect != ""))
  }