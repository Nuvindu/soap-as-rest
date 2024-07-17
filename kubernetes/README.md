## Deployment of the example

### 1. Build the Ballerina project

```ballerina
bal build
```

### 2. Deploy the Kubernetes artifacts

```bash
kubectl apply -f ./target/kubernetes/hello_k8s
```

### 3. Access Service via NodePort

```bash
kubectl expose deployment hello-k8s-deployment --type=NodePort --name=hello-k8s-svc-local
```

### 4. Port Forwarding

```bash
kubectl port-forward svc/hello-k8s-svc 8080:8080
```

### 5. Send Requests to the REST endpoint

```bash
curl http://localhost:8080/operation?value1=4&value2=6
```

