#' Check if default database is available.
#'
#' RMariaDB examples and tests connect to a database defined by the
#' \code{rs-dbi} group in \code{~/.my.cnf}. This function checks if that
#' database is available, and if not, displays an informative message.
#' \code{mariadbDefault} works similarly but throws a testthat skip condition
#' on failure, making it suitable for use in tests.
#'
#' @export
#' @examples
#' if (mariadbHasDefault()) {
#'   db <- dbConnect(RMariaDB::MariaDB(), dbname = "test")
#'   dbListTables(db)
#'   dbDisconnect(db)
#' }
mariadbHasDefault <- function() {
  tryCatch({
    dbConnect(MariaDB(), dbname = "test")
    TRUE
  }, error = function(...) {
    message(
      "Could not initialise default MariaDB database. If MariaDB is running\n",
      "check that you have a ~/.my.cnf file that contains a [rs-dbi] section\n",
      "describing how to connect to a test database."
    )
    FALSE
  })
}

#' @export
#' @rdname mariadbHasDefault
mariadbDefault <- function() {
  tryCatch({
    dbConnect(MariaDB(), dbname = "test")
  }, error = function(...) {
    testthat::skip("Test database not available")
  })
}
