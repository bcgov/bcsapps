# Copyright 2019 Province of British Columbia
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


#' Module UI to for BCStats footer
#'
#'
#' @param id character
#'
#' @return a UI element
#' @export
bcsFooterUI <- function(id) {

  ns <- shiny::NS(id)

  htmltools::tagList(
    ## footer styling
    htmltools::tags$head(htmltools::tags$style(htmltools::HTML('#footer_col { margin-top:10px; background-color:#003366; border-top:2px solid #fcba19;}'))),
    htmltools::tags$head(htmltools::tags$style(htmltools::HTML('.footer_container {display:flex; justify-content:center; flex-direction:column; text-align:center; height:46px;} '))),
    htmltools::tags$head(htmltools::tags$style(htmltools::HTML('.footer_list {display:flex; flex-direction:row; flex-wrap:wrap; margin:0; list-style:none; align-items:center; height:100%;}'))),
    htmltools::tags$head(htmltools::tags$style(htmltools::HTML('.footer_link {font-size:1em; font-weight:normal; color:white; padding-left:5px; padding-right:5px; border-right:1px solid #4b5e7e;}'))),

    shiny::column(id = "footer_col",
           width = 12,
           htmltools::tags$footer(class="footer",
              htmltools::tags$div(class="footer_container",
                  htmltools::tags$ul(class = "footer_list",
                      htmltools::tags$li(htmltools::a("Home",
                                           class = "footer_link",
                                           href="https://www2.gov.bc.ca/gov/content/home",
                                           target = "_blank")),
                      htmltools::tags$li(htmltools::a("Disclaimer",
                                           class = "footer_link",
                                           href="https://www2.gov.bc.ca/gov/content/home/disclaimer",
                                           target = "_blank")),
                      htmltools::tags$li(htmltools::a("Privacy",
                                           class = "footer_link",
                                           href="https://www2.gov.bc.ca/gov/content/home/privacy",
                                           target = "_blank")),
                      htmltools::tags$li(htmltools::a("Accessibility",
                                           class = "footer_link",
                                           href="https://www2.gov.bc.ca/gov/content/home/accessibility",
                                           target = "_blank")),
                      htmltools::tags$li(htmltools::a("Copyright",
                                           class = "footer_link",
                                           href="https://www2.gov.bc.ca/gov/content/home/copyright",
                                           target = "_blank")),
                      htmltools::tags$li(htmltools::a("Contact",
                                           class = "footer_link",
                                           href="https://www2.gov.bc.ca/StaticWebResources/static/gov3/html/contact-us.html",
                                           target = "_blank"))
                                )
                       )
           )
    )
  )
}

#' Server-side for BCStats footer
#'
#' @param id character
#' @export
bcsFooterServer <- function(id) {
  shiny::moduleServer(id, function(input, output, session) {    }  )
}


