test_that("exported objects exist in the namespace", {
  exports <- getNamespaceExports("sageR")
  missing <- exports[!vapply(exports, function(x) exists(x, envir = asNamespace("sageR"), inherits = FALSE), logical(1))]
  msg <- if (length(missing)) paste("Dangling exports:", paste(missing, collapse = ", ")) else "All exports found"
  expect_length(missing, 0L)
})
