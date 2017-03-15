### 1. Cross-validation for polynomial regression

In this problem you will use cross-validation to determine a best-fit polynomial for the data provided in ``polyfit.tsv``.

Use 5-fold cross-validation to select the polynomial degree with the smallest test error, as measured by RMSE.
You may use ``lm()`` to fit models along with the ``poly()`` function.

Provide a plot of the training and test error as a function of the polynomial degree, indicating the optimal degree (i.e., the degree with the smallest average test error).
For this optimal degree, also provide a separate scatter plot of the data with the best-fit model overlayed.
Report the coefficients for the best-fit model.

