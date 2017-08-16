
### Timeseries comparison
https://blog.outlyer.com/top10-open-source-time-series-databases
https://docs.google.com/spreadsheets/d/1sMQe9oOKhMhIVw9WmuCEWdPtAoccJ4a-IuZv4fXDHxM/edit#gid=0

### Hadoop and Cassandra
https://www.datastax.com/nosql-databases/nosql-cassandra-and-hadoop

http://blog.markedup.com/2013/02/cassandra-hive-and-hadoop-how-we-picked-our-analytics-stack/

https://www.reddit.com/r/hadoop/comments/2uw8yy/hadoop_vs_cassandra_proscons/

    Datastax is describing Cassandra as a transactional database these days, and that seems reasonable. It's great at moving in & out 
    large volumes of transactional data in an eventually-consistent way.
    It's terrible at analytics. Typically, you need to pull the data out into another system (say, Hadoop) for analytics. Unless your
    analytics is against small enough volumes that it can fit into a single cassandra partition (highly unlikely).
    

### Streaming
https://www.oreilly.com/ideas/the-world-beyond-batch-streaming-101
https://www.oreilly.com/ideas/the-world-beyond-batch-streaming-102
