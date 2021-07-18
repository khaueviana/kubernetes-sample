# kubernetes-sample

## References

https://andrewlock.net/deploying-asp-net-core-applications-to-kubernetes-part-1-an-introduction-to-kubernetes/

https://helm.sh/

https://kubernetes.io/

https://rafay.co/the-kubernetes-current/helm-chart-hooks-tutorial/

https://www.golinuxcloud.com/kubernetes-helm-hooks-examples/

## Commands

helm install test-kv . --namespace=default --set test-app-api.image.tag="0.1.0" --set test-app-service.image.tag="0.1.0" --set test-app-job.image.tag="0.1.0" --debug --dry-run

helm upgrade --install my-test-app-release . --namespace=default --set test-app-api.image.tag="0.1.0" --set test-app-service.image.tag="0.1.0" --set test-app-job.image.tag="0.1.0" --debug --dry-run

kubectl get pods

kubectl get all

kubectl get jobs

kubectl describe pods

kubectl logs -n=default -l app.kubernetes.io/name=test-app-job

kubectl get po -A
 
kubectl cluster-info

helm ls

helm uninstall x

helm create test-app

choco install kubernetes-helm

choco install minikube

choco install kubernetes-cli

docker build -f TestApp.Job.Dockerfile -t kv/my-test-job:0.1.0 .

minikube -p minikube docker-env | Invoke-Expression
