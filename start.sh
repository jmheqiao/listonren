#!/bin/sh

echo "这是一个测试程序"
echo "请在24小时内删除"

# 创建配置文件目录
mkdir -p /opt/alist/data/

cat >/opt/alist/data/config.json <<EOF
{
  "address": "0.0.0.0",
  "port": 5244,
  "assets": "https://npm.elemecdn.com/alist-web@$version/dist",
  "database": {
    "type": "$DB_TYPE",
    "user": "$DB_USER",
    "password": "$DB_PASS",
    "host": "$DB_HOST",
    "port": $DB_PORT,
    "name": "$DB_NAME",
    "table_prefix": "x_",
    "db_file": "data.db"
  },
  "scheme": {
    "https": false,
    "cert_file": "",
    "key_file": ""
  },
  "cache": {
    "expiration": 60,
    "cleanup_interval": 120
  }
}
EOF

cd /opt/alist
./alist -conf data/config.json
