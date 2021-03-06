#' Remove duplicates values from Sample data frame.
#'
#' Removes observations from the data frame Sample when the observation has the identical date and value as another observation
#'
#' @param Sample dataframe with at least DecYear and ConcHigh, default name is Sample
#' @export
#' @return A data frame 'Sample' with the following columns:
#' \tabular{lll}{
#' Name \tab Type \tab Description \cr
#' Date \tab Date \tab Date \cr
#' ConcLow \tab numeric \tab Lower limit of concentration \cr
#' ConcHigh \tab numeric \tab Upper limit of concentration \cr
#' Uncen \tab integer \tab Uncensored data (1=TRUE, 0=FALSE) \cr
#' ConcAve \tab numeric \tab Average concentration \cr
#' Julian \tab integer \tab Number of days since Jan. 1, 1850\cr
#' Month \tab integer \tab Month of the year [1-12] \cr 
#' Day \tab integer \tab Day of the year [1-366] \cr
#' DecYear \tab numeric \tab Decimal year \cr
#' MonthSeq \tab integer \tab Number of months since January 1, 1850 \cr
#' SinDY \tab numeric \tab Sine of the DecYear \cr
#' CosDY \tab numeric \tab Cosine of the DecYear
#' }
#' @examples
#' DecYear <- c('1985.01', '1985.01', '1985.02', '1985.02', '1985.03')
#' ConcHigh <- c(1,2,3,3,5)
#' dataInput <- data.frame(DecYear, ConcHigh, stringsAsFactors=FALSE)
#' Sample <- removeDuplicates(dataInput)
removeDuplicates <- function(Sample) {  
  Sample1 <- Sample[!duplicated(Sample[c("DecYear","ConcHigh")]),]
  
  return(Sample1)
}
