## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# my.vector contains strings which you cannot sum

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# you did not load the package "stringr"
 
said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# no variable "initial" exists


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
type.test <- 1:49
typeof(type.test)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vect.1, vect.2) {
  paste("The difference in lengths is", abs(length(vect.1) - length(vect.2)))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(1:49, 2:50)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vect.1, vect.2) {
  dif <- length(vect.1) - length(vect.2)
  if (0 < dif) {
    paste("Your first vector is longer by", dif, "elements")
  } else {
    paste("Your second vector is longer by", -dif, "elements")
  }
}
# Pass two vectors to your `DescribeDifference` function
DescribeDifference(1:5, 1:10)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  c(v1, v2, v3)
}
# Send 3 vectors to your function to test it.
CombineVectors(1:3, 4:10, 11:25)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(vect) {
  paste(tolower(vect))
}

