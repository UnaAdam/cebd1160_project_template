# cebd1160_project_template
Instructions and template for final projects.

| Dragica Adamovic | 2019-03-22 |
|:-------|:---------------|
|Your name here | Completion date|

-----

### Resources
Your repository should include the following:

- Python script for your analysis
- Results figure/saved file
- Dockerfile for your experiment
- runtime-instructions in a file named RUNME.md

-----

## Research Question

The aim of this project is to predict the housing prices based on a hystorical, given, data and to quantify the relationship between the indicators. On the end, we want to test how accurate is our statistical regression model. 

### Abstract

For the purpose of this study we have used the Boston housing dataset. This dataset contains the data of different housing around city of Boston. The main assumtpion of this parametric model is that the housing prices will be influenced by the same factor in past and in the future. We will analyse that data, and determine the nature of the relationship between the target variable and the other given attributes. If there is a high correlation coefficient between the two, we will create statistical model that will help us to predict the housing prices. 

### Introduction

Boston housing dataset was extensivly used to test an algorithams and for machine learning. It was originally published by Harrison, D. and Rubinfeld, D.L. (https://www.cs.toronto.edu/~delve/data/boston/bostonDetail.html). It contains 13 attributes of 506 cases. Therefore, this dataset is relativly small in size. The attributes given are listed below:

01. CRIM - per capita crime rate by town
02. ZN - proportion of residential land zoned for lots over 25,000 sq.ft.
03. INDUS - proportion of non-retail business acres per town.
04. CHAS - Charles River dummy variable (1 if tract bounds river; 0 otherwise)
05. NOX - nitric oxides concentration (parts per 10 million)
06. RM - average number of rooms per dwelling
07. AGE - proportion of owner-occupied units built prior to 1940
08. DIS - weighted distances to five Boston employment centres
09. RAD - index of accessibility to radial highways
10. TAX - full-value property-tax rate per $10,000
11. PTRATIO - pupil-teacher ratio by town
12. B - 1000(Bk - 0.63)^2 where Bk is the proportion of blacks by town
13. LSTAT - % lower status of the population
14. MEDV - Median value of owner-occupied homes in $1000's

(Source: https://www.cs.toronto.edu/~delve/data/boston/bostonDetail.html)

The MEDV value or the price is our target variable and the rest, all other attributes, are feature variables, based on which we can potentially predict the value of the house. 


### Method

Find below the pseudocode for analysis of the Boston dataset.

1. First, we need to import the dataset, for instance, from sklearn
  1.1 import the data from sklearn with the command from sklearn.import load_boston
  1.2. store the data in a variable, for instance the command boston = boston.load()
  
2. We can explore our dataset, features, and shape
   2.1 print the dataset features with the command print(boston.keys())
   2.2 print the dataset shape with the command print(boston.data.shape())
   2.3 since we have as one of the keys feature_names we can explore this by typing the command print(boston.feature_names)
   2.4 also, we can print the description of this dataset by command print(boston.DESCR)
   2.5 we can print the data, for instance first couple of rows in order to verify if our data is adequately stored, for this we can            use 
       2.5.1 import the panadas library, command import pandas as pd
       2.5.2 create a data frame, command and store it in a variable, for instance bos = pd.DataFrame(boston.data)
       2.5.3 print the data using the command print(bos.head())
       2.5.4 if the name of the columns are just showing the index we need to rename it and store it in a variable, command     boston_columns = boston.feature_names
       2.5.5 thereafter, print the new table with columns head that are renamed, command print(bos.head())
       
3. Next, we can performe the summary statistics
   3.1 print the summary statistics, print(bos.describe())
   
4. Explore the data with graphs and heat maps in order to see the relationship
   4.1 import various libraries for printing different formats of images
   4.2 print the correlation matrix with heatmap and save an image
   4.3 print the matrix of hystograms and scaterplot of all data in a correlation matrix with the pairplote command and save an image
      
5. Split data to target value and predictor value 
   5.1 split the data to the target value to predictor value
       5.1.1 we will store in a X variable predictor value, command X = bos.drop['PRICE', axis = 1]
       5.1.2 we will store in a Y variable target value, price, command Y = bos['PRICE']
       
6. Split data into train and test data
   6.1 split data to train and test data
   6.2 print the shape of data
   
7. Create a regression model 
   7.1 import the libraries sklearn import linear regression model and store it in a variable
   7.2 fit the curve, in our case line, thorugh the dataset lm.fit(X_train, Y_train)
   7.3 predict, lm.predict(X_test) and store it in a variable vall Y_pred
   7.4 print the graphs with data, predicted values and actual values

8. Calculate the mean square error/average of the square of errors
   8.1 import the relevant libraries, if not yet imported
   8.2 find the mse of predicited and actual values and store it in a variables
   8.3 print the results 

### Results

Brief (2 paragraph) description about your results. Include:

- At least 1 figure
- At least 1 "value" that summarizes either your data or the "performance" of your method
- A short explanation of both of the 

### Discussion
Brief (no more than 1-2 paragraph) description about what you did. Include:

- interpretation of whether your method "solved" the problem
- suggested next step that could make it better.

### References
All of the links

-------
