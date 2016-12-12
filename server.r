random <- function(min, max, integer){
  if(min > max){
    return ("The min value must be less than the max value")
  }
  value <- 0
  
  if(min == max){
    value <- min
  }
  
  if(integer == TRUE){
    value <- sample(min:max, 1)
  } else {
    value <- runif(1, min, max)
  }
  
  return (paste("The generated value is", value))
}

shinyServer(
  function(input, output) {
    output$text <- eventReactive(input$button, {
      random(input$min, input$max, input$integer)
    })
  }
)