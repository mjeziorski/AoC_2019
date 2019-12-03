# zero-based indexing is so much fun in R!
# answer to part 1
vec <- as.numeric(unlist(strsplit(read_lines("AoC2019_2.txt"), ",")))
AoC2_2 <- function(noun, verb) {
      vec2 <- vec
      vec2[2] <- noun
      vec2[3] <- verb
      i <- 1
      while (i <= length(vec2)) {
            if (vec2[i] == 1) {
                  value <- vec2[vec2[i + 1] + 1] + vec2[vec2[i + 2] + 1]
                  vec2[vec2[i + 3] + 1] <- value
                  }
            else if (vec2[i] == 2) {
                  value <- vec2[vec2[i + 1] + 1] * vec2[vec2[i + 2] + 1]
                  vec2[vec2[i + 3] + 1] <- value
                  }
            else if (vec2[i] == 99) {break}
            else {print("error")}
            i <- i + 4
      }
      if (vec2[1] == 19690720) {
                  print(100 * noun + verb)
      }
}
AoC2_2(12, 2)
vec2[1]

# answer to part 2
for (noun in 1:100) {
      for (verb in 1:100) {
            AoC2_2(noun, verb)
      }
}
