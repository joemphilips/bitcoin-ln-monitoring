set -x

SCRIPT_PATH=`realpath $0`
SCRIPT_DIR_PATH=`dirname $SCRIPT_PATH`

. $SCRIPT_DIR_PATH/azure_conf.sh



az disk create -g $RESOURCE_GROUP -n $DATADISK_NAME --source $SNAPSHOT_NAME \
  && az vm disk attach -g $RESOURCE_GROUP --vm-name $VM_NAME --name $DATADISK_NAME \
  && az vm start -g $RESOURCE_GROUP -n $VM_NAME
