library(caret)
library(Amelia)


test.filename<-'data/test.csv'
train.filename<-'data/train.csv'
dataset.test <- read.csv(test.filename)
dataset.train <- read.csv(train.filename)

#since the data in train and test should be normalized in same scale
#I combined train and test as a whole at this stage
#dim(dataset.train) = 1460*81
#dim(dataset.train) = 1459*80
dataset.whole <- rbind(dataset.train[,1:80], dataset.test)

#find variables with missing data
missmap(dataset.whole)
for( i in 1:80){
  if(sum(is.na(dataset.whole[,i]))>0){
    print(colnames(dataset.train)[i])
  }
}




