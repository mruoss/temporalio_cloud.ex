defmodule Temporal.Api.Cloud.Nexus.V1.EndpointSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :target_spec, 2,
    type: Temporal.Api.Cloud.Nexus.V1.EndpointTargetSpec,
    json_name: "targetSpec"

  field :policy_specs, 3,
    repeated: true,
    type: Temporal.Api.Cloud.Nexus.V1.EndpointPolicySpec,
    json_name: "policySpecs"

  field :description_deprecated, 4,
    type: :string,
    json_name: "descriptionDeprecated",
    deprecated: true

  field :description, 5, type: Temporal.Api.Common.V1.Payload
end

defmodule Temporal.Api.Cloud.Nexus.V1.EndpointTargetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :variant, 0

  field :worker_target_spec, 1,
    type: Temporal.Api.Cloud.Nexus.V1.WorkerTargetSpec,
    json_name: "workerTargetSpec",
    oneof: 0
end

defmodule Temporal.Api.Cloud.Nexus.V1.WorkerTargetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :namespace_id, 1, type: :string, json_name: "namespaceId"
  field :task_queue, 2, type: :string, json_name: "taskQueue"
end

defmodule Temporal.Api.Cloud.Nexus.V1.EndpointPolicySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :variant, 0

  field :allowed_cloud_namespace_policy_spec, 1,
    type: Temporal.Api.Cloud.Nexus.V1.AllowedCloudNamespacePolicySpec,
    json_name: "allowedCloudNamespacePolicySpec",
    oneof: 0
end

defmodule Temporal.Api.Cloud.Nexus.V1.AllowedCloudNamespacePolicySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :namespace_id, 1, type: :string, json_name: "namespaceId"
end

defmodule Temporal.Api.Cloud.Nexus.V1.Endpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :spec, 3, type: Temporal.Api.Cloud.Nexus.V1.EndpointSpec
  field :state, 4, type: Temporal.Api.Cloud.Resource.V1.ResourceState, enum: true
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
  field :created_time, 6, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :last_modified_time, 7, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
end
