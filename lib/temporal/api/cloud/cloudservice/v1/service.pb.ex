defmodule Temporal.Api.Cloud.Cloudservice.V1.CloudService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "temporal.api.cloud.cloudservice.v1.CloudService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetUsers,
      Temporal.Api.Cloud.Cloudservice.V1.GetUsersRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetUsersResponse

  rpc :GetUser,
      Temporal.Api.Cloud.Cloudservice.V1.GetUserRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetUserResponse

  rpc :CreateUser,
      Temporal.Api.Cloud.Cloudservice.V1.CreateUserRequest,
      Temporal.Api.Cloud.Cloudservice.V1.CreateUserResponse

  rpc :UpdateUser,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateUserRequest,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateUserResponse

  rpc :DeleteUser,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteUserRequest,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteUserResponse

  rpc :SetUserNamespaceAccess,
      Temporal.Api.Cloud.Cloudservice.V1.SetUserNamespaceAccessRequest,
      Temporal.Api.Cloud.Cloudservice.V1.SetUserNamespaceAccessResponse

  rpc :GetAsyncOperation,
      Temporal.Api.Cloud.Cloudservice.V1.GetAsyncOperationRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetAsyncOperationResponse

  rpc :CreateNamespace,
      Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceRequest,
      Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceResponse

  rpc :GetNamespaces,
      Temporal.Api.Cloud.Cloudservice.V1.GetNamespacesRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetNamespacesResponse

  rpc :GetNamespace,
      Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceResponse

  rpc :UpdateNamespace,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceRequest,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceResponse

  rpc :RenameCustomSearchAttribute,
      Temporal.Api.Cloud.Cloudservice.V1.RenameCustomSearchAttributeRequest,
      Temporal.Api.Cloud.Cloudservice.V1.RenameCustomSearchAttributeResponse

  rpc :DeleteNamespace,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceRequest,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceResponse

  rpc :GetRegions,
      Temporal.Api.Cloud.Cloudservice.V1.GetRegionsRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetRegionsResponse

  rpc :GetRegion,
      Temporal.Api.Cloud.Cloudservice.V1.GetRegionRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetRegionResponse
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CloudService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Temporal.Api.Cloud.Cloudservice.V1.CloudService.Service
end