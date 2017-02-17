#!/bin/bash
#
# downloads movielens rating data
#
# see http://grouplens.org/datasets/movielens/ for more info
#

url=http://files.grouplens.org/datasets/movielens/ml-10m.zip

# download ratings zip file
[ -f movielens_10M.zip ] || curl -o movielens_10M.zip $url

# uncompress zip file
if [ ! -f ratings.dat ]
    then
    unzip movielens_10M.zip && mv ml-10M100K/* .
fi

# reformat ratings to comma-separated file
[ -f ratings.csv ] || cat ratings.dat | sed 's/::/,/g' > ratings.csv

# reformat movies to tab-separated file (some titles have commas)
[ -f movies.tsv ] || cat moives.dat | sed 's/::/,/g' > movies.tsv
