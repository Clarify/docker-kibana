#!/bin/bash

set -e
set -u

echo "" >> /kibana/config/kibana.yml
echo "elasticsearch_url: \"$ES_HOST\"" >> /kibana/config/kibana.yml
echo "port: 80" >> /kibana/config/kibana.yml

exec /kibana/bin/kibana

