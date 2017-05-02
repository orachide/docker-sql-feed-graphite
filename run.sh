sudo docker run -d  --name sql-feed-graphite \
        -e SQL_FEED_GRAPHITE_DB_URL='postgresql://test:test@localhost:5432/test' \
        -e SQL_FEED_GRAPHITE_PREFIX='metrics' \
        -e SQL_FEED_GRAPHITE_HOST='localhost' \
        -e SQL_FEED_GRAPHITE_PORT=5432 \
        -e SQL_FEED_GRAPHITE_QUERIES_DIR='/opt/sql-feed-graphite/queries/' \
        -v /opt/sql-feed-graphite/queries/:/opt/sql-feed-graphite/queries/ \
        orachide/sql-feed-graphite
