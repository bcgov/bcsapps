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

  fonts <- c("BCSans-Bold.woff", "BCSans-Bold.woff2",
            "BCSans-BoldItalic.woff", "BCSans-BoldItalic.woff2",
            "BCSans-Italic.woff", "BCSans-Italic.woff2",
            "BCSans-Regular.woff", "BCSans-Regular.woff2")

  purrr::walk(fonts, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     file.path(usethis::proj_get(), "app", "www", .x), overwrite = TRUE))

}


use_bcstats_logo <- function(){

  fonts <- c("bcstats_logo_rev.png", "favicon.ico")

  purrr::walk(fonts, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     file.path(usethis::proj_get(), "app", "www", .x), overwrite = TRUE))

}


use_bcstats_css <- function(){

  fonts <- c("styles.css")

  purrr::walk(fonts, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     file.path(usethis::proj_get(), "app", "www", .x), overwrite = TRUE))

}


use_bcstats_global <- function(){

  fonts <- c("global.R", "functions.R")

  purrr::walk(fonts, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     file.path(usethis::proj_get(), "app", "R", .x), overwrite = TRUE))

}


use_bcstats_app <- function(){

  fonts <- c("app.R")

  purrr::walk(fonts, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     file.path(usethis::proj_get(), "app", .x), overwrite = TRUE))

}


