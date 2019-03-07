\name{ugl}
\alias{ugl}
\title{
Utilize GL Device
}
\description{
Letting the GL functions to directly take in R objects, without the manual options of selecting proper functions. All graphics to be rendered in a 3D rgl Device
}
\usage{
ugl(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
An R object of any class.
}
}
\details{
 - functions will be plotted with a default domain if not specified. The length of formals of the function is used as default to judge the dimension of the function. Result of a 2D function will be plotted as a perspctive plot, Result of a 3D function will be plotted as isosurfaces.


 - 2D arrays(matrices) will be plotted as perspective plots. 3D isosurfaces.


 - Dataframes will be plotted as 3D scatters. You can select columns. Otherwise, the first 3 numeric columns will be used as default


 - You can specify some data frames as ts_dataframe, for which the 1st column is always the time index. 3D ribbons can be plotted to compare different rows.


 - You can specify some data frames as sum_dataframe, for which the 1st column is always a character vector, 3D boxplot can be plotted.
}
\value{
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

#f2 = function(x,y) x^2+y^2
f3= function(x,y,z) log(x^2 + y^2 + z^2 +10*(x^2 + y^2) * (y^2 + z^2) ^2)

#ugl(f2)
ugl(f3)
#ugl(volcano)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
