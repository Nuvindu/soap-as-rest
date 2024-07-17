## Deployment of the example

### 1. Build the Ballerina project

```ballerina
bal build
```

### 2. Run the Docker Image

```bash
docker run -d -v <path/to/config>/Config.toml:/home/ballerina/Config.toml -p 8080:8080 wso2inc/hello:v0.1.0
```

### 3. Send Requests to the REST endpoint

```
curl http://localhost:8080/operation?value1=4&value2=6
```
