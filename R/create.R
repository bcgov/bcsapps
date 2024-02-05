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


#' Create an app project
#'
#' Create an app project in the BCStats style, providing all the files needed to get started
#'
#' @param path Path to the directory in which to initialize the project. Default "." - your current working directory.
#' @param coc_email Contact email address(es) for the Code of Conduct.
#' @param licence Which licence to apply? Default is Apache 2.0 ("apache2"). Use "cc-by" for Creative Commons Attribution 4.0
#'
#' @return NULL
#'
#' @export
#'
create_bcstats_app <- function(path = ".", coc_email = bcgovr:::get_coc_email(), licence = "apache2"){

  if(is.null(coc_email)) {

    message("Enter your email address to be used in the code of conduct")
    coc <- readline("email =  ")
  }

  dirs <- c("app/", "app/www/", "app/R/")

  bcgovr::create_bcgov_project(path = path,
                               licence = licence,
                               coc_email = coc_email,
                               dir_struct = dirs)

  use_bcstats_app()
  use_bcstats_global()
  use_bcstats_css()
  use_bcstats_fonts()
  use_bcstats_logo()

}
