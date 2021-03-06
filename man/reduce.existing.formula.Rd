% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reduce.existing.formula.R
\name{reduce.existing.formula}
\alias{reduce.existing.formula}
\title{Reduce Existing Formula}
\usage{
reduce.existing.formula(
  the.initial.formula,
  dat,
  max.input.categories = 20,
  max.outcome.categories.to.search = 4,
  force.main.effects = TRUE,
  order.as = "as.specified",
  include.backtick = "as.needed",
  format.as = "formula",
  envir = .GlobalEnv
)
}
\arguments{
\item{the.initial.formula}{is an object of class "formula" or "character" that states the inputs and output in the form y ~ x1 + x2.}

\item{dat}{Data frame, list or environment (or object coercible by as.data.frame to a data frame) containing the variables in the model.}

\item{max.input.categories}{Limits the maximum number of variables that will be employed in the formula.As default it is set at 20, but users can still change at his/her convenience.}

\item{max.outcome.categories.to.search}{A numeric value. The create.formula function es a feature that identifies input variables exhibiting a lack of contrast. When reduce = TRUE, these variables are automatically excluded from the resulting formula. This search may be expanded to subsets of the outcome when the number of unique measured values of the outcome is no greater than max.outcome.categories.to.search. In this case, each subset of the outcome will be separately examined, and any inputs builthat exhibit a lack of contrast within at least one subset will be excluded.}

\item{force.main.effects}{This is a logical value.  When TRUE, the intent is that any term ed as an interaction (of multiple variables) must also be listed individually as a main effect.}

\item{order.as}{rearranges its first argument into ascending or descending order.}

\item{include.backtick}{Add backticks to make a appropriate variable}

\item{format.as}{The data type of the output.  If not set as "formula", then a character vector will be returned.}

\item{envir}{The path to search. Global environment is default value}
}
\description{
The reduce.existing.formula function was designed to perform quality checks and automatic removal of impractical variables can also be accessed when an existing formula has been previously constructed. This method uses natural language processing techniques to deconstruct the components of a formula.
}
\examples{
data('snack.dat')
the.initial.formula <- 'Income ~ .'

reduce.existing.formula(the.initial.formula = the.initial.formula,dat = snack.dat,
  max.input.categories = 30)$formula

}
