#/bin/sh -ex

for i in `env | awk -F "=" '{print $1}' | grep ".*SECURE_ENV.*"` 
do
    value=`printenv $i`
    perl -p -i -e "s,$i,$value,g" /etc/nginx/*.conf
done

nginx -g 'daemon off;'


