# Kubernetes Funny Log Viewer

This project is designed to streamline and enhance the Kubernetes logging and inspection experience. It leverages `kubectl`, `stern`, `fzf`, and `jq` to create an interactive log viewer, allowing users to search, filter, and inspect logs from Kubernetes pods, along with retrieving detailed information about associated resources. The goal is to provide a more flexible and interactive approach to viewing logs, inspecting pods, nodes, services, and ingress information instead of bunch of disparate resources

Inspired by <https://junegunn.github.io/fzf/tips/browsing-log-streams/>

## Usage

See fzf search syntax here <https://github.com/junegunn/fzf?tab=readme-ov-file#search-syntax>

```bash
kubectl flv <pod-name-filter> <stern-additional-parameters>
```

for example:

```bash
kubectl flv kube --no-follow -s 1h
```

![alt text](img/main.jpg "Title")

## Prerequisites

- **Kubernetes CLI (`kubectl`)**: Ensure `kubectl` is installed and configured to access your Kubernetes cluster.
- **Krew**: Install Krew to manage `kubectl` plugins.

## Installation Steps

### 1. Install Krew

If you don’t have Krew installed, follow the [installation instructions](https://krew.sigs.k8s.io/docs/user-guide/setup/install/) on the official website or run the following commands:

### 2. Install Required Dependencies with Krew

```bash
kubectl krew install stern
kubectl krew install top
kubectl krew install lineage
```

### 3. Install Additional Dependencies

```bash
# On Debian/Ubuntu
sudo apt update && sudo apt install fzf

# On macOS (via Homebrew)
brew install fzf

# On Debian/Ubuntu
sudo apt update && sudo apt install jq

# On macOS (via Homebrew)
brew install jq

```

### 4. Install the Plugin Script

```bash
git clone https://github.com/loktionovam/kubectl-flv.git
cd kubectl-flv
chmod +x kubectl-flv
sudo cp kubectl-flv kubectl-flv-preview /usr/local/bin/
```
