# run a pod
kubectl run nginx --image=nginx --port=80
# output manifest
kubectl run nginx --image=nginx --port=80 --dry-run=client -o yaml