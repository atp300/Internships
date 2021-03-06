######################### Payment Method Analysis ######################

# Read the csv file
dataset <- read.csv("Challenge.csv")

#Calculate the total amount of payment
sum(dataset[,4])

#Calculate the each amount of credit card, debit and cash payment
credit <- dataset[which(dataset$payment_method=='credit_card'),] 
debit <- dataset[which(dataset$payment_method=='debit'),] 
cash <- dataset[which(dataset$payment_method=='cash'),] 

#Calculate the % of each payment method
CreditPayment <- sum(credit[,4])/sum(dataset[,4])*100
DebitPayment <- sum(debit[,4])/sum(dataset[,4])*100
CashPayment <- sum(cash[,4])/sum(dataset[,4])*100
