library(testthat)
library(shiny)

parent <- new.env(parent = globalenv())
env <- loadSupport(renv = new.env(parent = parent), globalrenv = parent)

testthat::test_dir(
  "./testthat",
  reporter = c("summary", "fail"),
  env = env
)