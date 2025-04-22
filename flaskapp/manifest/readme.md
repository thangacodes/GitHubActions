How to use env variables in yaml file?

1. Use a Template Engine Before Applying:
Use a tool like envsubst to inject the environment variable before applying the manifest.

envsubst:

export REPO_NAME="https://github.com/thangacodes/GitHubActions-repo.git"
envsubst < application-template.yaml > argocd-app.yaml
kubectl apply -f argocd-app.yaml
