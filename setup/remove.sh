if [ $# -ne 1 ]; then
    echo "Usage: sh remove.sh <resource-group-name>"
else

az group delete --name $1 --no-wait

fi