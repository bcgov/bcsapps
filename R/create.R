#' Create an app project
#'
#' Create an app project in the BCStats style, providing all the files needed to get started
#'
#' @param path Path to the directory in which to initialize the project. Default "." - your current working directory.
#' @param contact_email Contact email address(es) for the Code of Conduct.
#' @param licence Which licence to apply? Default is Apache 2.0 ("apache2"). Use "cc-by" for Creative Commons Attribution 4.0
#'
#' @return NULL
#'
#' @export
#'
create_bcstats_app <- function(path = ".", coc_email = NULL, licence = "apache2"){

  if(is.null(coc_email)) {

    message("Enter your email address to be used in the code of conduct")
    coc <- readline("email =  ")
  }

  dirs <- c("app/", "app/www/", "app/R/")

  bcgovr::create_bcgov_project(path = path,
                               licence = licence,
                               coc_email = coc_email,
                               dir_struct = dirs)

  use_bcstats_fonts()
  use_bcstats_logo()
  use_bcstats_css()
  use_bcstats_global()
  use_bcstats_app()



}
