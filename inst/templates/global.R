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

## Some useful libraries
library(shiny)
library(bslib)
library(tidyverse)  ## for data manipulation
library(janitor)    ## for cleaning data (includes rounding functions)
library(lubridate)  ## for dates
library(ggplot2)    ## for plots
library(plotly)     ## for interactive plots
library(DT)         ## for tables
library(reactable)  ## for more complex tables

## change to TRUE if you are including GA tracking code in your app
## to do this, update the config.yml file and run generate_ga_tracking_code.R
## the script will add google-analytics.html file to the www folder
google_tracking <- FALSE

## boolean for whether running locally or on shinyapps.io
is_local = Sys.getenv('SHINY_PORT') == ""


## Add code that you want to run before your app launches

### e.g., reading in data
## filepath breakdown:
## when running global.R directly or via app.R the working directory changes e.g., "project" to "project/app"
## to correct for this, use here::here which is always the project root folder i.e, "project"
## then you need to use is_local in the file paths because on shinyapps.io the root folder is the "app" folder
##  when not is_local the path will be "app/./data.Rds" where the "." means to stay in the current folder
## data = readRDS(here::here(ifelse(is_local, 'app', '.'), "data.Rds"))

