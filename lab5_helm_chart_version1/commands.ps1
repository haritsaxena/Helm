#install chart
helm install guestbook
kubectl get all -o wide
helm list
helm status donating-quoll

#upgrade version
helm upgrade donating-quoll guestbook

#checking status
kubectl describe pod -l app=frontend
helm list
helm history donating-quoll

#rollback
helm rollback donating-quoll 1

#delete
helm delete donating-quoll --purge