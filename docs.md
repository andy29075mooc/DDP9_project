SVM example using Fisher's Iris Data
========================================================
author: Andy Johnson
date: 12/21/2014

Intro
========================================================

This Shiny app lets the user explore the application of a Support Vector Machine (SVM) classification algorithm using the classic Fisher's iris dataset.

Data
========================================================

Fisher's iris data describes petal and sepal dimensions of three species of irises. This dataset is commonly used to illustration classification models, as the dimensional characteristics are very distinct between the three species. 

```r
summary(iris)
```

```
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
       Species  
 setosa    :50  
 versicolor:50  
 virginica :50  
                
                
                
```

Support Vector Machine algorithms
========================================================

A Support Vector Machine (SVM) is a supervised classification algorithm that attempts to identify a separating hyperplane between the identified classes. It can use a variety of kernel functions to transform the original problem space into higher dimensions. 

The kernel functions available here include:
- linear
- radial
- polynomial

Using this Shiny App
========================================================

- To use this Shiny App, first select the kernel function type, followed by the petal and sepal dimensions desired. 
- The SVM model will run, and a plot will be displayed. The plot shows the observations from all three species (color-coded by type), along with the SVM-derived classification boundaries.
