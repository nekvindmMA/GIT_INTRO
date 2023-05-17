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

lcm <- function(a, b) {
  return(abs(a * b) / gcd(a, b))
}

# input values
a = as.integer(readline("Enter the first number: "))
b = as.integer(readline("Enter the second number: "))

# compute gcd
gcd_ab <- gcd(a, b)
# compute lcm
lcm_ab <- lcm(a, b)

#print results
print(paste('Greatest common divider of', a, 'and', b, 'is', gcd_ab))
print(paste('Lowest common multiplier of', a, 'and', b, 'is', lcm_ab))

