library(tidyr)
# Plot closure temperature

# Pull in data 
FOJ_Ridge_AHe <- pull("FOJAHe.txt")
MTDAHe <- pull("MTDAHe.txt")
MSBAHe <- pull("MSBAHe.txt")
MSBAFT <- matrix(scan('./MSBAFT.txt', sep = ' '), ncol=2, byrow=T)

FTclosure <- matrix(matrix(scan("../../leahEastModel/TC.txt", what = "character"))[23:40], ncol=2, byrow=T)
AHeclosure <- matrix(matrix(scan("../../leahEastModel/TC.txt", what = "character"))[2:21], ncol=2, byrow=T)

AHE_ages_all <- c(FOJ_Ridge_AHe[,12], MTDAHe[,12], MSBAHe[,12]) %>% as.numeric()
AHE_elev_all <- c(FOJ_Ridge_AHe[,4], MTDAHe[,4], MSBAHe[,4]) %>% as.numeric()


## Generate base plot
plot(MSBAFT[,2], MSBAFT[,1], col='red', xlim = c(0,90), ylim=c(0,3000), pch=3, lwd=3, main = "East Flank of Cascades", xlab = "Age (Ma)", ylab = "Elevation (m)")
points(AHE_ages_all, AHE_elev_all, col='blue', pch = '*', lwd=3)
legend("bottomright", legend = c("AFT", "AHe"), pch = c("+", "*"), col = c('red', 'blue'))

## Add Modeled 

pull <- function(fn) {
  x <- scan(file = fn, what = "data frame", sep = ' ', skip = 1)
  x <- x[x!="(rep)"]
  return(matrix(x, ncol=13, byrow=T))
}
