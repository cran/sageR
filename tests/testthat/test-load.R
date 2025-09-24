test_that("package can be loaded quietly", {
  expect_true(requireNamespace("sageR", quietly = TRUE))
})
