# Summary

* K8S manifests to run postgres:18-alpine image with persistent storage
* A secret for the password
* A StatefulSet (recommended for databases)
* A ClusterIP Service for in-cluster access
* An optional NodePort Service for external access on a node
* The StatefulSet uses a volumeClaimTemplate so storage is dynamically provisioned if the cluster has a StorageClass
* A small ConfigMap holds non-sensitive env values

## Apply manifests in order

1. namespace
2. secret/configmap
3. pv/pvc (if used)
4. statefulset
5. services

```
kubectl apply -f namespace.yaml
kubectl apply -f secret.yaml
kubectl apply -f configmap.yaml
kubectl apply -f pv.yaml
kubectl apply -f statefulset.yaml
kubectl apply -f services.yaml
```
