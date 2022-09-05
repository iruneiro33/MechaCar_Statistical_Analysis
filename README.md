# MechaCar_Statistical_Analysis

## Overview

AutoRU is manufacturing the new MechaCar, but they are expiriencing some troubles in the production. The purpose of the analysis is to statistically assess the progress of the MechaCar production. The team is performing the analysis based on two datasets containing the production data of the new car. 

## Results 

For the analysis, the team run a simple linear regression to identify significant varibales that can affect the performance as the independent variable-> measured in miles per gallon (mpg). The regressed variables are: vehicle length, vehicle weight, coiler angle, ground clearance and AWD. The results are: 

<img width="829" alt="Regression_with_sumstats" src="https://user-images.githubusercontent.com/7553779/188361641-fc05667a-9723-4c45-a38f-90d0e6007825.png">

In the first result we see the coefficients to each variable. However, the results only show two statistically significant variables (we reject H0) with Pr(>|t|):
1. vehicle length with p-value of .001 significance level 
2. ground_clearance also with p-value of .001 significance level 

The premise of the H0 is that m1 = m2 = m3 [...], that is why we reject it with the significance levels shown above. 

The (multiple) R-squared is 0.7149 and an adjusted R-squared of .6825, which represents an acceptable fit of the model. This means that with the data analyzed, we explain that precentage of the model. We have 44 degrees of freedom

In adittion, the 
