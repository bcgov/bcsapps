ui <- shiny::fluidPage({
  fluidRow(
    theme = "bootstrap.css",
    HTML("<html lang='en'>"),

    ## Replace appname with the title that will appear in the header
    bcsapps::bcsHeaderUI(id = 'header', appname = "Replace with app title"),

    column(width = 12,
           style = "margin-top:100px",

           "Add elements to include in the app here"
           ),

    bcsapps::bcsFooterUI(id = 'footer')
  )
})

server <- function(input, output) {

  ## Change links to false to remove the link list from the header
  bcsapps::bcsHeaderServer(id = 'header', links = TRUE)

  bcsapps::bcsFooterServer(id = 'footer')

  }

shiny::shinyApp(ui = ui, server = server)
