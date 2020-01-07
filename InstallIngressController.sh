git clone https://github.com/nginxinc/kubernetes-ingress.git
cd kubernetes-ingress/deployments
kubectl apply -f common/ns-and-sa.yaml
kubectl apply -f common/default-server-secret.yaml
kubectl apply -f common/nginx-config.yaml
kubectl apply -f rbac/rbac.yaml
kubectl apply -f deployment/nginx-ingress.yaml
kubectl get pods --namespace=nginx-ingress
kubectl create -f service/nodeport.yaml