#!/bin/bash


STREAMING=$HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.2.1.jar


hdfs dfs -rm -r /output 2> /dev/null


$HADOOP_HOME/bin/hadoop jar $STREAMING\
    -input /input/*\
    -mapper 'tr " " "\n"' \
    -output /output

