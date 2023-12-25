defmodule Temporal.Api.Cloud.Operation.V1.AsyncOperation do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :string
  field :state, 2, type: :string
  field :check_duration, 3, type: Google.Protobuf.Duration, json_name: "checkDuration"
  field :operation_type, 4, type: :string, json_name: "operationType"
  field :operation_input, 5, type: Google.Protobuf.Any, json_name: "operationInput"
  field :failure_reason, 6, type: :string, json_name: "failureReason"
  field :started_time, 7, type: Google.Protobuf.Timestamp, json_name: "startedTime"
  field :finished_time, 8, type: Google.Protobuf.Timestamp, json_name: "finishedTime"
end