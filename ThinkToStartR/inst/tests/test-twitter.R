context("Twitter")

test_that("Clean.text function works", {
  
  test_string <- "I am a Test String! @!"
  
  expect_equal(clean.text(test_string),"i am a test string")
  
}
