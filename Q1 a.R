######################### Average Order Value ######################

# Read the csv file
dataset <- read.csv("Challenge.csv")

#Print the structure of the dataframe
str(dataset)

#outlier
outl <- boxplot(dataset$order_amount,plot=FALSE)
datasetout <- dataset[!dataset$order_amount %in% outl$out,]

#Calculate AVO
AVO <- sum(datasetout[,4])/nrow(datasetout)
