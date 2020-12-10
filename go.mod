module github.com/DesistDaydream/kubeappsops

go 1.15

require (
	github.com/docker/distribution v2.7.1+incompatible
	github.com/ghodss/yaml v1.0.0
	github.com/golang/protobuf v1.4.2
	github.com/gorilla/mux v1.8.0
	github.com/heptiolabs/healthcheck v0.0.0-20180807145615-6ff867650f40
	github.com/kubeapps/kubeapps v1.11.3
	github.com/pkg/errors v0.9.1
	github.com/sirupsen/logrus v1.7.0
	github.com/spf13/pflag v1.0.5
	github.com/unrolled/render v1.0.1
	github.com/urfave/negroni v1.0.0
	golang.org/x/net v0.0.0-20200707034311-ab3426394381
	google.golang.org/grpc v1.27.0
	gopkg.in/yaml.v2 v2.4.0
	helm.sh/helm/v3 v3.4.0
	k8s.io/api v0.19.4
	k8s.io/apimachinery v0.19.4
	k8s.io/cli-runtime v0.19.2
	k8s.io/client-go v0.19.2
	k8s.io/helm v2.17.0+incompatible
	k8s.io/kubernetes v1.13.0
	sigs.k8s.io/yaml v1.2.0
)
