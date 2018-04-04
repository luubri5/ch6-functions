# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(character1, character2) {
  character1_length <- nchar(character1)
  character2_length <- nchar(character2)
  return (character1_length >= character2_length * 2 | character2_length >= character1_length * 2)

}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("hey", "girl")



# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string1, string2) {
  if (nchar(string1) > nchar(string2)) {
    first_diff <- nchar(string1) - nchar(string2)
    first <- paste0("Your first string is longer by ", first_diff, " characters")
    first
  } else if (nchar(string2) > nchar(string1)) {
      second_diff <- nchar(string2) - nchar(string1)
      second <- paste0("Your second string is longer by ", second_diff, " characters")
      second
  } else {
      last <- "Your strings are the same length!"
      last
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions
describe_difference("brian", "boy")
describe_difference("brian", "boyorgirl")
describe_difference("brian", "bloob")
