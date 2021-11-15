set.seed(367895)
parameter <- sample(x = 1:1000, size = 1000)
set.seed(NULL)
criteria <- 200
lower <- parameter[parameter < criteria]
upper <- parameter[parameter >= criteria]
lower_rate <- length(lower) / length(parameter)
upper_rate <- length(upper) / length(parameter)
barplot(c(lower_rate, 1 - lower_rate), col = 1:2, ylim = 0:1)

par(mfrow = c(3, 2))

getSample <- function(cnt) {
    sample_data <- sample(x = parameter, cnt)

    sample_data_lower <- sample_data[sample_data < criteria]
    sample_data_lower_rate <- length(sample_data_lower) / length(sample_data)
    print(sample_data_lower_rate)
    barplot(c(sample_data_lower_rate, 1 - sample_data_lower_rate), col = 1:2, ylim = 0:1, main = cnt)

}

getSample(25)
getSample(50)
getSample(100)
getSample(200)
getSample(300)
getSample(500)