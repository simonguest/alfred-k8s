#alfred-k8s

An Alfred Workflow for Kubernetes

##Prerequisites

- [Alfred 3.x](https://www.alfredapp.com/) (this workflow is tested on 3.3.1)
- Kubernetes CLI ([kubectl](https://kubernetes.io/docs/user-guide/prereqs/)) installed at /usr/local/bin/kubectl

## Supported Commands

- KGC: Kubernetes Get Contexts. Lists all available contexts. Enter to switch to that context.
- KGP: Kubernetes Get Pods. Lists all pods. If running, press enter to open up terminal/bash to that pod.
- KDP: Kubernetes Delete Pod. Delete a pod.
- KP: Kubernetes Proxy. Open up a new proxy session and Kubernetes Dashboard.