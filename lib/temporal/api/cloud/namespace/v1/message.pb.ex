defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.SearchAttributeType do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :SEARCH_ATTRIBUTE_TYPE_UNSPECIFIED, 0
  field :SEARCH_ATTRIBUTE_TYPE_TEXT, 1
  field :SEARCH_ATTRIBUTE_TYPE_KEYWORD, 2
  field :SEARCH_ATTRIBUTE_TYPE_INT, 3
  field :SEARCH_ATTRIBUTE_TYPE_DOUBLE, 4
  field :SEARCH_ATTRIBUTE_TYPE_BOOL, 5
  field :SEARCH_ATTRIBUTE_TYPE_DATETIME, 6
  field :SEARCH_ATTRIBUTE_TYPE_KEYWORD_LIST, 7
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceRegionStatus.State do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :STATE_UNSPECIFIED, 0
  field :STATE_ADDING, 1
  field :STATE_ACTIVE, 2
  field :STATE_PASSIVE, 3
  field :STATE_REMOVING, 4
  field :STATE_FAILED, 5
end

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

  field :accepted_client_ca_deprecated, 1, type: :string, json_name: "acceptedClientCaDeprecated"
  field :accepted_client_ca, 4, type: :bytes, json_name: "acceptedClientCa"

  field :certificate_filters, 2,
    repeated: true,
    type: Temporal.Api.Cloud.Namespace.V1.CertificateFilterSpec,
    json_name: "certificateFilters"

  field :enabled, 3, type: :bool
end

defmodule Temporal.Api.Cloud.Namespace.V1.ApiKeyAuthSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :enabled, 1, type: :bool
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

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.SearchAttributesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string

  field :value, 2,
    type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.SearchAttributeType,
    enum: true
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :name, 1, type: :string
  field :regions, 2, repeated: true, type: :string
  field :retention_days, 3, type: :int32, json_name: "retentionDays"
  field :mtls_auth, 4, type: Temporal.Api.Cloud.Namespace.V1.MtlsAuthSpec, json_name: "mtlsAuth"

  field :api_key_auth, 7,
    type: Temporal.Api.Cloud.Namespace.V1.ApiKeyAuthSpec,
    json_name: "apiKeyAuth"

  field :custom_search_attributes, 5,
    repeated: true,
    type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.CustomSearchAttributesEntry,
    json_name: "customSearchAttributes",
    map: true,
    deprecated: true

  field :search_attributes, 8,
    repeated: true,
    type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.SearchAttributesEntry,
    json_name: "searchAttributes",
    map: true

  field :codec_server, 6,
    type: Temporal.Api.Cloud.Namespace.V1.CodecServerSpec,
    json_name: "codecServer"
end

defmodule Temporal.Api.Cloud.Namespace.V1.Endpoints do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :web_address, 1, type: :string, json_name: "webAddress"
  field :mtls_grpc_address, 2, type: :string, json_name: "mtlsGrpcAddress"
  field :grpc_address, 3, type: :string, json_name: "grpcAddress"
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

defmodule Temporal.Api.Cloud.Namespace.V1.Namespace.RegionStatusEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Cloud.Namespace.V1.NamespaceRegionStatus
end

defmodule Temporal.Api.Cloud.Namespace.V1.Namespace do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :namespace, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :spec, 3, type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec
  field :state_deprecated, 4, type: :string, json_name: "stateDeprecated", deprecated: true
  field :state, 13, type: Temporal.Api.Cloud.Resource.V1.ResourceState, enum: true
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

  field :region_status, 12,
    repeated: true,
    type: Temporal.Api.Cloud.Namespace.V1.Namespace.RegionStatusEntry,
    json_name: "regionStatus",
    map: true
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceRegionStatus do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :state_deprecated, 1, type: :string, json_name: "stateDeprecated", deprecated: true
  field :state, 3, type: Temporal.Api.Cloud.Namespace.V1.NamespaceRegionStatus.State, enum: true
  field :async_operation_id, 2, type: :string, json_name: "asyncOperationId"
end