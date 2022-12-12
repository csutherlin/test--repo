
# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)
library(ggplot2)

##ffnumnoxy <-read.csv("C:\\Users\\csuth\\OneDrive\\Stat 824\\ffnumnoxy.csv", header = TRUE)


# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$burnarea <- renderPlot({
    
    ggplot(ffnumnoxy,aes(x = "colnames(ffnumnoxy)", y = area)) +
      geom_point()
  })
}