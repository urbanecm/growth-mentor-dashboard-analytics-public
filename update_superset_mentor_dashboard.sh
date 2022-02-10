#!/bin/bash

cd '/home/urbanecm/Documents/Growth/Mentor dashboard/analytics'

source conda-activate-stacked 2021-04-07T23.21.00_urbanecm
export PATH=/usr/local/bin:$PATH

# web access is needed, as data about mentor counts are downloaded from the wikis
export http_proxy=http://webproxy.eqiad.wmnet:8080
export https_proxy=http://webproxy.eqiad.wmnet:8080

jupyter nbconvert --to html --execute 'mentor-dashboard-analytics.ipynb'

hdfs dfs -chmod -R u+rx /user/urbanecm/growth_data
