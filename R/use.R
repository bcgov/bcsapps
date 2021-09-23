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

  fonts <- c("bcstats_logo_rev.png")

  purrr::walk(fonts, ~ fs::file_copy(path = file.path(system.file("templates", package = "bcsapps"), .x),
                                     file.path(usethis::proj_get(), "app", "www", .x), overwrite = TRUE))

}


use_bcstats_css <- function(){

  fonts <- c("bootstrap.css")

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


