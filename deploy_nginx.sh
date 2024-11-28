#|/bin/bash
helm upgrade --install my-custom-nginx ./nginx

kubectl get pods
kubectl get services

echo "Waiting for pod to be Running before getting your application's URL..."
kubectl wait --for=condition=Ready pod -l app.kubernetes.io/instance=my-custom-nginx

minikube service my-custom-nginx --url 