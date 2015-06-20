Clustering Prototype
========================================================
author: Sharath Gokula
date: June-15-2015
font-family: 'Garamond'

Applications of Clustering in Marketing
========================================================

This application provides an automated approach to clustering. Clustering is a technique that can help guide your marketing strategy by:


- Identifying characteristics of products that are similar
- Identifying groups of customers that are alike 
- Dividing your target market into subsets of businesses

How can clustering help your business?
========================================================
- You can segment your customer base to target them with customized promotions
- You can establish differences between your products and your competitor's products
- You can identify geogrpahic markets that are similar to your current location


Steps Involved
========================================================
Step 1: Analyze the dataset to pick the variables
<br>
<br>
Step 2: Normalize the data to ensure larger values do not dominate
<br>
<br>
Step 3: Build the cluster model
<br>
<br>
Step 4: Compute the average for each of the clusters
<br>
<br>
Step 5: Define characteristics of each of the clusters


The algortihm 
========================================================


```r
library(caret)
summary(cars) #Analyzes the data
preproc = preProcess(cars) #preprocesses the data
airlinesNorm = predict(preproc, cars) #does the normalization
kMeansClusters <- kmeans(cars, 3) #Clusters the data
tapply(cars$speed, kMeansClusters$cluster, mean) #Compute the average of each cluster
```

Graphical Representation of Clusters
========================================================

![plot of chunk unnamed-chunk-2](ClusteringAppPresentation-figure/unnamed-chunk-2-1.png) 
