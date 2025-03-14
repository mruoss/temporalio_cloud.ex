defmodule Temporal.Api.Cloud.Usage.V1.RecordType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RECORD_TYPE_UNSPECIFIED, 0
  field :RECORD_TYPE_ACTIONS, 1
  field :RECORD_TYPE_ACTIVE_STORAGE, 2
  field :RECORD_TYPE_RETAINED_STORAGE, 3
end

defmodule Temporal.Api.Cloud.Usage.V1.RecordUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RECORD_UNIT_UNSPECIFIED, 0
  field :RECORD_UNIT_NUMBER, 1
  field :RECORD_UNIT_BYTE_SECONDS, 2
end

defmodule Temporal.Api.Cloud.Usage.V1.GroupByKey do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GROUP_BY_KEY_UNSPECIFIED, 0
  field :GROUP_BY_KEY_NAMESPACE, 1
end

defmodule Temporal.Api.Cloud.Usage.V1.Summary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :record_groups, 3,
    repeated: true,
    type: Temporal.Api.Cloud.Usage.V1.RecordGroup,
    json_name: "recordGroups"

  field :incomplete, 4, type: :bool
end

defmodule Temporal.Api.Cloud.Usage.V1.RecordGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :group_bys, 1,
    repeated: true,
    type: Temporal.Api.Cloud.Usage.V1.GroupBy,
    json_name: "groupBys"

  field :records, 2, repeated: true, type: Temporal.Api.Cloud.Usage.V1.Record
end

defmodule Temporal.Api.Cloud.Usage.V1.GroupBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: Temporal.Api.Cloud.Usage.V1.GroupByKey, enum: true
  field :value, 2, type: :string
end

defmodule Temporal.Api.Cloud.Usage.V1.Record do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Temporal.Api.Cloud.Usage.V1.RecordType, enum: true
  field :unit, 2, type: Temporal.Api.Cloud.Usage.V1.RecordUnit, enum: true
  field :value, 3, type: :double
end
