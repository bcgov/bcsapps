
#' Module UI to for BCStats header
#'
#'
#' @param id character
#' @param appname character
#'
#' @return a UI element
#' @export
bcsHeaderUI <- function(id, appname) {

  ns <- shiny::NS(id)

  htmltools::tagList(
    ## Header Styles
    htmltools::tags$head(htmltools::tags$style(htmltools::HTML('#header_col {background-color:#003366; border-bottom:2px solid #fcba19; position:fixed; z-index:10000;"}'))),
    htmltools::tags$head(htmltools::tags$style(htmltools::HTML('.header {padding:0 0px 0 0px; display:flex; height:80px; width:100%;}'))),
    htmltools::tags$head(htmltools::tags$style(htmltools::HTML('.banner {width:100%; display:flex; justify-content:flex-start; align-items:center; margin: 0 10px 0 10px}'))),
    htmltools::tags$head(htmltools::tags$style(htmltools::HTML('#app_title {font-weight:400; color:white; margin: 5px 5px 0 18px;}'))),
    htmltools::tags$head(htmltools::tags$style(htmltools::HTML('.link_list_div {margin-left:auto; margin-right:0;}'))),

    shiny::column( id = "header_col",
            width = 12,
            htmltools::tags$header(class="header",
                                   htmltools::tags$div(class="banner",
                                                       htmltools::a(href= "https://www2.gov.bc.ca/gov/content/data/about-data-management/bc-stats",
                                                                    htmltools::img(src = "bcstats_logo_rev.png",
                                                                                   title = "BC Stats",
                                                                                   height = "80px",
                                                                                   alt = "British Columbia - BC Stats"),
                                                                    onclick="gtag"),

                                                       shiny::h1(id = "app_title", appname),

                                 ## MODULE CODE FOR LINK LIST
                                 htmltools::tags$div(class = "link_list_div",
                                                     shiny::uiOutput(ns('links_yn')))
                        )
            )
    )
  )
}

#' Server-side for BC Stats header
#'
#' @param id character
#' @param links logical
#' @export
bcsHeaderServer <- function(id, links = TRUE) {
  shiny::moduleServer(
    id,
    function(input, output, session) {
      innerResult <- bcstatslinks::linkModServer('links')

      output$links_yn <- shiny::renderUI({

        ns <- session$ns

        if(links) {
          bcstatslinks::linkModUI(ns('links'))
        } else {
          NULL
        }

      })

    }
  )
}


