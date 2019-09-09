helm init --service-account tiller --tiller-namespace lab
kubectl get all --namespace lab
helm create test
helm install test --tiller-namespace=lab --namespace=lab
helm install test --tiller-namespace=lab --namespace=default # will fail

#cleaning helm
helm list
kubectl get configmaps --namespace=kube-system
helm delete yummy-tarsier
helm delete yummy-tarsier.v1 --purge
helm reset

kubectl get all --namespace kube-system -o wide
kubectl delete service yummy-tarsier-nginx-demo
kubectl delete pod yummy-tarsier-nginx-demo-594d8766c6-pbppm
kubectl delete deployment yummy-tarsier-nginx-demo

#for cleanup delete deployment and servicehelm list
kubectl delete deployment hello-world
kubectl delete service hello-world