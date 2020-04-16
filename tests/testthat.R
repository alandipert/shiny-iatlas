library(testthat)

testthat::test_dir(
  "./testthat",
  reporter = SummaryReporter,
  env = environment(),
  stop_on_failure = TRUE
)