# Login to cluster
oc login --username {username} --server=https://{cluster_url}:{port}

# change namespace
oc project {namespace-name}

# see all project names
oc projects

# scale down all deployments --> to scale up, change amount of replicas
oc get deployments --no-headers -o custom-columns=":metadata.name" | xargs -I {} oc scale deployment {} --replicas=0

# alternative scale down cmd
oc get deployments --no-headers -o custom-columns=":metadata.name" | while read deployment; do oc scale deployment "$deployment" --replicas=0; done

# create a yaml file of a resource
oc get {resource-type} {resource-name} -o yaml > {file-name}.yaml
## example
oc get configmap ca.crt -o yaml > configmap_ca.yaml

# delete all resources
oc delete {resource-type} --all

# suspend cronjob
oc patch cronjob {cronjob-name} -p '{"spec" : {"suspend" : true}}'

# ssh into a pod
oc exec -it {pod-name} -- /bin/bash

# delete a pod (or restart it if deployed via replicas)
oc delete pod {pod-name}
oc delete pods -all
# delete all pods WITH label
oc delete pods --all --selector='app={label-name}'
# delete all pods EXCEPT those with label
oc delete pods --all --selector='!app={label-name}'