library(shiny)
library(datasets)
library(e1071)
dat <- iris

shinyServer(function(input, output) {
  
  output$text1 <- renderText({ 
    paste("Selected kernel:", input$kernel_type)
  })
  
  output$plot1 <- renderPlot({
    form <- formula(paste("Species ~", input$petalvar, "+", input$sepalvar))
    svmfit <- svm(formula = form,
                  data = dat,
                  kernel = input$kernel_type
    )
    plot(x=svmfit, 
         data=dat, 
         formula = formula(paste(input$petalvar, "~", input$sepalvar)),
         grid = 100,
         svSymbol = 16,
         dataSymbol = 16,
         symbolPalette = c("darkblue","darkgrey","red")
         
    )
  })
  
  
})

