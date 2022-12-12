# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Burn area by Variable"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("colnames(ffnumnoxy)", "Variable from Data:",
                   choices=colnames(ffnumnoxy)),
                 
      hr(),
      helpText("Data from Portugal Forest Fire Data Set.")
    ),
    
    # Create a spot for the scatterplot
    mainPanel(
      plotOutput("burnarea")  
    )
    
  )
)


