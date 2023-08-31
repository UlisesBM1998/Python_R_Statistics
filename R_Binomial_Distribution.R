# x = events, p = probability, size = number of events

#If you flip a coin five times, what is the probability of tails three times in a row?

dbinom(x = 3, size = 5, prob = 0.5)

# What is the probability of passing four green lights in a row?

pbinom(q = 4, size= 4 , prob = 0.25) #It is 100% because you sum every result

pbinom(q = 2, size= 4 , prob = 0.25) # It is 94% because between 3 and 4 times, the probability is too low

# We are doing a test with 12 questions, by guessing, what is the probability of getting rights 7 questions (4 choices per question)

dbinom(x = 7, size = 12, prob = 0.25)

# What is the probability of passing three green lights or more

pbinom(q = 2, size = 4, prob = 0.25 , lower.tail = F)

#Another way to do it
dbinom(x = 3, size = 4, prob = 0.25) + dbinom(x = 4, size = 4, prob = 0.25)


