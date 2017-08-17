### Streaming

(Mandatory) https://www.oreilly.com/ideas/the-world-beyond-batch-streaming-101

https://www.oreilly.com/ideas/the-world-beyond-batch-streaming-102

(Mandatory) https://www.oreilly.com/ideas/questioning-the-lambda-architecture

https://www.confluent.io/blog/introducing-kafka-streams-stream-processing-made-simple/

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

https://www.oreilly.com/ideas/apache-cassandra-for-analytics-a-performance-and-storage-analysis

https://groups.google.com/forum/#!topic/nosql-databases/Z_XQi-x8xvk

    Good discussion on analytics with cassandra vs hdfs

### Elasticsearch

#### ES + Datacenters

https://www.elastic.co/blog/clustering_across_multiple_data_centers

https://www.elastic.co/blog/clustering_across_multiple_data_centers

    One might start by defining a single shared Elasticsearch cluster where nodes are distributed between the New York and London data
    centers. Such a configuration is discouraged; it’s a mistake you will regret. Elasticsearch clustering was designed assuming high
    speed and highly reliable networking. Elastic recommends clusters to be located in the same datacenter and rack, preferably.

https://www.elastic.co/guide/en/elasticsearch/reference/current/allocation-awareness.html

https://t37.net/elasticsearch-cluster-rolling-restart-at-the-speed-of-light-with-rack-awareness.html

    ElasticSearch shard allocation awareness is a rather underlooked feature. It allows you to add your ElasticSearch nodes to virtual
    racks so the primary and replica shards are not allocated in the same rack. That’s extremely handy to ensure fail over when you 
    spread your cluster between multiple data centers.

#### ES + SAN

https://discuss.elastic.co/t/es-and-san/25708/7

#### ES Others

https://www.elastic.co/blog/hot-warm-architecture-in-elasticsearch-5-x

https://www.elastic.co/guide/en/elasticsearch/reference/current/tune-for-indexing-speed.html

https://www.elastic.co/guide/en/elasticsearch/reference/current/tune-for-search-speed.html

### Kafka

[MirrorMaker docs](https://cwiki.apache.org/confluence/pages/viewpage.action?pageId=27846330)

https://kafka.apache.org/documentation/#design_quotas 

    How does a broker react when it detects a quota violation? In our solution, the broker does not return an error rather it attempts 
    to slow down a client exceeding its quota. It computes the amount of delay needed to bring a guilty client under its quota and 
    delays the response for that time. This approach keeps the quota violation transparent to clients (outside of client-side metrics). 
    This also keeps them from having to implement any special backoff and retry behavior which can get tricky. In fact, bad client 
    behavior (retry without backoff) can exacerbate the very problem quotas are trying to solve.

