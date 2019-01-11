FROM docker.elastic.co/elasticsearch/elasticsearch:6.3.2
# COPY ./config/elasticsearch.yml /usr/share/elasticsearch/config/

## 安装中文分词插件
RUN cd /usr/share/elasticsearch/bin && \
    ./elasticsearch-plugin install --batch https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.3.2/elasticsearch-analysis-ik-6.3.2.zip