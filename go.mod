module example.com/greetings

go 1.21.0

replace (
	//go get: github.com/confluentinc/cc-utils@v0.7.0 updating to
	//  github.com/confluentinc/cc-utils@v0.205.0 requires
	//  github.com/confluentinc/cc-structs@v0.414.0 requires
	//  github.com/confluentinc/cc-structs/operator@v0.239.0 requires
	//  github.com/confluentinc/cc-structs@v0.0.0-20190320051855-97f99cb204dc requires
	//  github.com/confluentinc/protoc-gen-ccloud@v0.0.0-20190122202943-91a08616afd2: invalid pseudo-version: does not match version-control timestamp (expected 20190205163731)
	github.com/confluentinc/protoc-gen-ccloud => github.com/confluentinc/protoc-gen-ccloud v0.0.3
	//go: downloading github.com/confluentinc/cc-utils v0.205.0
	//go get: github.com/confluentinc/cc-utils@v0.7.0 updating to
	//  github.com/confluentinc/cc-utils@v0.205.0 requires
	//  github.com/influxdata/influxdb1-client@v0.0.0-00010101000000-000000000000: invalid version: unknown revision 000000000000
	github.com/influxdata/influxdb1-client => github.com/influxdata/influxdb1-client v0.0.0-20190124185755-16c852ea613f
	github.com/zaffka/mongodb-boltdb-mock v0.0.0-20180816124423-49954d88fa3e => github.com/zaffka/mongodb-boltdb-mock v0.0.0-20221014194232-b4bb03fbe3a0
	gopkg.in/DataDog/dd-trace-go.v1 => gopkg.in/DataDog/dd-trace-go.v1 v1.51.0
)

replace (
	github.com/googleapis/gnostic => github.com/googleapis/gnostic v0.3.1
	k8s.io/api => k8s.io/api v0.0.0-20190718183219-b59d8169aab5
	k8s.io/apiextensions-apiserver => k8s.io/apiextensions-apiserver v0.0.0-20190718185103-d1ef975d28ce
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20190612205821-1799e75a0719
	k8s.io/klog => k8s.io/klog v0.1.0 // indirect
)

require (
	github.com/confluentinc/cloudpartnerships/common v0.371.0
	github.com/stretchr/testify v1.8.4
	go.temporal.io/sdk v1.23.1
	go.temporal.io/sdk/contrib/tools/workflowcheck v0.1.0
)

require (
	cloud.google.com/go/compute v1.19.0 // indirect
	cloud.google.com/go/compute/metadata v0.2.3 // indirect
	github.com/Azure/go-autorest v14.2.0+incompatible // indirect
	github.com/Azure/go-autorest/autorest v0.11.24 // indirect
	github.com/Azure/go-autorest/autorest/adal v0.9.18 // indirect
	github.com/Azure/go-autorest/autorest/date v0.3.0 // indirect
	github.com/Azure/go-autorest/logger v0.2.1 // indirect
	github.com/Azure/go-autorest/tracing v0.6.0 // indirect
	github.com/aws/aws-sdk-go v1.44.7 // indirect
	github.com/confluentinc/azure-sdk-for-go v34.4.1-0.20210518182208-3106c65ca370+incompatible // indirect
	github.com/confluentinc/cc-structs/common v0.1703.0 // indirect
	github.com/confluentinc/cc-structs/kafka/auth v0.1704.0 // indirect
	github.com/confluentinc/cc-structs/kafka/billing v0.1704.0 // indirect
	github.com/confluentinc/cc-structs/kafka/core v0.1704.0 // indirect
	github.com/confluentinc/cc-structs/kafka/marketplace v0.1732.0 // indirect
	github.com/confluentinc/cc-structs/kafka/org v0.1726.0 // indirect
	github.com/confluentinc/cc-structs/kafka/product/core v0.1703.0 // indirect
	github.com/confluentinc/cc-structs/kafka/scheduler v0.1704.0 // indirect
	github.com/confluentinc/cc-structs/kafka/streamgovernance v0.1703.0 // indirect
	github.com/confluentinc/cc-structs/kafka/util v0.1704.0 // indirect
	github.com/confluentinc/cc-structs/operator v0.1703.0 // indirect
	github.com/confluentinc/cc-utils v0.310.0 // indirect
	github.com/confluentinc/cire-obelisk/pkg/apis/network v0.610.0 // indirect
	github.com/confluentinc/proto-go-setter v0.0.0-20201026155413-c6ceb267ee65 // indirect
	github.com/confluentinc/service-runtime-go v0.147.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/envoyproxy/protoc-gen-validate v0.10.0 // indirect
	github.com/evanphx/json-patch v5.6.0+incompatible // indirect
	github.com/facebookgo/clock v0.0.0-20150410010913-600d898af40a // indirect
	github.com/fsnotify/fsnotify v1.5.1 // indirect
	github.com/go-kit/kit v0.12.0 // indirect
	github.com/go-kit/log v0.2.1 // indirect
	github.com/go-logfmt/logfmt v0.6.0 // indirect
	github.com/gofrs/uuid v4.4.0+incompatible // indirect
	github.com/gogo/googleapis v1.4.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/gogo/status v1.1.1 // indirect
	github.com/golang-jwt/jwt/v4 v4.4.2 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.2.3 // indirect
	github.com/googleapis/gax-go/v2 v2.7.1 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.16.0 // indirect
	github.com/hashicorp/hcl v1.0.1-vault-3 // indirect
	github.com/iancoleman/strcase v0.2.0 // indirect
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/jmoiron/sqlx v1.3.5 // indirect
	github.com/lib/pq v1.10.7 // indirect
	github.com/magiconair/properties v1.8.7 // indirect
	github.com/mitchellh/mapstructure v1.4.3 // indirect
	github.com/pborman/uuid v1.2.1 // indirect
	github.com/pelletier/go-toml v1.9.4 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/robfig/cron v1.2.0 // indirect
	github.com/spf13/afero v1.9.2 // indirect
	github.com/spf13/cast v1.4.1 // indirect
	github.com/spf13/cobra v1.3.0 // indirect
	github.com/spf13/jwalterweatherman v1.1.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/spf13/viper v1.10.1 // indirect
	github.com/stretchr/objx v0.5.0 // indirect
	github.com/subosito/gotenv v1.2.0 // indirect
	github.com/travisjeffery/proto-go-sql v0.0.0-20190911121832-39ff47280e87 // indirect
	github.com/ugorji/go/codec v1.2.10 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.temporal.io/api v1.23.0 // indirect
	go.uber.org/atomic v1.10.0 // indirect
	go.uber.org/dig v1.15.0 // indirect
	go.uber.org/fx v1.18.2 // indirect
	go.uber.org/multierr v1.8.0 // indirect
	go.uber.org/zap v1.21.0 // indirect
	golang.org/x/crypto v0.10.0 // indirect
	golang.org/x/net v0.11.0 // indirect
	golang.org/x/oauth2 v0.6.0 // indirect
	golang.org/x/sys v0.9.0 // indirect
	golang.org/x/text v0.10.0 // indirect
	golang.org/x/time v0.3.0 // indirect
	golang.org/x/tools v0.10.0 // indirect
	google.golang.org/api v0.114.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20230525234025-438c736192d0 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20230525234020-1aefcd67740a // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20230530153820-e85fd2cbaebc // indirect
	google.golang.org/grpc v1.55.0 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/ini.v1 v1.66.2 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/api v0.25.2 // indirect
	k8s.io/apiextensions-apiserver v0.17.18-rc.0 // indirect
	k8s.io/apimachinery v0.25.2 // indirect
	k8s.io/klog v1.0.0 // indirect
	k8s.io/utils v0.0.0-20230220204549-a5ecb0141aa5 // indirect
)
