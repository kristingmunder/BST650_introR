###### Student's t-test ########################################################

#Poisson random vector
xPois <- rpois(n = 15, lambda = 3)
hist(xPois)

#Create an Experiment List
xPois_ls <- list(
            dist = "Poisson",
            params = c(lambda = 3),
            sample = rpois(n = 15, lambda = 3)
)
hist(xPois_ls$sample)

#Find the sample mean and variance
mean(xPois_ls$sample)
var(xPois_ls$sample)

#Hypothesis Test on Sample Mean
# H0: mu = 3
# HA: mu != 3



#Critical value
critVal_P <- qt(0.975, df = 15 - 1)

#Test statistic
ttest_P <- t.test(
  x = xPois_ls$sample,
  alternative = "two.sided",
  mu = xPois_ls[[2]][[1]]
)

class(ttest_P)
###Checking Class###
#Use the is.<CLASS>() function to test if an object has that class
is.list(ttest_P)
is.matrix(ttest_P)
is.list(xPois_ls$params)
is.numeric(xPois_ls$params)


#Subset the t.test
ttest_P$statistic

#Make a decision
abs(ttest_P$statistic) > critVal_P

#So, we fail to rehect the null hypothesis that the population mean equals 3.

###### Data Frames ##########################################################

#Create a data frame of the people in the class

myClass <- data.frame(
  Surname = c("Odom", "Dyatchenko", "Ma", "Gmunder"),
  Firstname = c("Gabriel", "Nina", "Ruixuan (Mavis)", "Kristin"),
  CupsCoffeeOrTea = c(0, 3, 2, 0)
)
myClass
myClass$neighborhood <- c("Pembrook Pines", "Miami Beach", "Beijing", "Brickell")


### Subset a Data Frame ###
myClass$Surname
myClass[, 1]
myClass[["Surname"]]
myClass$Surname[2]
myClass[2,1]
