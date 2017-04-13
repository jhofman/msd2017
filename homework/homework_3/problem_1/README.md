### 1. Logistic regression for article classification

In this problem you will use logistic regression to build a text classifier that predicts the section that an article from the New York Times (NYT) belongs to based on the words it contains.

``business.tsv`` contains 1000 recent articles from the Business section of the NYT and ``world.tsv`` contains 1000 recent articles from the World section.

Read in each file and use tools from the ``tm`` package---specifically ``VectorSource``, ``Corpus``, and ``DocumentTermMatrix``---to parse the article collection.
Then convert it to a ``sparseMatrix`` (code provided) where each row corresponds to one article and each column to one word, and a non-zero entry indicates that an article contains that word.

Next, create an 80% train / 20% test split of the data and use ``cv.glmnet`` to find a best-fit logistic regression model that minimizes misclassification error.
Provide a plot of the cross-validation curve from ``cv.glmnet``.
Quote the accuracy, confusion matrix, and AUC on the test data and use the ``ROCR`` package to provide a plot of the ROC curve for the test data.
Finally, show the words with the top 10 highest weights for the "business" class, and the same for the "world" class.

See [this vignette](https://web.stanford.edu/~hastie/glmnet/glmnet_alpha.html) for more information on the ``glmnet`` package.