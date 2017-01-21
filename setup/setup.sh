if [ $# -lt 4 ]; then

echo "Usage: sh setup.sh <resourece-group-name> <resource-group-location> <app-name> <docker-container-name>"

else

az group create --name $1 --location "$2"
az appservice plan create --name $3-asp --resource-group $1 --location "$2" --is-linux --sku S1
az appservice web create --name $3 --plan $3-asp --resource-group $1
az appservice web config container update --docker-custom-image-name $4 --name $3 --resource-group $1

fi