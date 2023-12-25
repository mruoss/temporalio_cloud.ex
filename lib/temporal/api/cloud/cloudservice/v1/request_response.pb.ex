defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUsersRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :email, 3, type: :string
  field :namespace, 4, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUsersResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :users, 1, repeated: true, type: Temporal.Api.Cloud.Identity.V1.User
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :user_id, 1, type: :string, json_name: "userId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :user, 1, type: Temporal.Api.Cloud.Identity.V1.User
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateUserRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :spec, 1, type: Temporal.Api.Cloud.Identity.V1.UserSpec
  field :async_operation_id, 2, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateUserResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :user_id, 1, type: :string, json_name: "userId"

  field :async_operation, 2,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateUserRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :user_id, 1, type: :string, json_name: "userId"
  field :spec, 2, type: Temporal.Api.Cloud.Identity.V1.UserSpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateUserResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteUserRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :user_id, 1, type: :string, json_name: "userId"
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteUserResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.SetUserNamespaceAccessRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
  field :user_id, 2, type: :string, json_name: "userId"
  field :access, 3, type: Temporal.Api.Cloud.Identity.V1.NamespaceAccess
  field :resource_version, 4, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.SetUserNamespaceAccessResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAsyncOperationRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :async_operation_id, 1, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAsyncOperationResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :spec, 2, type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string

  field :async_operation, 2,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespacesRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :name, 3, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespacesResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespaces, 1, repeated: true, type: Temporal.Api.Cloud.Namespace.V1.Namespace
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: Temporal.Api.Cloud.Namespace.V1.Namespace
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
  field :spec, 2, type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.RenameCustomSearchAttributeRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string

  field :existing_custom_search_attribute_name, 2,
    type: :string,
    json_name: "existingCustomSearchAttributeName"

  field :new_custom_search_attribute_name, 3,
    type: :string,
    json_name: "newCustomSearchAttributeName"

  field :resource_version, 4, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.RenameCustomSearchAttributeResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :namespace, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetRegionsRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetRegionsResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :regions, 1, repeated: true, type: Temporal.Api.Cloud.Region.V1.Region
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetRegionRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :region, 1, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetRegionResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :region, 1, type: Temporal.Api.Cloud.Region.V1.Region
end