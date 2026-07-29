#!/bin/bash

set -e

REPO="https://raw.githubusercontent.com/itsadityapidurkar/hadoop-installation-guide/main/linux"
HADOOP_CONF_DIR="/opt/hadoop/etc/hadoop"

echo "========================================"
echo " Apache Hadoop Configuration Installer"
echo "========================================"
echo

echo "[+] Downloading configuration files..."

cd /tmp

wget -q -O core-site.xml     "$REPO/core-site.xml"
wget -q -O hdfs-site.xml     "$REPO/hdfs-site.xml"
wget -q -O mapred-site.xml   "$REPO/mapred-site.xml"
wget -q -O yarn-site.xml     "$REPO/yarn-site.xml"
wget -q -O workers           "$REPO/workers"

echo "[✓] Download complete."

echo
echo "[+] Installing configuration files..."

sudo cp core-site.xml   "$HADOOP_CONF_DIR/"
sudo cp hdfs-site.xml   "$HADOOP_CONF_DIR/"
sudo cp mapred-site.xml "$HADOOP_CONF_DIR/"
sudo cp yarn-site.xml   "$HADOOP_CONF_DIR/"
sudo cp workers         "$HADOOP_CONF_DIR/"

echo
echo "[✓] Configuration files installed successfully!"
echo
echo "Installed to:"
echo "  $HADOOP_CONF_DIR"
