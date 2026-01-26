defmodule Temporal.Api.Cloud.Operation.V1.AsyncOperation.State do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.cloud.operation.v1.AsyncOperation.State",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_PENDING, 1
  field :STATE_IN_PROGRESS, 2
  field :STATE_FAILED, 3
  field :STATE_CANCELLED, 4
  field :STATE_FULFILLED, 5
  field :STATE_REJECTED, 6
end

defmodule Temporal.Api.Cloud.Operation.V1.AsyncOperation do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.operation.v1.AsyncOperation",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :state_deprecated, 2, type: :string, json_name: "stateDeprecated", deprecated: true
  field :state, 9, type: Temporal.Api.Cloud.Operation.V1.AsyncOperation.State, enum: true
  field :check_duration, 3, type: Google.Protobuf.Duration, json_name: "checkDuration"
  field :operation_type, 4, type: :string, json_name: "operationType"
  field :operation_input, 5, type: Google.Protobuf.Any, json_name: "operationInput"
  field :failure_reason, 6, type: :string, json_name: "failureReason"
  field :started_time, 7, type: Google.Protobuf.Timestamp, json_name: "startedTime"
  field :finished_time, 8, type: Google.Protobuf.Timestamp, json_name: "finishedTime"
end
