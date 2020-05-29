# openshift-fakesmtp
This is an OpenShift implementation of the https://github.com/Nilhcem/FakeSMTP project.

## Deploy
Run the following command to deploy the image with s2i. 

```
oc new-app https://github.com/kolkos/openshift-fakesmtp.git
```

This will build and deploy the application in your OpenShift project. 

### Create a node port
If you need to make the fakeSMTP service available from outside the cluster, you can map a node port. 

```
oc create -f https://raw.githubusercontent.com/kolkos/openshift-fakesmtp/master/openshift-fakesmtp-svc-external.yaml
```

Now the fakeSMPT app is available on port *:32525*.