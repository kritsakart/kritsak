library("shiny")

shinyUI(pageWithSidebar(
  headerPanel("Random generator"),
  
  sidebarPanel(
    sliderInput("min", "Min", 0, 100, 5, step = 1, round = TRUE),
    hr(),
    sliderInput("max", "Max", 0, 100, 95, step = 1, round = TRUE),
    hr(),
    checkboxInput("integer", "Generate integer values", value = TRUE),
    actionButton("button", "Generate", width = "100%")
  ),
  
  mainPanel(
    textOutput("text")
  )
))