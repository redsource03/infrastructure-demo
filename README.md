# infrastructure-demo

## Pre-requisite

```brew package manager```

```docker```

## Install minikube as your local cluster

https://minikube.sigs.k8s.io/docs/start/

```brew install minikube```

### Running minikube

```minikube start --nodes 2 -p infra-demo --driver=docker```

## Installing & Deploying ARGO CD

Create namepsace for argo-cd

```kubectl create namespace argocd```

Install kubectl yaml config

```kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml```

Wait for the pods the run
```kubectl get pods -n argocd```

List all the running service
```kubectl get svc -n argocd```

Port forward the UI server
```kubectl port-forward -n argocd svc/argocd-server 8080:443```

Open ```http://localhost:8080```

Login to ArgoCD

username: admin

password: ```kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo```

Deploy application.yaml:```kubectl apply -f application.yaml```

## How to access pods shell

```kubectl exec --stdin --tty {pod-name} --n {namespace} -- /bin/bash```


