setwd("~/Desktop/Wicked Problems ")
rm(list = ls(all = TRUE))


x <- 1:100
y <- 1:100

east <- sample(x, size = 10, replace = TRUE)
north <- sample(y, size = 10, replace = TRUE)

dwellings <- cbind.data.frame(id = 1:10, east, north)

symbols(east, north, squares = rep(0.75, 10), inches = FALSE)

symbols(sample(x, 10, replace = TRUE),
        sample(y, 10, replace = TRUE),
        circles = rep(.75, 10),
        inches = FALSE,
        fg = "green1",
        bg = "beige",
        add = TRUE)

symbols(sample(x, 10, replace = TRUE),
        sample(y, 10, replace = TRUE),
        circles = rep(1.5, 10),
        inches = FALSE,
        fg = "green4",
        bg = "beige",
        add = TRUE)

# lines(x = dwellings$east,
#       y = dwellings$north,
#       lty = 3,
#       lwd = .75,
#       col = "blue")

locs <- sample(1:10, 5, replace = TRUE)

# lines(x = dwellings[locs, 2],
#       y = dwellings[locs, 3],
#       lty = 3,
#       lwd = .75,
#       col = "blue")

xspline(x = dwellings[locs, 2],
        y = dwellings[locs, 3],
        shape = -1,
        lty = 2)

xspline(x = dwellings[locs, 2],
        y = dwellings[locs, 3])

text(x = dwellings$east,
     y = dwellings$north + 3,
     labels = dwellings$id)

title(main = "The Path of a Traveling Salesman")

