### 3. Interpreting sales data

This exercise looks at the relationship between price and sales of different brands of orange juice across various supermarkets.

1. Load the sales data in `oj.csv`.
See [here](https://www.rdocumentation.org/packages/bayesm/versions/3.0-2/topics/orangeJuice) for a description of the columns.

2. Do a regression to predict ``logmove`` (the log of total sales for the week) based on ``log(price)`` (the log of each brand's price for that week).
	
	a) How much of the variance in sales does this model explain?
	
	b) What is the elasticity (the coefficient on log price)?
	
	c) Based on the model, if we were to increase the price at which we sell orange juice by 10%, by what percentage should we expect sales to drop?
	
3. Run a new regression, adding both an intercept for each brand and interaction terms between the ``log(price)`` and ``brand``, allowing both overall sales and elasticities to vary by brand.

	a) Report the elasticity for each brand.

	b) Compare this to the results of the simpler model above. How have elasticities changed? Explain any differences you see.

	c) Under this model, which brand is least sensitive to changes in price? Based on the model, if we were to increase the price at which we sell this brand of orange juice by 10%, by what percentage should we expect sales of this brand to drop?

	d) Make a plot showing the fitted model with ``log(price)`` on the horizontal axis, ``logmove`` on the vertical, and a different color line for each brand.

4. Run a final regression that interacts ``log(price)``, ``brand``, and ``feat`` (i.e., whether the product was featured in the store).
	
	a) Make a plot showing the fitted model with ``log(price)`` on the horizontal axis, ``logmove`` on the vertical, a different color line and panel for each brand, and a different line type for featured vs. non-featured products.
	
	b) Repeat this plot, but transform the axes from log to linear space (using ``price`` and ``exp(1)^logmove`` on the horizontal and vertical axes, respectively) for easier interpretation.
	
	c) According to this model, what are average sales of Tropicana when it's priced at $1.50 but not featured in the store?
	
	d) Imagine we wanted to sell this same amount of Tropicana, but were willing to feature it in the store. How much could we charge?

See [this post](http://www.salemmarafi.com/business/price-elasticity/) or [these videos](https://www.khanacademy.org/economics-finance-domain/microeconomics/elasticity-tutorial/price-elasticity-tutorial/v/price-elasticity-of-demand) for some background on elasticity . Also, see [here](http://home.wlu.edu/~gusej/econ398/notes/logRegressions.pdf) for more on log-log transformations in regression.

Note: This problem is adapted from a similar exercise originally written by Justin Rao.
