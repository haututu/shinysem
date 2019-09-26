
# UI elements to effect builder
effectBuilderUI <- function(id) {
  ns <- NS(id)
  fluidRow(
    column(width = 2,
           uiOutput(ns("variables"))),
    column(width = 1,
           uiOutput(ns("effect_2"))),
    column(width = 2,
           uiOutput(ns("effect_3"))),
    column(width = 2,
           uiOutput(ns("effect_4"))),
    column(width = 2,
           uiOutput(ns("effect_5"))),
    column(width = 2,
           actionButton("add", "Add"))
    )
  }

# Server elements to effect builder
effectBuilder <- function(input, output, session) {
  output$variables <- renderUI({
    selectizeInput("variables",
                   NULL,
                   selected = "Variable",
                   choices = c("Variable" = "", "X", "Y", "Z")
                   )
    })
  
  output$effect_2 <- renderUI({
    p(" is a ")
    })
  
  output$effect_3 <- renderUI({
    selectizeInput("effect",
                   NULL,
                   choices = c("mediator", "moderator", "latent variable")
                   )
    })
  
  output$effect_4 <- renderUI({
    p("d")
    })
  
  output$effect_5 <- renderUI({
    p("e")
    })
  }