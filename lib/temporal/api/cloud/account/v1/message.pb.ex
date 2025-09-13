defmodule Temporal.Api.Cloud.Account.V1.MetricsSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accepted_client_ca, 2, type: :bytes, json_name: "acceptedClientCa"
end

defmodule Temporal.Api.Cloud.Account.V1.AccountSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metrics, 1, type: Temporal.Api.Cloud.Account.V1.MetricsSpec
end

defmodule Temporal.Api.Cloud.Account.V1.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Temporal.Api.Cloud.Account.V1.Account do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :string
  field :spec, 2, type: Temporal.Api.Cloud.Account.V1.AccountSpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :state, 4, type: Temporal.Api.Cloud.Resource.V1.ResourceState, enum: true
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
  field :metrics, 6, type: Temporal.Api.Cloud.Account.V1.Metrics
end

defmodule Temporal.Api.Cloud.Account.V1.AuditLogSinkSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :sink_type, 0

  field :name, 1, type: :string

  field :kinesis_sink, 2,
    type: Temporal.Api.Cloud.Sink.V1.KinesisSpec,
    json_name: "kinesisSink",
    oneof: 0

  field :pub_sub_sink, 3,
    type: Temporal.Api.Cloud.Sink.V1.PubSubSpec,
    json_name: "pubSubSink",
    oneof: 0

  field :enabled, 4, type: :bool
end
