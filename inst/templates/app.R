# Copyright 2023 Province of British Columbia
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ui <- function(req) {
  ## choose one of the options below:
  ## for basic page use the first line, for dashboard-style page use the second line
  bslib::page_fluid(shiny::fluidRow(
  #htmltools::tagList(

    shiny::tags$head(
      shiny::tags$link(rel = "stylesheet", type = "text/css", href = "BC_Sans.css"),  ## set up BC Sans fonts
      shiny::tags$link(rel = "stylesheet", type = "text/css", href = "variables.css"),## bcgov design tokens
      shiny::tags$link(rel = "stylesheet", type = "text/css", href = "styles.css"),   ## custom styles
      shiny::tags$link(rel = "shortcut icon", href = "favicon.png")  ## add BCGov favicon
      ),
    ## Replace appname with the title that will appear in the header
    ## Use mobilename to display a different title on mobile browsers (useful if appname title is very long)
    bcsapps::bcsHeaderUI(id = 'header', appname = "Replace with app title", mobilename = NULL, github = "Replace with github URL or NULL"),

    shiny::column(width = 12,
                  style = "margin-top:100px",
                  ## for dashboard-style page use one of the following:
                  # bslib::page_sidebar( "Add elements to include in the app here" ),
                  # bslib::page_navbar( bslib::nav_panel("Page1","Add elements to include in the app here") ),


                  "Add elements to include in the app here"


    ),

    bcsapps::bcsFooterUI(id = 'footer')

## choose one of the options below:
## for basic page use the first line, for dashboard-style page use the second line
  ))
 # )
}

server <- function(input, output) {

  ## Change links to false to remove the link list from the header
  bcsapps::bcsHeaderServer(id = 'header', links = TRUE)

  bcsapps::bcsFooterServer(id = 'footer')

  }

shiny::shinyApp(ui = ui, server = server)
