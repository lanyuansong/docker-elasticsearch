# 使用基础镜像
FROM  docker.elastic.co/elasticsearch/elasticsearch:8.11.4

# 安装分析插件
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -b https://github.com/infinilabs/analysis-ik/releases/download/v8.11.4/elasticsearch-analysis-ik-8.11.4.zip

# 替换JAR文件（请确保你有合法的替换文件，并且路径正确）
COPY ./x-pack-core-8.11.4.jar /usr/share/elasticsearch/modules/x-pack-core/x-pack-core-8.11.4.jar
