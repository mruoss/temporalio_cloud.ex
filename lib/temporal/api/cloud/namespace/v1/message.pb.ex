defmodule Temporal.Api.Cloud.Namespace.V1.Capacity.Request.State do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.cloud.namespace.v1.Capacity.Request.State",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :STATE_CAPACITY_REQUEST_UNSPECIFIED, 0
  field :STATE_CAPACITY_REQUEST_COMPLETED, 1
  field :STATE_CAPACITY_REQUEST_IN_PROGRESS, 2
  field :STATE_CAPACITY_REQUEST_FAILED, 3
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.SearchAttributeType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.cloud.namespace.v1.NamespaceSpec.SearchAttributeType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

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

  use Protobuf,
    enum: true,
    full_name: "temporal.api.cloud.namespace.v1.NamespaceRegionStatus.State",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_ADDING, 1
  field :STATE_ACTIVE, 2
  field :STATE_PASSIVE, 3
  field :STATE_REMOVING, 4
  field :STATE_FAILED, 5
end

defmodule Temporal.Api.Cloud.Namespace.V1.ExportSink.Health do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.cloud.namespace.v1.ExportSink.Health",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :HEALTH_UNSPECIFIED, 0
  field :HEALTH_OK, 1
  field :HEALTH_ERROR_INTERNAL, 2
  field :HEALTH_ERROR_USER_CONFIGURATION, 3
end

defmodule Temporal.Api.Cloud.Namespace.V1.CertificateFilterSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.CertificateFilterSpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :common_name, 1, type: :string, json_name: "commonName"
  field :organization, 2, type: :string
  field :organizational_unit, 3, type: :string, json_name: "organizationalUnit"
  field :subject_alternative_name, 4, type: :string, json_name: "subjectAlternativeName"
end

defmodule Temporal.Api.Cloud.Namespace.V1.MtlsAuthSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.MtlsAuthSpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :accepted_client_ca_deprecated, 1,
    type: :string,
    json_name: "acceptedClientCaDeprecated",
    deprecated: true

  field :accepted_client_ca, 4, type: :bytes, json_name: "acceptedClientCa"

  field :certificate_filters, 2,
    repeated: true,
    type: Temporal.Api.Cloud.Namespace.V1.CertificateFilterSpec,
    json_name: "certificateFilters"

  field :enabled, 3, type: :bool
end

defmodule Temporal.Api.Cloud.Namespace.V1.ApiKeyAuthSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.ApiKeyAuthSpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Temporal.Api.Cloud.Namespace.V1.LifecycleSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.LifecycleSpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :enable_delete_protection, 1, type: :bool, json_name: "enableDeleteProtection"
end

defmodule Temporal.Api.Cloud.Namespace.V1.CodecServerSpec.CustomErrorMessage.ErrorMessage do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.CodecServerSpec.CustomErrorMessage.ErrorMessage",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :message, 1, type: :string
  field :link, 2, type: :string
end

defmodule Temporal.Api.Cloud.Namespace.V1.CodecServerSpec.CustomErrorMessage do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.CodecServerSpec.CustomErrorMessage",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :default, 1,
    type: Temporal.Api.Cloud.Namespace.V1.CodecServerSpec.CustomErrorMessage.ErrorMessage
end

defmodule Temporal.Api.Cloud.Namespace.V1.CodecServerSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.CodecServerSpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint, 1, type: :string
  field :pass_access_token, 2, type: :bool, json_name: "passAccessToken"

  field :include_cross_origin_credentials, 3,
    type: :bool,
    json_name: "includeCrossOriginCredentials"

  field :custom_error_message, 4,
    type: Temporal.Api.Cloud.Namespace.V1.CodecServerSpec.CustomErrorMessage,
    json_name: "customErrorMessage"
end

defmodule Temporal.Api.Cloud.Namespace.V1.HighAvailabilitySpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.HighAvailabilitySpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :disable_managed_failover, 1, type: :bool, json_name: "disableManagedFailover"
end

defmodule Temporal.Api.Cloud.Namespace.V1.CapacitySpec.OnDemand do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.CapacitySpec.OnDemand",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Cloud.Namespace.V1.CapacitySpec.Provisioned do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.CapacitySpec.Provisioned",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :value, 1, type: :double
end

defmodule Temporal.Api.Cloud.Namespace.V1.CapacitySpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.CapacitySpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :spec, 0

  field :on_demand, 1,
    type: Temporal.Api.Cloud.Namespace.V1.CapacitySpec.OnDemand,
    json_name: "onDemand",
    oneof: 0

  field :provisioned, 2, type: Temporal.Api.Cloud.Namespace.V1.CapacitySpec.Provisioned, oneof: 0
end

defmodule Temporal.Api.Cloud.Namespace.V1.Capacity.OnDemand do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.Capacity.OnDemand",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Cloud.Namespace.V1.Capacity.Provisioned do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.Capacity.Provisioned",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :current_value, 1, type: :double, json_name: "currentValue"
end

defmodule Temporal.Api.Cloud.Namespace.V1.Capacity.Request do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.Capacity.Request",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :state, 1, type: Temporal.Api.Cloud.Namespace.V1.Capacity.Request.State, enum: true
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
  field :spec, 5, type: Temporal.Api.Cloud.Namespace.V1.CapacitySpec
end

defmodule Temporal.Api.Cloud.Namespace.V1.Capacity do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.Capacity",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :current_mode, 0

  field :on_demand, 1,
    type: Temporal.Api.Cloud.Namespace.V1.Capacity.OnDemand,
    json_name: "onDemand",
    oneof: 0

  field :provisioned, 2, type: Temporal.Api.Cloud.Namespace.V1.Capacity.Provisioned, oneof: 0

  field :latest_request, 3,
    type: Temporal.Api.Cloud.Namespace.V1.Capacity.Request,
    json_name: "latestRequest"
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.CustomSearchAttributesEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.NamespaceSpec.CustomSearchAttributesEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.SearchAttributesEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.NamespaceSpec.SearchAttributesEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string

  field :value, 2,
    type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec.SearchAttributeType,
    enum: true
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.NamespaceSpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

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

  field :lifecycle, 9, type: Temporal.Api.Cloud.Namespace.V1.LifecycleSpec

  field :high_availability, 10,
    type: Temporal.Api.Cloud.Namespace.V1.HighAvailabilitySpec,
    json_name: "highAvailability"

  field :connectivity_rule_ids, 11,
    repeated: true,
    type: :string,
    json_name: "connectivityRuleIds"

  field :capacity_spec, 12,
    type: Temporal.Api.Cloud.Namespace.V1.CapacitySpec,
    json_name: "capacitySpec"
end

defmodule Temporal.Api.Cloud.Namespace.V1.Endpoints do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.Endpoints",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :web_address, 1, type: :string, json_name: "webAddress"
  field :mtls_grpc_address, 2, type: :string, json_name: "mtlsGrpcAddress"
  field :grpc_address, 3, type: :string, json_name: "grpcAddress"
end

defmodule Temporal.Api.Cloud.Namespace.V1.Limits do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.Limits",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :actions_per_second_limit, 1, type: :int32, json_name: "actionsPerSecondLimit"
end

defmodule Temporal.Api.Cloud.Namespace.V1.AWSPrivateLinkInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.AWSPrivateLinkInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

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

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.PrivateConnectivity",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :region, 1, type: :string

  field :aws_private_link, 2,
    type: Temporal.Api.Cloud.Namespace.V1.AWSPrivateLinkInfo,
    json_name: "awsPrivateLink"
end

defmodule Temporal.Api.Cloud.Namespace.V1.Namespace.RegionStatusEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.Namespace.RegionStatusEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Cloud.Namespace.V1.NamespaceRegionStatus
end

defmodule Temporal.Api.Cloud.Namespace.V1.Namespace.TagsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.Namespace.TagsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Cloud.Namespace.V1.Namespace do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.Namespace",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

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

  field :connectivity_rules, 14,
    repeated: true,
    type: Temporal.Api.Cloud.Connectivityrule.V1.ConnectivityRule,
    json_name: "connectivityRules"

  field :tags, 15,
    repeated: true,
    type: Temporal.Api.Cloud.Namespace.V1.Namespace.TagsEntry,
    map: true

  field :capacity, 16, type: Temporal.Api.Cloud.Namespace.V1.Capacity
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceRegionStatus do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.NamespaceRegionStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :state_deprecated, 1, type: :string, json_name: "stateDeprecated", deprecated: true
  field :state, 3, type: Temporal.Api.Cloud.Namespace.V1.NamespaceRegionStatus.State, enum: true
  field :async_operation_id, 2, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Namespace.V1.ExportSinkSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.ExportSinkSpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :enabled, 2, type: :bool
  field :s3, 3, type: Temporal.Api.Cloud.Sink.V1.S3Spec
  field :gcs, 4, type: Temporal.Api.Cloud.Sink.V1.GCSSpec
end

defmodule Temporal.Api.Cloud.Namespace.V1.ExportSink do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.ExportSink",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :state, 3, type: Temporal.Api.Cloud.Resource.V1.ResourceState, enum: true
  field :spec, 4, type: Temporal.Api.Cloud.Namespace.V1.ExportSinkSpec
  field :health, 5, type: Temporal.Api.Cloud.Namespace.V1.ExportSink.Health, enum: true
  field :error_message, 6, type: :string, json_name: "errorMessage"

  field :latest_data_export_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "latestDataExportTime"

  field :last_health_check_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "lastHealthCheckTime"
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo.CapacityModeOptions.Provisioned do
  @moduledoc false

  use Protobuf,
    full_name:
      "temporal.api.cloud.namespace.v1.NamespaceCapacityInfo.CapacityModeOptions.Provisioned",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :valid_tru_values, 1, repeated: true, type: :double, json_name: "validTruValues"
  field :max_available_tru_value, 2, type: :double, json_name: "maxAvailableTruValue"
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo.CapacityModeOptions.OnDemand do
  @moduledoc false

  use Protobuf,
    full_name:
      "temporal.api.cloud.namespace.v1.NamespaceCapacityInfo.CapacityModeOptions.OnDemand",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :aps_limit, 1, type: :double, json_name: "apsLimit"
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo.CapacityModeOptions do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.NamespaceCapacityInfo.CapacityModeOptions",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :provisioned, 1,
    type: Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo.CapacityModeOptions.Provisioned

  field :on_demand, 2,
    type: Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo.CapacityModeOptions.OnDemand,
    json_name: "onDemand"
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo.Stats.Summary do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.NamespaceCapacityInfo.Stats.Summary",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :mean, 1, type: :double
  field :p90, 2, type: :double
  field :p99, 3, type: :double
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo.Stats do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.NamespaceCapacityInfo.Stats",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :aps, 1, type: Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo.Stats.Summary
end

defmodule Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.namespace.v1.NamespaceCapacityInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :has_legacy_limits, 2, type: :bool, json_name: "hasLegacyLimits"

  field :current_capacity, 3,
    type: Temporal.Api.Cloud.Namespace.V1.Capacity,
    json_name: "currentCapacity"

  field :mode_options, 4,
    type: Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo.CapacityModeOptions,
    json_name: "modeOptions"

  field :stats, 5, type: Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo.Stats
end
