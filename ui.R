library(shiny)
shinyUI(pageWithSidebar(
headerPanel("Swiss Fertility and Socioeconomic Indicators (1888) Data"),
sidebarPanel(

    selectInput("mu", "Variable:",
                c("Agriculture" = "Agriculture",
                  "Examination" = "Examination",
                  "Education" = "Education"))   
    ),
mainPanel(
    plotOutput('myHist')
)
))
