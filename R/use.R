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

## Helper functions for create_bcstats_app


use_bcstats_fonts <- function(){

  files <- c("BCSans-Regular.woff", "BCSans-Regular.woff2",
             "BCSans-Italic.woff", "BCSans-Italic.woff2",
             "BCSans-Bold.woff", "BCSans-Bold.woff2",
             "BCSans-BoldItalic.woff", "BCSans-BoldItalic.woff2",
             "BCSans-Light.woff", "BCSans-Light.woff2",
             "BCSans-LightItalic.woff", "BCSans-LightItalic.woff2")

  purrr::walk(files, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     usethis::proj_path("app", "www", "fonts", .x), overwrite = TRUE))

}


use_bcstats_logo <- function(){

  files <- c("bcstats_logo_rev.png", "favicon.png")

  purrr::walk(files, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     usethis::proj_path("app", "www", .x), overwrite = TRUE))

}


use_bcstats_css <- function(){

  files <- c("styles.css",
             "BC_Sans.css",
             "variables.css")

  purrr::walk(files, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     usethis::proj_path("app", "www", .x), overwrite = TRUE))

}


use_bcstats_global <- function(){

  files <- c("global.R", "functions.R")

  purrr::walk(files, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     usethis::proj_path("app", "R", .x), overwrite = TRUE))

}


use_bcstats_app <- function(){

  files <- c("app.R")

  purrr::walk(files, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     usethis::proj_path("app", .x), overwrite = TRUE))

}

use_bcstats_ga <- function(){

  files <- c("generate_ga_tracking_code.R", "config.yml")

  purrr::walk(files, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     usethis::proj_path(.x), overwrite = TRUE))

  ## add config.yml and google-analytics.html to gitignore
  usethis::write_union(usethis::proj_path(".gitignore"), c("config.yml", "*google-analytics.html"))

}

