defmodule Temporal.Api.Cloud.Project.V1.ProjectSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.project.v1.ProjectSpec",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string
  field :lifecycle, 3, type: Temporal.Api.Cloud.Project.V1.LifecycleSpec
end

defmodule Temporal.Api.Cloud.Project.V1.LifecycleSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.project.v1.LifecycleSpec",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :enable_delete_protection, 1, type: :bool, json_name: "enableDeleteProtection"
end

defmodule Temporal.Api.Cloud.Project.V1.Project do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.project.v1.Project",
    protoc_gen_elixir_version: "0.17.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :spec, 2, type: Temporal.Api.Cloud.Project.V1.ProjectSpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :state, 4, type: Temporal.Api.Cloud.Resource.V1.ResourceState, enum: true
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
  field :created_time, 6, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :last_modified_time, 7, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
end
