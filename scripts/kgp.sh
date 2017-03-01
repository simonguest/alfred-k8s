echo "{\"rerun\": 5, \"items\": ["
pods=`/usr/local/bin/kubectl get pods | tail -n +2 | awk '{printf "{\"title\":\"%s\",\"arg\":\"%s\",\"subtitle\":\"Ready:%s|Status:%s|Restarts:%s|Age:%s\"}\n", $1, $1, $2, $3, $4, $5}' | sort`
size=`echo "$pods" | wc -l`
index=0
for pod in $pods
do
    echo "$pod" | tr '|' ' '

    ((index++))
    if ! [ $index == $size ];
    then
        echo ","
    fi
done
echo "]}"