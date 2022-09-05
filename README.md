# MechaCar_Statistical_Analysis

## Overview

AutoRU is manufacturing the new MechaCar, but they are expiriencing some troubles in the production. The purpose of the analysis is to statistically assess the progress of the MechaCar production. The team is performing the analysis based on two datasets containing the production data of the new car. 

## Results 

For the analysis, the team run a simple linear regression to identify significant varibales that can affect the performance as the independent variable-> measured in miles per gallon (mpg). The regressed variables are: vehicle length, vehicle weight, coiler angle, ground clearance and AWD. The results are: 

<img width="829" alt="Regression_with_sumstats" src="https://user-images.githubusercontent.com/7553779/188361641-fc05667a-9723-4c45-a38f-90d0e6007825.png">

In the first result we see the coefficients to each variable. However, the results only show two statistically significant variables (we reject H0) with Pr(>|t|) of 95%:. The premise of the H0 is that m1 = m2 = m3 [...], that is why we reject it with the significance levels shown above. 
1. vehicle length with p-value of .001 significance level 
2. ground_clearance also with p-value of .001 significance level 
3. However, if we change the p-value to 90%, the vehicle_weight also becomes significant.

The (multiple) R-squared is 0.7149 and an adjusted R-squared of .6825, which represents an acceptable fit of the model. This means that with the data analyzed, how much is captured by the variables used to explain that model or the predicted variable. The F-test (variance) is 22.07 and there are 44 degrees of freedom. This test just gives us an idea of the data that is being used and the measurement of the variances in our data, assuming an f-distribution. As such, even if the model does explain a high percentage (~71%) of the mpg, there is still room for improvement by feeding more data or adding other variables without correlation with the current used ones. Also the residual standard error is large, with the improvement of the model this could be lowered, this means that there are stil "outlayered" scattered data points. 


## Summary stats for Suspension coils

In adittion, the team obtained some analysis for the suspension coils, as shown in the next two tables 

<img width="339" alt="mean_R" src="https://user-images.githubusercontent.com/7553779/188366035-00ac34bf-e0e1-4316-899a-851076064463.png">

<img width="450" alt="stats_bylot_R" src="https://user-images.githubusercontent.com/7553779/188366038-3535e80f-dc8c-45a3-93ce-d520c47ed27b.png">

From the design specifications, the suspension coils must not exceed 100 pounds per square inch. As a result, from the chart above Lot 3 does not meet this criteria, exceeding the capacity with a variance of 170.286. Lot 1 and Lot 2 does satidfactory meet the required criteria.

Finally a t-test of each lot is run to measure the size of the difference of the variation (means of two groups), in this case the three confirm that we correctly rejected H0. However lot 1 has a high p-value (=1), further attention shoulb be put to this result to assess wether the predictive potential can be improved. 

![t_test](https://user-images.githubusercontent.com/7553779/188367822-aafb6faf-9346-4e58-bd60-88a88052fcde.png)



