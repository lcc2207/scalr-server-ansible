{% if influxdb }
influxdb[:enable] = true
{% elsif appserver1 %}
# Proxy
proxy[:enable] = true

# Memcached
memcached[:enable] = true

# App and Graphics
web[:enable] = true

#Cron
cron[:enable] = true

{% elsif worker1 %}
# worker
service[:enable] = true
rabbitmq[:enable] = true
{% endif %}
