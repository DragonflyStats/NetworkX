Implementation of Robust Regression
======================================
When fitting a least squares regression, we might find some outliers or high leverage data points. 
We have decided that these data points are not data entry errors, neither they are from a different 
population than most of our data. So we have no proper reason to exclude them from the analysis. 
Robust regression might be a good strategy since it is a compromise between excluding these points 
entirely from the analysis and including all the data points and treating all them equally in OLS 
regression. The idea of robust regression is to weigh the observations differently based on how well 
behaved these observations are. 
The idea of robust regression is to weigh the observations differently based on how well behaved 
these observations are. Roughly speaking, it is a form of weighted and reweighted least squares 
regression (i.e. a two step process , first fitting a linear model, then a robust model to correct for the 
influence of outliers). 
Robust regression is done by iterated re-weighted least squares (IRLS). The rlm command in the 
MASS package command implements several versions of robust regression. 
There are several weighting functions that can be used for IRLS. We are going to first use the Huber 
weights in this example. We will then look at the final weights created by the IRLS process. This can 
be very useful. 
Also we will look at an alternative weighting approach to Huber’s weighting – called Bisquare 
weighting. 
 
In Huber weighting, observations with small residuals get a weight of 1 and the larger the residual, 
the smaller the weight. This is defined by the weight function 

<hr>
#### MA4605 Notes
Robust regression is an alternative to ordinary least squares regression (OLS , the type of regression 
we have studied thus far) when data is contaminated with outliers or influential observations and it 
can also be used for the purpose of detecting influential observations. 


*Key Terms*

- Residual: The difference between the predicted value (based on the regression equation) and the 
actual, observed value. 
- Outlier: In linear regression, an outlier is an observation with large residual. In other words, it is an 
observation whose dependent-variable value is unusual given its value on the predictor variables. 
An outlier may indicate a sample peculiarity or may indicate a data entry error or other problem. 
- Leverage: An observation with an extreme value on a predictor variable is a point with high 
leverage. Leverage is a measure of how far an independent variable deviates from its mean. High 
leverage points can have a great amount of effect on the estimate of regression coefficients. 
- Influence: An observation is said to be influential if removing the observation substantially changes 
the estimate of the regression coefficients. Influence can be thought of as the product of leverage 
and outlierness. 
- Cook's distance (or Cook's D): A measure that combines the information of leverage and residual of 
the observation. 

<hr>

### Implementing Robust Regression with R

When fitting a least squares regression, we might find some outliers or high leverage data points. 
We have decided that these data points are not data entry errors, neither they are from a different 
population than most of our data. So we have no proper reason to exclude them from the analysis. 

Robust regression might be a good strategy since it is a compromise between excluding these points 
entirely from the analysis and including all the data points and treating all them equally in OLS 
regression. The idea of robust regression is to weigh the observations differently based on how well 
behaved these observations are. 

The idea of robust regression is to weigh the observations differently based on how well behaved 
these observations are. Roughly speaking, it is a form of weighted and reweighted least squares 
regression (i.e. a two step process , first fitting a linear model, then a robust model to correct for the 
influence of outliers). 

Robust regression is done by iterated re-weighted least squares (IRLS). The `rlm` command in the 
MASS package command implements several versions of robust regression. 

There are several weighting functions that can be used for IRLS. We are going to first use the Huber 
weights in this example. We will then look at the final weights created by the IRLS process. This can 
be very useful. 

Also we will look at an alternative weighting approach to Huber’s weighting – called Bisquare 
weighting. 


