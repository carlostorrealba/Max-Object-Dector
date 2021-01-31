IP=`ibmcloud ks workers --cluster mycluster-free | grep [1-9] | awk '{print $2}'`
PORT=`kubectl describe service max-object-detector -n prod | grep NodePort |grep TCP |awk '{print $3}' | cut -f1 -d'/'`
echo "Visit APP in: http://${IP}:${PORT}"
