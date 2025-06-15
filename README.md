# kubectl-deployer-docker

Minimal, secure Alpine-based Docker image with `kubectl` and `gettext`. Ideal for CI/CD deployment pipelines.

- Docker Hub: [https://hub.docker.com/r/gregi/kubectl-deployer/](https://hub.docker.com/r/gregi/kubectl-deployer/)

---

## Tags

| Tag       | Alpine | Kubectl     |
|:---------:|:------:|:-----------:|
|1.8.5      |3.7     |1.8.5        |
|1.10.7     |3.8     |1.10.7       |
|1.11.3     |3.9     |1.11.3       |
|1.26.3     |3.17    |1.26.3       |
|1.30.1     |3.19    |1.30.1       |
|1.33.1     |3.19    |1.33.1       |
|latest     |3.19    |1.33.1       |

---

## Features

- 🔐 Non-root user for runtime security  
- 🔧 `gettext` for templating  
- 🧼 Minimal packages: `curl`, `ca-certificates`, `kubectl`  

---

## How to Use

### Pull the latest image:

```bash
docker pull gregi/kubectl-deployer:latest
```
Pull a specific version:
```bash
docker pull gregi/kubectl-deployer:1.33.1
```
Run kubectl directly:
```bash
docker run --rm gregi/kubectl-deployer:latest version
```
You can mount your kubeconfig if needed:
```bash
docker run --rm -v $HOME/.kube:/root/.kube gregi/kubectl-deployer:latest get pods
```
