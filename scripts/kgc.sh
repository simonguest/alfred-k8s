#!/usr/bin/env bash
echo "{\"items\": ["
contexts=`/usr/local/bin/kubectl config get-contexts --no-headers | sed  -e' s/|/ /' -e 's/^ *//' -e 's/^* *//' | awk '{print $1}' | sort`
size=`echo $contexts | wc -w`
current=`/usr/local/bin/kubectl config current-context`
index=0
for ctx in $contexts
do
    if [ "$ctx" == "$current" ];
    then
        echo "{\"title\":\"$ctx\",\"subtitle\":\"Currently Selected Context\",\"arg\":\"$ctx\"}"
    else
        echo "{\"title\":\"$ctx\",\"arg\":\"$ctx\"}"
    fi

    ((index++))
    if ! [ $index = $size ];
    then
        echo ","
    fi
done
echo "]}"
