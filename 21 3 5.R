#21.3.5 Exercises
#Exercise 1
all_csv <- c("one.csv", "two.csv")
all_dfs <- vector("list", length(all_csv))
for (i in all_csv) {
  all_dfs[[i]] <- read_csv(all_csv[[i]])
}
bind_rows(all_dfs)
#Exercise 2
no_names <- 1:5
some_names <- c("one" = 1, 2, "three" = 3)
repeated_names <- c("one" = 1, "one" = 2, "three" = 3)
for (nm in names(no_names)) print(identity(nm)) 
#nothing happens
for (nm in names(some_names)) print(identity(nm)) 
#the empty name gets filled with a ""
for (nm in names(repeated_names)) print(identity(nm)) 
#everything gets printed out
#Exercise 3
show_means <- function(x) {
  the_class <- vector("logical", length(x))
  for (i in seq_along(x)) the_class[[i]] <- is.numeric(x[[i]])
    x <- x[the_class]
    for (i in seq_along(x)) {
    cat(paste0(names(x)[i], ": ", round(mean(x[[i]]), 2)), fill = TRUE)
  }
}
show_means(iris)