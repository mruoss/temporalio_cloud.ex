defmodule Temporal.Api.Cloud.Cloudservice.V1.CloudService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "temporal.api.cloud.cloudservice.v1.CloudService",
    protoc_gen_elixir_version: "0.14.1"

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

  rpc :FailoverNamespaceRegion,
      Temporal.Api.Cloud.Cloudservice.V1.FailoverNamespaceRegionRequest,
      Temporal.Api.Cloud.Cloudservice.V1.FailoverNamespaceRegionResponse

  rpc :AddNamespaceRegion,
      Temporal.Api.Cloud.Cloudservice.V1.AddNamespaceRegionRequest,
      Temporal.Api.Cloud.Cloudservice.V1.AddNamespaceRegionResponse

  rpc :DeleteNamespaceRegion,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceRegionRequest,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceRegionResponse

  rpc :GetRegions,
      Temporal.Api.Cloud.Cloudservice.V1.GetRegionsRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetRegionsResponse

  rpc :GetRegion,
      Temporal.Api.Cloud.Cloudservice.V1.GetRegionRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetRegionResponse

  rpc :GetApiKeys,
      Temporal.Api.Cloud.Cloudservice.V1.GetApiKeysRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetApiKeysResponse

  rpc :GetApiKey,
      Temporal.Api.Cloud.Cloudservice.V1.GetApiKeyRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetApiKeyResponse

  rpc :CreateApiKey,
      Temporal.Api.Cloud.Cloudservice.V1.CreateApiKeyRequest,
      Temporal.Api.Cloud.Cloudservice.V1.CreateApiKeyResponse

  rpc :UpdateApiKey,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateApiKeyRequest,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateApiKeyResponse

  rpc :DeleteApiKey,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteApiKeyRequest,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteApiKeyResponse

  rpc :GetNexusEndpoints,
      Temporal.Api.Cloud.Cloudservice.V1.GetNexusEndpointsRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetNexusEndpointsResponse

  rpc :GetNexusEndpoint,
      Temporal.Api.Cloud.Cloudservice.V1.GetNexusEndpointRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetNexusEndpointResponse

  rpc :CreateNexusEndpoint,
      Temporal.Api.Cloud.Cloudservice.V1.CreateNexusEndpointRequest,
      Temporal.Api.Cloud.Cloudservice.V1.CreateNexusEndpointResponse

  rpc :UpdateNexusEndpoint,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateNexusEndpointRequest,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateNexusEndpointResponse

  rpc :DeleteNexusEndpoint,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteNexusEndpointRequest,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteNexusEndpointResponse

  rpc :GetUserGroups,
      Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupsRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupsResponse

  rpc :GetUserGroup,
      Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupResponse

  rpc :CreateUserGroup,
      Temporal.Api.Cloud.Cloudservice.V1.CreateUserGroupRequest,
      Temporal.Api.Cloud.Cloudservice.V1.CreateUserGroupResponse

  rpc :UpdateUserGroup,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateUserGroupRequest,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateUserGroupResponse

  rpc :DeleteUserGroup,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteUserGroupRequest,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteUserGroupResponse

  rpc :SetUserGroupNamespaceAccess,
      Temporal.Api.Cloud.Cloudservice.V1.SetUserGroupNamespaceAccessRequest,
      Temporal.Api.Cloud.Cloudservice.V1.SetUserGroupNamespaceAccessResponse

  rpc :AddUserGroupMember,
      Temporal.Api.Cloud.Cloudservice.V1.AddUserGroupMemberRequest,
      Temporal.Api.Cloud.Cloudservice.V1.AddUserGroupMemberResponse

  rpc :RemoveUserGroupMember,
      Temporal.Api.Cloud.Cloudservice.V1.RemoveUserGroupMemberRequest,
      Temporal.Api.Cloud.Cloudservice.V1.RemoveUserGroupMemberResponse

  rpc :GetUserGroupMembers,
      Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupMembersRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetUserGroupMembersResponse

  rpc :CreateServiceAccount,
      Temporal.Api.Cloud.Cloudservice.V1.CreateServiceAccountRequest,
      Temporal.Api.Cloud.Cloudservice.V1.CreateServiceAccountResponse

  rpc :GetServiceAccount,
      Temporal.Api.Cloud.Cloudservice.V1.GetServiceAccountRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetServiceAccountResponse

  rpc :GetServiceAccounts,
      Temporal.Api.Cloud.Cloudservice.V1.GetServiceAccountsRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetServiceAccountsResponse

  rpc :UpdateServiceAccount,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateServiceAccountRequest,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateServiceAccountResponse

  rpc :DeleteServiceAccount,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteServiceAccountRequest,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteServiceAccountResponse

  rpc :GetUsage,
      Temporal.Api.Cloud.Cloudservice.V1.GetUsageRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetUsageResponse

  rpc :GetAccount,
      Temporal.Api.Cloud.Cloudservice.V1.GetAccountRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetAccountResponse

  rpc :UpdateAccount,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateAccountRequest,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateAccountResponse

  rpc :CreateNamespaceExportSink,
      Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceExportSinkRequest,
      Temporal.Api.Cloud.Cloudservice.V1.CreateNamespaceExportSinkResponse

  rpc :GetNamespaceExportSink,
      Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceExportSinkRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceExportSinkResponse

  rpc :GetNamespaceExportSinks,
      Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceExportSinksRequest,
      Temporal.Api.Cloud.Cloudservice.V1.GetNamespaceExportSinksResponse

  rpc :UpdateNamespaceExportSink,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceExportSinkRequest,
      Temporal.Api.Cloud.Cloudservice.V1.UpdateNamespaceExportSinkResponse

  rpc :DeleteNamespaceExportSink,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceExportSinkRequest,
      Temporal.Api.Cloud.Cloudservice.V1.DeleteNamespaceExportSinkResponse

  rpc :ValidateNamespaceExportSink,
      Temporal.Api.Cloud.Cloudservice.V1.ValidateNamespaceExportSinkRequest,
      Temporal.Api.Cloud.Cloudservice.V1.ValidateNamespaceExportSinkResponse
end

defmodule Temporal.Api.Cloud.Cloudservice.V1.CloudService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Temporal.Api.Cloud.Cloudservice.V1.CloudService.Service
end
