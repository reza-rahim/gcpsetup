apt-get update
apt-get -y install openjdk-8-jdk

wget https://www-us.apache.org/dist/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz
tar xvf hadoop-2.7.7.tar.gz
sudo mv hadoop-2.7.7 /opt/hadoop

wget https://archive.apache.org/dist/spark/spark-2.3.3/spark-2.3.3-bin-without-hadoop.tgz
tar xvf spark-2.3.3-bin-without-hadoop.tgz 
sudo mv spark-2.3.3-bin-without-hadoop /opt/spark 

cat >> /etc/environment <<EOL
JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
HADOOP_HOME=/opt/hadoop
SPARK_HOME=/opt/spark
EOL
