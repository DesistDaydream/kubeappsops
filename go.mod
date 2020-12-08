module github.com/DesistDaydream/kubeappsops

go 1.15

require (
	github.com/docker/distribution v2.7.1+incompatible
	github.com/gorilla/mux v1.8.0
	github.com/kubeapps/common v0.0.0-20200304064434-f6ba82e79f47
	github.com/kubeapps/kubeapps v1.11.3
	github.com/sirupsen/logrus v1.7.0
	github.com/urfave/negroni v1.0.0
	golang.org/x/net v0.0.0-20200707034311-ab3426394381
	gopkg.in/yaml.v2 v2.4.0
	helm.sh/helm/v3 v3.4.0
	k8s.io/api v0.19.4
	k8s.io/apimachinery v0.19.4
	k8s.io/cli-runtime v0.19.2
	k8s.io/client-go v0.19.2
	k8s.io/code-generator v0.19.3 // indirect
	k8s.io/helm v2.17.0+incompatible // indirect
	sigs.k8s.io/yaml v1.2.0
)
