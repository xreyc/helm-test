# FOR FIRST RUN

helm install app-release-name ./
helm install app-release-name ./ --values ./values.yaml

# FOR SECOND RUN

helm upgrade app-release-name ./helm

# DELETE

helm uninstall app-release-name


# DEPLOYMENT
helm install node-app-default ./helm
helm install node-app-dev ./helm --values values-dev.yaml
helm install node-app-prod ./helm --values values-prod.yaml

# UPGRADE
helm upgrade node-app-default ./helm

# ADDING NGINX INGRESS CONTROLLER
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

# INSTALLING NGINX INGRESS CONTROLLER
helm upgrade --install ingress-nginx ingress-nginx --repo https://kubernetes.github.io/ingress-nginx --namespace ingress-nginx --create-namespace

# DELETE ALL NGINX INGRESS CONTROLLER RESOURCE
kubectl delete all  --all -n ingress-nginx