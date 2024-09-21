defmodule Temporal.Api.Cloud.Namespace.V1.CertificateFilterSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :common_name, 1, type: :string, json_name: "commonName"
  field :organization, 2, type: :string
  field :organizational_unit, 3, type: :string, json_name: "organizationalUnit"
  field :subject_alternative_name, 4, type: :string, json_name: "subjectAlternativeName"
end

defmodule Temporal.Api.Cloud.Namespace.V1.MtlsAuthSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :accepted_client_ca, 1, type: :string, json_name: "acceptedClientCa"

  field :certificate_filters, 2,
    repeated: true,
    type: Temporal.Api.Cloud.Namespace.V1.CertificateFilterSpec,
    json_name: "certificateFilters"
end

defmodule Temporal.Api.Cloud.Namespace.V1.CodecServerSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :endpoint, 1, type: :string
  field :pass_access_token, 2, type: :bool, json_name: "passAccessToken"

  field :include_cross_origin_credentials, 3,
    type: :bool,
    json_name: "includeCrossOriginCredentials"
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.CustomSearchAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :name, 1, type: :string
  field :regions, 2, repeated: true, type: :string
  field :retention_days, 3, type: :int32, json_name: "retentionDays"
  field :mtls_auth, 4, type: Temporal.Api.Cloud.Namespace.V1.MtlsAuthSpec, json_name: "mtlsAuth"

  field :custom_search_attributes, 5,
    repeated: true,
    type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.CustomSearchAttributesEntry,
    json_name: "customSearchAttributes",
    map: true

  field :codec_server, 6,
    type: Temporal.Api.Cloud.Namespace.V1.CodecServerSpec,
    json_name: "codecServer"
end

defmodule Temporal.Api.Cloud.Namespace.V1.Endpoints do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :web_address, 1, type: :string, json_name: "webAddress"
  field :grpc_address, 2, type: :string, json_name: "grpcAddress"
end

defmodule Temporal.Api.Cloud.Namespace.V1.Limits do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :actions_per_second_limit, 1, type: :int32, json_name: "actionsPerSecondLimit"
end

defmodule Temporal.Api.Cloud.Namespace.V1.AWSPrivateLinkInfo do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :allowed_principal_arns, 1,
    repeated: true,
    type: :string,
    json_name: "allowedPrincipalArns"

  field :vpc_endpoint_service_names, 2,
    repeated: true,
    type: :string,
    json_name: "vpcEndpointServiceNames"
end

defmodule Temporal.Api.Cloud.Namespace.V1.PrivateConnectivity do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :region, 1, type: :string

  field :aws_private_link, 2,
    type: Temporal.Api.Cloud.Namespace.V1.AWSPrivateLinkInfo,
    json_name: "awsPrivateLink"
end

defmodule Temporal.Api.Cloud.Namespace.V1.Namespace do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :namespace, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :spec, 3, type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec
  field :state, 4, type: :string
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
  field :endpoints, 6, type: Temporal.Api.Cloud.Namespace.V1.Endpoints
  field :active_region, 7, type: :string, json_name: "activeRegion"
  field :limits, 8, type: Temporal.Api.Cloud.Namespace.V1.Limits

  field :private_connectivities, 9,
    repeated: true,
    type: Temporal.Api.Cloud.Namespace.V1.PrivateConnectivity,
    json_name: "privateConnectivities"

  field :created_time, 10, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :last_modified_time, 11, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
end