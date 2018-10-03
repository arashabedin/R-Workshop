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

# Make array Consecutive
# For statues = [6, 2, 3, 8], the output should be
# makeArrayConsecutive2(statues) = 3.
# We needs statues of sizes 4, 5 and 7.

makeArrayConsecutive2 <- function(statues) {
     print(statues)
    newStatus <- sort(unlist(statues))
    print(newStatus)
    x <- 0;
    prev <- "ungiven"
    for (i in newStatus){
        if(prev != "ungiven"){
            a <- i - prev
            if(a > 1) x = x + (a-1)
        }   
            prev = i
    }
    results <- x
}
