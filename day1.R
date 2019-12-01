# function to determine needed fuel
fuel <- function(value) max((floor(value / 3) - 2), 0)

vec <- read_lines("AoC2019_1.txt") %>%
      as.integer()
# answer to part 1
sum(unlist(map(vec, fuel)))

tot <- 0
step <- 1
while (step > 0) {
      step <- sum(unlist(map(vec, fuel)))
      tot <- tot + step
      vec <- unlist(map(vec, fuel))
}
# answer to part 2
tot
