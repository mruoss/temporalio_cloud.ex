defmodule Temporal.Api.Cloud.Connectivityrule.V1.ConnectivityRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :spec, 2, type: Temporal.Api.Cloud.Connectivityrule.V1.ConnectivityRuleSpec
  field :resource_version, 4, type: :string, json_name: "resourceVersion"
  field :state, 5, type: Temporal.Api.Cloud.Resource.V1.ResourceState, enum: true
  field :async_operation_id, 6, type: :string, json_name: "asyncOperationId"
  field :created_time, 7, type: Google.Protobuf.Timestamp, json_name: "createdTime"
end

defmodule Temporal.Api.Cloud.Connectivityrule.V1.ConnectivityRuleSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :connection_type, 0

  field :public_rule, 1,
    type: Temporal.Api.Cloud.Connectivityrule.V1.PublicConnectivityRule,
    json_name: "publicRule",
    oneof: 0

  field :private_rule, 2,
    type: Temporal.Api.Cloud.Connectivityrule.V1.PrivateConnectivityRule,
    json_name: "privateRule",
    oneof: 0
end

defmodule Temporal.Api.Cloud.Connectivityrule.V1.PublicConnectivityRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Temporal.Api.Cloud.Connectivityrule.V1.PrivateConnectivityRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :connection_id, 1, type: :string, json_name: "connectionId"
  field :gcp_project_id, 2, type: :string, json_name: "gcpProjectId"
  field :region, 3, type: :string
end
