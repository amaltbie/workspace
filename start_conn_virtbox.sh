#!/bin/bash

VM_ID=$1
VM_COM_PIPE=`VBoxManage showvminfo $VM_ID | grep "UART 1" | awk '{print $12}' | tr -d "\'"`
BAUD_RATE='115200'

VBoxManage startvm $VM_ID --type headless
sleep 3
minicom -D unix#$VM_COM_PIPE -b $BAUD_RATE
