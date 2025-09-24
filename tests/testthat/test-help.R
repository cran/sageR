test_that("installed help index is readable", {
  rd <- tools::Rd_db("sageR")
  expect_true(length(rd) >= 0)  # should not error
})
