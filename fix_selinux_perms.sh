#!/bin/bash

for i in {/var/lib/etcd,/etc/kubernetes/pki,/etc/kubernetes/pki/etcd,/etc/cni/net.d}
do
  mkdir -p $i && chcon -Rt svirt_sandbox_file_t $i
done
