% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/deprecated.R
\docType{methods}
\name{make.db.names,MariaDBConnection,character-method}
\alias{make.db.names,MariaDBConnection,character-method}
\alias{SQLKeywords,MariaDBConnection-method}
\alias{isSQLKeyword,MariaDBConnection,character-method}
\title{Make R/S-Plus identifiers into legal SQL identifiers}
\usage{
\S4method{make.db.names}{MariaDBConnection,character}(dbObj, snames,
  keywords = .SQL92Keywords, unique = TRUE, allow.keywords = TRUE, ...)

\S4method{SQLKeywords}{MariaDBConnection}(dbObj, ...)

\S4method{isSQLKeyword}{MariaDBConnection,character}(dbObj, name,
  keywords = .MariaDBKeywords, case = c("lower", "upper", "any")[3], ...)
}
\description{
DEPRECATED: please use \code{dbQuoteIdentifier} instead.
}
\keyword{internal}
