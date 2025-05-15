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

## boolean for whether running global.R directly or if running via app.R
## this is really helpful in development for file paths as the root folder
## differs depending on whether the code is run via app.R or directly
is_local = Sys.getenv('SHINY_PORT') == ""


## Add code that you want to run before your app launches

### e.g., reading in data
## use is_local in file paths as exampled below
## data = readRDS(here::here(ifelse(is_local, 'app', '.'), "data.Rds"))

