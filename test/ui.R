library(shiny)
library(datasets)
library(e1071)

shinyUI(
  fluidPage(
    titlePanel("Classification via Support Vector Machine on Fisher's Iris Data"),
    sidebarLayout(
      sidebarPanel(
        
        radioButtons("kernel_type", "Select SVM kernel type:",
                     c("Linear" = "linear",
                       "Radial" = "radial",
                       "Polynomial" = "polynomial")
        ),
        
        selectInput("petalvar", "Select petal-dimension predictor variable:",
                     choices = list("Petal Width" = "Petal.Width",
                                    "Petal Length" = "Petal.Length")
        ),
        
        selectInput("sepalvar", "Select sepal-dimension predictor variable:",
                    choices = list("Sepal Width" = "Sepal.Width",
                                   "Sepal Length" = "Sepal.Length")
        )
        
      ),
      mainPanel(
        h4(textOutput("text1")),
        plotOutput("plot1")
      )
    )
  )
)
