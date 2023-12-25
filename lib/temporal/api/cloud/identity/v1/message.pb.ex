defmodule Temporal.Api.Cloud.Identity.V1.AccountAccess do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :role, 1, type: :string
end

defmodule Temporal.Api.Cloud.Identity.V1.NamespaceAccess do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :permission, 1, type: :string
end

defmodule Temporal.Api.Cloud.Identity.V1.Access.NamespaceAccessesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Cloud.Identity.V1.NamespaceAccess
end

defmodule Temporal.Api.Cloud.Identity.V1.Access do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :account_access, 1,
    type: Temporal.Api.Cloud.Identity.V1.AccountAccess,
    json_name: "accountAccess"

  field :namespace_accesses, 2,
    repeated: true,
    type: Temporal.Api.Cloud.Identity.V1.Access.NamespaceAccessesEntry,
    json_name: "namespaceAccesses",
    map: true
end

defmodule Temporal.Api.Cloud.Identity.V1.UserSpec do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :email, 1, type: :string
  field :access, 2, type: Temporal.Api.Cloud.Identity.V1.Access
end

defmodule Temporal.Api.Cloud.Identity.V1.Invitation do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :created_time, 1, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :expired_time, 2, type: Google.Protobuf.Timestamp, json_name: "expiredTime"
end

defmodule Temporal.Api.Cloud.Identity.V1.User do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :id, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :spec, 3, type: Temporal.Api.Cloud.Identity.V1.UserSpec
  field :state, 4, type: :string
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
  field :invitation, 6, type: Temporal.Api.Cloud.Identity.V1.Invitation
  field :created_time, 7, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :last_modified_time, 8, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
end