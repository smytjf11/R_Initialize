
  library(RODBC) #This is the library used to interface with SQL Servers
  library(sqldf) #This library is used to allow for SQL-like queries
  library(keras) #Keras is the Tensorflow front end
  library(e1071) # Machine Learning toolkit, (Naïve Bayes (conditional probability), SVM, Fourier Transforms, Bagged Clustering, Fuzzy Clustering, etc...)
  library(FactoMineR) # Unsupervised learning methods (PCA, MCA, etc...)
  library(randomForest) #Package for random forests
  library(missMDA) #Tools for imputation of mising data
  library(xts) #A more powerful timeseries manipuation/analysis tool
  sort.xts <- function(x, decreasing=FALSE, MARGIN=1, ...)
              {
                as.xts(if(NCOL(x) > 1) {
                  as.matrix(x)[order(x[,MARGIN],decreasing=decreasing,...),]
                } else as.matrix(x)[order(x,decreasing=decreasing,...),])
              } # A function that is bafflingly absent from the base xts package
  
  #Connect to my SQL database
  DB_con <- odbcDriverConnect(connection="Driver={SQL Server}; server=Jason_PC;database=GENERIC_DB;trusted_connection=yes;")
  
  setwd("C:/Users/Jason Smyth/Documents/R/Model_Data")