defmodule Temporal.Api.Cloud.Auditlog.V1.LogRecord do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.auditlog.v1.LogRecord",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :emit_time, 1, type: Google.Protobuf.Timestamp, json_name: "emitTime"
  field :operation, 5, type: :string
  field :status, 7, type: :string
  field :version, 9, type: :int32
  field :log_id, 10, type: :string, json_name: "logId"
  field :principal, 12, type: Temporal.Api.Cloud.Auditlog.V1.Principal
  field :raw_details, 13, type: Google.Protobuf.Struct, json_name: "rawDetails"
  field :x_forwarded_for, 14, type: :string, json_name: "xForwardedFor"
  field :async_operation_id, 15, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Auditlog.V1.Principal do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.auditlog.v1.Principal",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: :string
  field :id, 2, type: :string
  field :name, 3, type: :string
  field :api_key_id, 4, type: :string, json_name: "apiKeyId"
end
