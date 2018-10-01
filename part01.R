#A function, Given a year, returns the century it is in.

centuryFromYear <- function(year) {
 result <- ceiling( year / 100)
}

#A function, Given the string, check if it is a palindrome.

checkPalindrome <- function(inputString) {
    
    return(stringi::stri_reverse(inputString) == inputString)
    
}
