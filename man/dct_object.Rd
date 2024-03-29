% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dct_object.R
\name{dct_object}
\alias{dct_object}
\title{Create a DCT object}
\usage{
dct_object(
  version = as.character(utils::packageVersion("psyverse")),
  id = NULL,
  prefix = paste(sample(letters, 4), collapse = ""),
  label = "",
  date = as.character(Sys.Date()),
  dct_version = "1",
  ancestry = "",
  retires = "",
  definition = "",
  measure_dev = "",
  measure_code = "",
  aspect_dev = "",
  aspect_code = "",
  comments = "",
  rel = NULL
)
}
\arguments{
\item{version}{The version of the DCT specification format (normally the version
of the \code{psyverse} package).}

\item{id}{The Unique Construct Identifier (UCID); if not provided,
this is created using the \code{prefix}.}

\item{prefix}{The prefix to use to construct the Unique Construct Identifier
(UCID); ignored i \code{id} is provided.}

\item{label}{The human-readable label for the construct.}

\item{date}{The date at which the construct was created.}

\item{dct_version}{The version of the DCT specification. This can optionally
be used to manage consecutive DCT versions.}

\item{ancestry}{The DCT specification or specifications that this DCT was
based on.}

\item{retires}{The DCT specification or specifications that this DCT renders
obsolete (note that this doesn't mean anything in itself; \code{psyverse} does not
enforce this automatically, nor does PsyCoRe, without configuration).}

\item{definition}{The definition of the construct. This has to be comprehensive,
detailed, accurate, and clearly delineate the relevant aspects of the human
psychology.}

\item{measure_dev}{Instructions for developing measurement instruments that
measure this construct.}

\item{measure_code}{Instructions for coding measurement instruments (e.g. in
systematic reviews) as measurement instruments that measure this construct.
Note that explicitly defining boundary conditions often helps, for example by
explaining the features that coders should look for to distinguish this
construct from closely related constructs (ideally linking to those other
constructs using the \code{dct:UCID} notations).}

\item{aspect_dev}{Instructions for eliciting construct content. Note that
this is not sensible for all constructs; some may be defined at a very
general level, rendering their content insufficiently specific to discuss
or describe.}

\item{aspect_code}{Instructions for coding construct content (i.e. aspects).
Note that explicitly defining boundary conditions often helps, for example by
explaining the features that coders should look for to distinguish this
construct from closely related constructs (ideally linking to those other
constructs using the \code{dct:UCID} notations).}

\item{comments}{Any additional comments.}

\item{rel}{Relationships with other constructs.}
}
\value{
The DCT object.
}
\description{
Create a DCT object
}
\examples{
exampleDCT <-
  psyverse::dct_object(
    prefix = "exampleConstruct",
    label = "An example construct",
    definition = "The definition goes here",
    measure_dev = "Here you can explain how to measure the construct"
  );
}
