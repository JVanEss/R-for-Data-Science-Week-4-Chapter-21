#Exercise 21.5.3.1
map_dbl(mtcars, mean)
map(flights, class)
map(iris, ~ length(unique(.)))
map(c(-10, 0, 10, 100), rnorm, n = 10)