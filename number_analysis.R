gcd <- function(a, b) {
  
  # Ensure a is greater than or equal to b
  if (a < b) {
    temp <- a
    a <- b
    b <- temp
  }
  
  while (b != 0) {
    remainder <- a %% b
    a <- b
    b <- remainder
  }
  
  return(a)
}

# input values
a = as.integer(readline("Enter the first number: "))
b = as.integer(readline("Enter the second number: "))

# compute gcd
result <- gcd(a, b)

#print results
print(paste('Greatest common divider of', a, 'and', b, 'is', result))