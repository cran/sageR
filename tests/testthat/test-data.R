test_that("datasets (if any) can be loaded", {
  skip_on_ci()  # keep light
  dpath <- system.file("data", package = "sageR")
  if (!nzchar(dpath) || !dir.exists(dpath)) skip("No data/ directory")
  rdas <- list.files(dpath, pattern = "\\.(rda|RData)$", ignore.case = TRUE)
  if (!length(rdas)) skip("No .rda datasets")
  for (rd in rdas) {
    nm <- sub("\\.(rda|RData)$", "", rd, ignore.case = TRUE)
    expect_silent(data(list = nm, package = "sageR", envir = environment()))
    expect_true(exists(nm, inherits = FALSE), info = nm)
  }
})
