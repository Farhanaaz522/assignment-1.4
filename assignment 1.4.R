#Assignment1.4

#Question 1
#1. Read multiple JSON files into a directory to convert into a dataset.
#I have files text1, text2, text3 in the directory JSON.

#Answer 

#load rjson package to read the JSON files
library("rjson")

js1=fromJSON(file = "text1.json")
js1  
js2=fromJSON(file = "text2.json")
js2
js3=fromJSON(file = "text3.json")
js3

jsdataframe=data.frame(js1,js2,js3)
print(jsdataframe)

#Question 2

#2. Parse the following JSON into a data frame.
js<-'{
"name": null, "release_date_local": null, "title": "3 (2011)",
"opening_weekend_take": 1234, "year": 2011,
"release_date_wide": "2011-09-16", "gross": 59954
}'
#install package jsonlite
install.packages("jsonlite")
library(jsonlite)
#install package rjsonio
install.packages("RJSONIO")
library(RJSONIO)
js4=fromJSON(js)
print(js4)

jsdataframe1=as.data.frame(js4)
jsdataframe1


#Question 3. Write a script for Variable Binning using R.

#Answer 3

#Binning refers to dividing a list of continuous variables into groups. It is done to discover set of patterns 
#in continuous variables, which are difficult to analyze otherwise.

k<-read.csv("D:/a.csv")
str(k)
summary(k$BP)
#using within() function

l=k
summary(l)
View(l)

l<- within(l,{
  BPcat<- NA
  BPcat[BP>=95 & BP<=120] <- "ideal BP"
  BPcat[BP>=121 & BP<=140] <- "pre-high BP"
  BPcat[BP>=141] <- "high BP"
})
head(l)
tail(l)
l