library(testthat)
library(shiny)

e1 <- new.env(parent = globalenv())
e2 <- new.env(parent = e1)
loadSupport(renv = e2, globalrenv = e1)

testthat::test_dir(
  "./testthat",
  reporter = SummaryReporter,
  env = e2,
  stop_on_failure = TRUE
)