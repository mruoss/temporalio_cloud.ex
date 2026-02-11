defmodule Temporal.Api.Cloud.Cloudservice.V1.GetCurrentIdentityRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetCurrentIdentityRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetCurrentIdentityResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetCurrentIdentityResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :principal, 0

  field :user, 1, type: Temporal.Api.Cloud.Identity.V1.User, oneof: 0

  field :service_account, 2,
    type: Temporal.Api.Cloud.Identity.V1.ServiceAccount,
    json_name: "serviceAccount",
    oneof: 0

  field :principal_api_key, 3,
    type: Temporal.Api.Cloud.Identity.V1.ApiKey,
    json_name: "principalApiKey"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUsersRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUsersRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :email, 3, type: :string
  field :namespace, 4, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUsersResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUsersResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :users, 1, repeated: true, type: Temporal.Api.Cloud.Identity.V1.User
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUserRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUserResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :user, 1, type: Temporal.Api.Cloud.Identity.V1.User
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateUserRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateUserRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 1, type: Temporal.Api.Cloud.Identity.V1.UserSpec
  field :async_operation_id, 2, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateUserResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateUserResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"

  field :async_operation, 2,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateUserRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateUserRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
  field :spec, 2, type: Temporal.Api.Cloud.Identity.V1.UserSpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateUserResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateUserResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteUserRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteUserRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteUserResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteUserResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.SetUserNamespaceAccessRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.SetUserNamespaceAccessRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :user_id, 2, type: :string, json_name: "userId"
  field :access, 3, type: Temporal.Api.Cloud.Identity.V1.NamespaceAccess
  field :resource_version, 4, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.SetUserNamespaceAccessResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.SetUserNamespaceAccessResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAsyncOperationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetAsyncOperationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation_id, 1, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAsyncOperationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetAsyncOperationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceRequest.TagsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateNamespaceRequest.TagsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateNamespaceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 2, type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"

  field :tags, 4,
    repeated: true,
    type: Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceRequest.TagsEntry,
    map: true
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateNamespaceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string

  field :async_operation, 2,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespacesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNamespacesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :name, 3, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespacesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNamespacesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespaces, 1, repeated: true, type: Temporal.Api.Cloud.Namespace.V1.Namespace
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNamespaceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNamespaceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: Temporal.Api.Cloud.Namespace.V1.Namespace
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateNamespaceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :spec, 2, type: Temporal.Api.Cloud.Namespace.V1.NamespaceSpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateNamespaceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.RenameCustomSearchAttributeRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.RenameCustomSearchAttributeRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

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

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.RenameCustomSearchAttributeResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteNamespaceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteNamespaceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.FailoverNamespaceRegionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.FailoverNamespaceRegionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :region, 2, type: :string
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.FailoverNamespaceRegionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.FailoverNamespaceRegionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.AddNamespaceRegionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.AddNamespaceRegionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :region, 2, type: :string
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.AddNamespaceRegionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.AddNamespaceRegionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceRegionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteNamespaceRegionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :region, 2, type: :string
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceRegionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteNamespaceRegionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetRegionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetRegionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetRegionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetRegionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :regions, 1, repeated: true, type: Temporal.Api.Cloud.Region.V1.Region
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetRegionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetRegionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :region, 1, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetRegionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetRegionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :region, 1, type: Temporal.Api.Cloud.Region.V1.Region
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetApiKeysRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetApiKeysRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :owner_id, 3, type: :string, json_name: "ownerId"

  field :owner_type_deprecated, 4,
    type: :string,
    json_name: "ownerTypeDeprecated",
    deprecated: true

  field :owner_type, 5,
    type: Temporal.Api.Cloud.Identity.V1.OwnerType,
    json_name: "ownerType",
    enum: true
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetApiKeysResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetApiKeysResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :api_keys, 1,
    repeated: true,
    type: Temporal.Api.Cloud.Identity.V1.ApiKey,
    json_name: "apiKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetApiKeyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetApiKeyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetApiKeyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetApiKeyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :api_key, 1, type: Temporal.Api.Cloud.Identity.V1.ApiKey, json_name: "apiKey"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateApiKeyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateApiKeyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 1, type: Temporal.Api.Cloud.Identity.V1.ApiKeySpec
  field :async_operation_id, 2, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateApiKeyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateApiKeyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId"
  field :token, 2, type: :string

  field :async_operation, 3,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateApiKeyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateApiKeyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId"
  field :spec, 2, type: Temporal.Api.Cloud.Identity.V1.ApiKeySpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateApiKeyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateApiKeyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteApiKeyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteApiKeyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId"
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteApiKeyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteApiKeyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNexusEndpointsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNexusEndpointsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :target_namespace_id, 3, type: :string, json_name: "targetNamespaceId"
  field :target_task_queue, 4, type: :string, json_name: "targetTaskQueue"
  field :name, 5, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNexusEndpointsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNexusEndpointsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoints, 1, repeated: true, type: Temporal.Api.Cloud.Nexus.V1.Endpoint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNexusEndpointRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNexusEndpointRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNexusEndpointResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNexusEndpointResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint, 1, type: Temporal.Api.Cloud.Nexus.V1.Endpoint
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateNexusEndpointRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateNexusEndpointRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 1, type: Temporal.Api.Cloud.Nexus.V1.EndpointSpec
  field :async_operation_id, 2, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateNexusEndpointResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateNexusEndpointResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"

  field :async_operation, 2,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNexusEndpointRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateNexusEndpointRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :spec, 2, type: Temporal.Api.Cloud.Nexus.V1.EndpointSpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNexusEndpointResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateNexusEndpointResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteNexusEndpointRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteNexusEndpointRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :endpoint_id, 1, type: :string, json_name: "endpointId"
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteNexusEndpointResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteNexusEndpointResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupsRequest.GoogleGroupFilter do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUserGroupsRequest.GoogleGroupFilter",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :email_address, 1, type: :string, json_name: "emailAddress"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupsRequest.SCIMGroupFilter do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUserGroupsRequest.SCIMGroupFilter",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :idp_id, 1, type: :string, json_name: "idpId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUserGroupsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :namespace, 3, type: :string
  field :display_name, 4, type: :string, json_name: "displayName"

  field :google_group, 5,
    type: Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupsRequest.GoogleGroupFilter,
    json_name: "googleGroup"

  field :scim_group, 6,
    type: Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupsRequest.SCIMGroupFilter,
    json_name: "scimGroup"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUserGroupsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :groups, 1, repeated: true, type: Temporal.Api.Cloud.Identity.V1.UserGroup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUserGroupRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :group_id, 1, type: :string, json_name: "groupId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUserGroupResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :group, 1, type: Temporal.Api.Cloud.Identity.V1.UserGroup
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateUserGroupRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateUserGroupRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 1, type: Temporal.Api.Cloud.Identity.V1.UserGroupSpec
  field :async_operation_id, 2, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateUserGroupResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateUserGroupResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :group_id, 1, type: :string, json_name: "groupId"

  field :async_operation, 2,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateUserGroupRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateUserGroupRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :group_id, 1, type: :string, json_name: "groupId"
  field :spec, 2, type: Temporal.Api.Cloud.Identity.V1.UserGroupSpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateUserGroupResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateUserGroupResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteUserGroupRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteUserGroupRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :group_id, 1, type: :string, json_name: "groupId"
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteUserGroupResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteUserGroupResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.SetUserGroupNamespaceAccessRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.SetUserGroupNamespaceAccessRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :group_id, 2, type: :string, json_name: "groupId"
  field :access, 3, type: Temporal.Api.Cloud.Identity.V1.NamespaceAccess
  field :resource_version, 4, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.SetUserGroupNamespaceAccessResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.SetUserGroupNamespaceAccessResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.AddUserGroupMemberRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.AddUserGroupMemberRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :group_id, 1, type: :string, json_name: "groupId"

  field :member_id, 2,
    type: Temporal.Api.Cloud.Identity.V1.UserGroupMemberId,
    json_name: "memberId"

  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.AddUserGroupMemberResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.AddUserGroupMemberResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.RemoveUserGroupMemberRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.RemoveUserGroupMemberRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :group_id, 1, type: :string, json_name: "groupId"

  field :member_id, 2,
    type: Temporal.Api.Cloud.Identity.V1.UserGroupMemberId,
    json_name: "memberId"

  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.RemoveUserGroupMemberResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.RemoveUserGroupMemberResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupMembersRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUserGroupMembersRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :group_id, 3, type: :string, json_name: "groupId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupMembersResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUserGroupMembersResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :members, 1, repeated: true, type: Temporal.Api.Cloud.Identity.V1.UserGroupMember
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateServiceAccountRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateServiceAccountRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 1, type: Temporal.Api.Cloud.Identity.V1.ServiceAccountSpec
  field :async_operation_id, 2, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateServiceAccountResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateServiceAccountResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :service_account_id, 1, type: :string, json_name: "serviceAccountId"

  field :async_operation, 2,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetServiceAccountRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetServiceAccountRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :service_account_id, 1, type: :string, json_name: "serviceAccountId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetServiceAccountResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetServiceAccountResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :service_account, 1,
    type: Temporal.Api.Cloud.Identity.V1.ServiceAccount,
    json_name: "serviceAccount"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetServiceAccountsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetServiceAccountsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetServiceAccountsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetServiceAccountsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :service_account, 1,
    repeated: true,
    type: Temporal.Api.Cloud.Identity.V1.ServiceAccount,
    json_name: "serviceAccount"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateServiceAccountRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateServiceAccountRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :service_account_id, 1, type: :string, json_name: "serviceAccountId"
  field :spec, 2, type: Temporal.Api.Cloud.Identity.V1.ServiceAccountSpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateServiceAccountResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateServiceAccountResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.SetServiceAccountNamespaceAccessRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.SetServiceAccountNamespaceAccessRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :service_account_id, 1, type: :string, json_name: "serviceAccountId"
  field :namespace, 2, type: :string
  field :access, 3, type: Temporal.Api.Cloud.Identity.V1.NamespaceAccess
  field :resource_version, 4, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.SetServiceAccountNamespaceAccessResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.SetServiceAccountNamespaceAccessResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteServiceAccountRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteServiceAccountRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :service_account_id, 1, type: :string, json_name: "serviceAccountId"
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteServiceAccountResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteServiceAccountResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUsageRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUsageRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :start_time_inclusive, 1, type: Google.Protobuf.Timestamp, json_name: "startTimeInclusive"
  field :end_time_exclusive, 2, type: Google.Protobuf.Timestamp, json_name: "endTimeExclusive"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetUsageResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetUsageResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :summaries, 1, repeated: true, type: Temporal.Api.Cloud.Usage.V1.Summary
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAccountRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetAccountRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAccountResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetAccountResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :account, 1, type: Temporal.Api.Cloud.Account.V1.Account
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateAccountRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateAccountRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 1, type: Temporal.Api.Cloud.Account.V1.AccountSpec
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateAccountResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateAccountResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceExportSinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateNamespaceExportSinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :spec, 2, type: Temporal.Api.Cloud.Namespace.V1.ExportSinkSpec
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceExportSinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateNamespaceExportSinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceExportSinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNamespaceExportSinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :name, 2, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceExportSinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNamespaceExportSinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :sink, 1, type: Temporal.Api.Cloud.Namespace.V1.ExportSink
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceExportSinksRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNamespaceExportSinksRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceExportSinksResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNamespaceExportSinksResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :sinks, 1, repeated: true, type: Temporal.Api.Cloud.Namespace.V1.ExportSink
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceExportSinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateNamespaceExportSinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :spec, 2, type: Temporal.Api.Cloud.Namespace.V1.ExportSinkSpec
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceExportSinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateNamespaceExportSinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceExportSinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteNamespaceExportSinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :name, 2, type: :string
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceExportSinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteNamespaceExportSinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.ValidateNamespaceExportSinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.ValidateNamespaceExportSinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :spec, 2, type: Temporal.Api.Cloud.Namespace.V1.ExportSinkSpec
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.ValidateNamespaceExportSinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.ValidateNamespaceExportSinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceTagsRequest.TagsToUpsertEntry do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateNamespaceTagsRequest.TagsToUpsertEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceTagsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateNamespaceTagsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string

  field :tags_to_upsert, 2,
    repeated: true,
    type: Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceTagsRequest.TagsToUpsertEntry,
    json_name: "tagsToUpsert",
    map: true

  field :tags_to_remove, 3, repeated: true, type: :string, json_name: "tagsToRemove"
  field :async_operation_id, 4, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceTagsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateNamespaceTagsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateConnectivityRuleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateConnectivityRuleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 1, type: Temporal.Api.Cloud.Connectivityrule.V1.ConnectivityRuleSpec
  field :async_operation_id, 2, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateConnectivityRuleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateConnectivityRuleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :connectivity_rule_id, 1, type: :string, json_name: "connectivityRuleId"

  field :async_operation, 2,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetConnectivityRuleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetConnectivityRuleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :connectivity_rule_id, 1, type: :string, json_name: "connectivityRuleId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetConnectivityRuleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetConnectivityRuleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :connectivity_rule, 1,
    type: Temporal.Api.Cloud.Connectivityrule.V1.ConnectivityRule,
    json_name: "connectivityRule"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetConnectivityRulesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetConnectivityRulesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :namespace, 3, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetConnectivityRulesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetConnectivityRulesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :connectivity_rules, 1,
    repeated: true,
    type: Temporal.Api.Cloud.Connectivityrule.V1.ConnectivityRule,
    json_name: "connectivityRules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteConnectivityRuleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteConnectivityRuleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :connectivity_rule_id, 1, type: :string, json_name: "connectivityRuleId"
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteConnectivityRuleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteConnectivityRuleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAuditLogsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetAuditLogsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :start_time_inclusive, 3, type: Google.Protobuf.Timestamp, json_name: "startTimeInclusive"
  field :end_time_exclusive, 4, type: Google.Protobuf.Timestamp, json_name: "endTimeExclusive"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAuditLogsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetAuditLogsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :logs, 1, repeated: true, type: Temporal.Api.Cloud.Auditlog.V1.LogRecord
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.ValidateAccountAuditLogSinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.ValidateAccountAuditLogSinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 1, type: Temporal.Api.Cloud.Account.V1.AuditLogSinkSpec
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.ValidateAccountAuditLogSinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.ValidateAccountAuditLogSinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateAccountAuditLogSinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateAccountAuditLogSinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 1, type: Temporal.Api.Cloud.Account.V1.AuditLogSinkSpec
  field :async_operation_id, 2, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CreateAccountAuditLogSinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.CreateAccountAuditLogSinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAccountAuditLogSinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetAccountAuditLogSinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAccountAuditLogSinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetAccountAuditLogSinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :sink, 1, type: Temporal.Api.Cloud.Account.V1.AuditLogSink
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAccountAuditLogSinksRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetAccountAuditLogSinksRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetAccountAuditLogSinksResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetAccountAuditLogSinksResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :sinks, 1, repeated: true, type: Temporal.Api.Cloud.Account.V1.AuditLogSink
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateAccountAuditLogSinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateAccountAuditLogSinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :spec, 1, type: Temporal.Api.Cloud.Account.V1.AuditLogSinkSpec
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.UpdateAccountAuditLogSinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.UpdateAccountAuditLogSinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteAccountAuditLogSinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteAccountAuditLogSinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :async_operation_id, 3, type: :string, json_name: "asyncOperationId"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.DeleteAccountAuditLogSinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.DeleteAccountAuditLogSinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :async_operation, 1,
    type: Temporal.Api.Cloud.Operation.V1.AsyncOperation,
    json_name: "asyncOperation"
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceCapacityInfoRequest do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNamespaceCapacityInfoRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceCapacityInfoResponse do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.cloudservice.v1.GetNamespaceCapacityInfoResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :capacity_info, 1,
    type: Temporal.Api.Cloud.Namespace.V1.NamespaceCapacityInfo,
    json_name: "capacityInfo"
end
