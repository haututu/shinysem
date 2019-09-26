
# UI elements to effect builder
effectBuilderUI <- function(id) {
  ns <- NS(id)
  fluidRow(
    column(width = 2,
           uiOutput(ns("effect_1"))),
    column(width = 2,
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
  output$effect_1 <- renderUI({
    p("a")
  })
  
  output$effect_2 <- renderUI({
    p("b")
  })
  
  output$effect_3 <- renderUI({
    p("c")
  })
  
  output$effect_4 <- renderUI({
    p("d")
  })
  
  output$effect_5 <- renderUI({
    p("e")
  })