### 3. Email network statistics

This problem looks at statistics of the email network studied in [a recent paper](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0146113).
The point of the exercise is to see how the structure of the network changes as we gradually remove weak ties from the network.

Run `download_email_network.sh` to download the data. As described [here](http://seeslab.info/downloads/long-term-email-network/), the files contain an undirected, weighted edge list of the number of times that each pair of individuals in a company emailed each other over the course of several years.

First, read in the edge list for 2010 from the `undweighted10.dat` file.
Make a plot of the distribution of edge weights for the entire network.
Use a log-log scale and comment on the result.
What does it tell you about the distribution of tie strength?

Next define a sequence of 12 thresholds on these edge weights from 0 up through 1024 in powers of 2 (i.e., 0, 1, 2, 4, ..., 1024).
For each value in this sequence, remove all edges whose weight is below the threshold and construct a network from the remaining nodes and edges.
For each such network, compute:

* The number of nodes in the network
* The number of edges in the network
* The number of connected components in the network
* The fraction of nodes contained in the largest connected component of the network
* The average distance between all pairs of nodes in the network

Plot each of these five quantities (on the vertical axis) as a function of the thresholds used (on a logarithmic horizontal axis), and comment on the shape of them.
What's happening to the number of nodes, edges, and components?
How and why is the average distance between nodes changing?

You should notice a peak in the number of connected components as a function of the threshold.
What's happening here?
Explain and provide a visualization of the network at this peak, as well as at the next threshold value beyond the peak.

You do not need to write functions to compute connected component and shortest path length statistics yourself, and can instead rely on pre-existing libraries for this functionality.
The ``igraph`` package for R that we used in class is recommended.
The ``networkx`` in Python is also acceptable.
