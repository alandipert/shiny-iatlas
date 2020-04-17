library(yaml)
library(tidyverse)
library(testthat)

config_yaml <- yaml::read_yaml("../configuration.yaml")
purrr::walk(config_yaml$libraries, library, character.only = T)

source("functions/utils.R", local = TRUE)
source("tests/test_utils.R", local = TRUE)

source("functions/transform.R", local = TRUE)
source("tests/test_transform.R", local = TRUE)