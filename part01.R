#A function, Given a year, returns the century it is in.

centuryFromYear <- function(year) {
 result <- ceiling( year / 100)
}

#A function, Given the string, check if it is a palindrome.

checkPalindrome <- function(inputString) {
    
    return(stringi::stri_reverse(inputString) == inputString)
    
}

#A function, Given an array of integers, find the pair of adjacent elements that has the 
#largest product and return that product.

adjacentElementsProduct <- function(inputArray) {
    x <- "notGiven"
    prev <- "notGiven"
    for (i in inputArray){
        if(prev != "notGiven"){
             if(x == "notGiven" | i * prev > x ){
                x <- i * prev
            }
        }
    prev <- i;
         
    }
    result <- x;
}

