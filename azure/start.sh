set -x

. ./azure/azure_conf.sh

az disk create -g $RESOURCE_GROUP -n $DATADISK_NAME --source $SNAPSHOT_NAME \
  && az vm disk attach -g $RESOURCE_GROUP --vm-name $VM_NAME --name $DATADISK_NAME \
  && az vm start -g $RESOURCE_GROUP -n $VM_NAME
