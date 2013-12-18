Weighted Linear Regression
=======================================
In OLS based simple linear models, we shall expect the y-direction errors in the regression curve to 
be approximately equal for all the points (homoscedasticity – i.e. constant variance), and an 
(unweighted) regression calculation is legitimate. 

However, this assumption of homoscedascity may not be valid, and instead the variance of the 
residuals may be found to vary across the range of measurements. This is known as 
heteroscedasticity (or colloquilally the “funnel effect”). 

In some cases the errors will be approximately proportional to analyte concentration (i.e. the 
relative error will be roughly constant), and in still others (perhaps the commonest situation in 
practice) the y-direction error will increase as x increases, but less rapidly than the concentration. 
Both these types of heteroscedastic data should be treated by weighted regression methods. 
Usually an analyst can only learn from experience whether weighted or unweighted methods are 
appropriate. 

Predictions are difficult: examples abound where two apparently similar methods show very 
different error behaviour. Weighted regression calculations are rather more complex than 
unweighted ones, and they require more information (or the use of more assumptions). 
Nonetheless they should be used whenever heteroscedasticity is suspected, and they are now more 
widely applied than formerly, partly as a result of pressure from regulatory authorities in the 
pharmaceutical industry and elsewhere.


Conc=(0,2,4,6,8,10) 
Abso=(0.009,0.158,0.301,0.472,0.577,0.739) 
