library(shiny)
library(UsingR)
data(swiss)
shinyServer(
    function(input, output) {
        output$myHist <- renderPlot({
            mu <- input$mu
            x_data <- swiss[,mu]
            plot(x_data, swiss$Fertility, xlab=mu, ylab="Fertility",
                 col='black',main='Fertility in dependency on agriculture, examination or education')
            mean <- mean(x_data)
            lines(c(mean, mean), c(0, 200),col="red",lwd=3)
        })
        
    }
)
