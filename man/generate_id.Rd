% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generate_id.R, R/generate_ids.R
\name{generate_id}
\alias{generate_id}
\alias{generate_ids}
\title{Generate unique identifier(s)}
\usage{
generate_id(
  prefix = paste(sample(letters, 4), collapse = ""),
  stopOnIllegalChars = FALSE
)

generate_ids(x, stopOnIllegalChars = FALSE)
}
\arguments{
\item{prefix}{An identifier prefix.}

\item{stopOnIllegalChars}{Whether to \code{\link[base:stop]{base::stop()}} or produce a \code{\link[base:warning]{base::warning()}}
when encountering illegal characters (i.e. anything other than a letter or
underscore).}

\item{x}{A vector of identifier prefixes.}
}
\value{
a character vector containing the identifier(s).
}
\description{
To allow unique reference to constructs, they require unique identifiers.
These functions generate such identifiers by combining one or more identifier
prefixes (usually a human-readable construct name such as 'attitude') with
a unique identifier based on the second the identifier was generated. The
identifier prefix may only contain lowercase and uppercase letters and
underscores.
}
\examples{
generate_id('attitude');
}
