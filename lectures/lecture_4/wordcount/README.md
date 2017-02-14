The obligatory wordcount example for an introduction to mapreduce,
implemented in hadoop streaming using a simple wrapper class
(hstream). Counts the number of times each word in the input occurs.

To run locally:

    ./run_wordcount.sh

To run with Hadoop:

    ./run_wordcount.sh -h

You can also see the mapper and reducer individually  with `wordcount.py -m` and `wordcount.py -r`, respectively.
