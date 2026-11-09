cat("US/Eastern in OlsonNames():", "US/Eastern" %in% OlsonNames(), "\n")
for (tz in c("US/Eastern", "America/New_York")) {
  res <- tryCatch(
    format(lubridate::ymd("2026-11-09", tz = tz), usetz = TRUE),
    error = function(e) paste("ERROR:", conditionMessage(e))
  )
  cat(tz, "->", res, "\n")
}
