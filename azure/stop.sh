set -x

. ./azure/azure_conf.sh

az vm disk detach --resource-group $RESOURCE_GROUP --vm-name $VM_NAME --name $DATADISK_NAME \
  && az snapshot create --resource-group $RESOURCE_GROUP -n $SNAPSHOT_NAME --source $DATADISK_NAME  \
  && az disk delete -g $RESOURCE_GROUP -y -n $DATADISK_NAME \
  && az vm stop -g $RESOURCE_GROUP -n $VM_NAME \
  && az vm deallocate -g $RESOURCE_GROUP -n $VM_NAME

