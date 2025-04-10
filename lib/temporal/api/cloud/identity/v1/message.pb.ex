defmodule Temporal.Api.Cloud.Identity.V1.OwnerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OWNER_TYPE_UNSPECIFIED, 0
  field :OWNER_TYPE_USER, 1
  field :OWNER_TYPE_SERVICE_ACCOUNT, 2
end

defmodule Temporal.Api.Cloud.Identity.V1.AccountAccess.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :ROLE_OWNER, 1
  field :ROLE_ADMIN, 2
  field :ROLE_DEVELOPER, 3
  field :ROLE_FINANCE_ADMIN, 4
  field :ROLE_READ, 5
end

defmodule Temporal.Api.Cloud.Identity.V1.NamespaceAccess.Permission do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PERMISSION_UNSPECIFIED, 0
  field :PERMISSION_ADMIN, 1
  field :PERMISSION_WRITE, 2
  field :PERMISSION_READ, 3
end

defmodule Temporal.Api.Cloud.Identity.V1.AccountAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :role_deprecated, 1, type: :string, json_name: "roleDeprecated", deprecated: true
  field :role, 2, type: Temporal.Api.Cloud.Identity.V1.AccountAccess.Role, enum: true
end

defmodule Temporal.Api.Cloud.Identity.V1.NamespaceAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :permission_deprecated, 1,
    type: :string,
    json_name: "permissionDeprecated",
    deprecated: true

  field :permission, 2,
    type: Temporal.Api.Cloud.Identity.V1.NamespaceAccess.Permission,
    enum: true
end

defmodule Temporal.Api.Cloud.Identity.V1.Access.NamespaceAccessesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Temporal.Api.Cloud.Identity.V1.NamespaceAccess
end

defmodule Temporal.Api.Cloud.Identity.V1.Access do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account_access, 1,
    type: Temporal.Api.Cloud.Identity.V1.AccountAccess,
    json_name: "accountAccess"

  field :namespace_accesses, 2,
    repeated: true,
    type: Temporal.Api.Cloud.Identity.V1.Access.NamespaceAccessesEntry,
    json_name: "namespaceAccesses",
    map: true
end

defmodule Temporal.Api.Cloud.Identity.V1.NamespaceScopedAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :namespace, 1, type: :string
  field :access, 2, type: Temporal.Api.Cloud.Identity.V1.NamespaceAccess
end

defmodule Temporal.Api.Cloud.Identity.V1.UserSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :email, 1, type: :string
  field :access, 2, type: Temporal.Api.Cloud.Identity.V1.Access
end

defmodule Temporal.Api.Cloud.Identity.V1.Invitation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :created_time, 1, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :expired_time, 2, type: Google.Protobuf.Timestamp, json_name: "expiredTime"
end

defmodule Temporal.Api.Cloud.Identity.V1.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :spec, 3, type: Temporal.Api.Cloud.Identity.V1.UserSpec
  field :state_deprecated, 4, type: :string, json_name: "stateDeprecated", deprecated: true
  field :state, 9, type: Temporal.Api.Cloud.Resource.V1.ResourceState, enum: true
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
  field :invitation, 6, type: Temporal.Api.Cloud.Identity.V1.Invitation
  field :created_time, 7, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :last_modified_time, 8, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
end

defmodule Temporal.Api.Cloud.Identity.V1.GoogleGroupSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :email_address, 1, type: :string, json_name: "emailAddress"
end

defmodule Temporal.Api.Cloud.Identity.V1.SCIMGroupSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :idp_id, 1, type: :string, json_name: "idpId"
end

defmodule Temporal.Api.Cloud.Identity.V1.CloudGroupSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Temporal.Api.Cloud.Identity.V1.UserGroupSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :group_type, 0

  field :display_name, 1, type: :string, json_name: "displayName"
  field :access, 2, type: Temporal.Api.Cloud.Identity.V1.Access

  field :google_group, 3,
    type: Temporal.Api.Cloud.Identity.V1.GoogleGroupSpec,
    json_name: "googleGroup",
    oneof: 0

  field :scim_group, 4,
    type: Temporal.Api.Cloud.Identity.V1.SCIMGroupSpec,
    json_name: "scimGroup",
    oneof: 0

  field :cloud_group, 5,
    type: Temporal.Api.Cloud.Identity.V1.CloudGroupSpec,
    json_name: "cloudGroup",
    oneof: 0
end

defmodule Temporal.Api.Cloud.Identity.V1.UserGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :spec, 3, type: Temporal.Api.Cloud.Identity.V1.UserGroupSpec
  field :state_deprecated, 4, type: :string, json_name: "stateDeprecated", deprecated: true
  field :state, 8, type: Temporal.Api.Cloud.Resource.V1.ResourceState, enum: true
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
  field :created_time, 6, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :last_modified_time, 7, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
end

defmodule Temporal.Api.Cloud.Identity.V1.UserGroupMemberId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :member_type, 0

  field :user_id, 1, type: :string, json_name: "userId", oneof: 0
end

defmodule Temporal.Api.Cloud.Identity.V1.UserGroupMember do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :member_id, 1,
    type: Temporal.Api.Cloud.Identity.V1.UserGroupMemberId,
    json_name: "memberId"

  field :created_time, 2, type: Google.Protobuf.Timestamp, json_name: "createdTime"
end

defmodule Temporal.Api.Cloud.Identity.V1.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :spec, 3, type: Temporal.Api.Cloud.Identity.V1.ServiceAccountSpec
  field :state_deprecated, 4, type: :string, json_name: "stateDeprecated", deprecated: true
  field :state, 8, type: Temporal.Api.Cloud.Resource.V1.ResourceState, enum: true
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
  field :created_time, 6, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :last_modified_time, 7, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
end

defmodule Temporal.Api.Cloud.Identity.V1.ServiceAccountSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :access, 2, type: Temporal.Api.Cloud.Identity.V1.Access

  field :namespace_scoped_access, 4,
    type: Temporal.Api.Cloud.Identity.V1.NamespaceScopedAccess,
    json_name: "namespaceScopedAccess"

  field :description, 3, type: :string
end

defmodule Temporal.Api.Cloud.Identity.V1.ApiKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :string
  field :resource_version, 2, type: :string, json_name: "resourceVersion"
  field :spec, 3, type: Temporal.Api.Cloud.Identity.V1.ApiKeySpec
  field :state_deprecated, 4, type: :string, json_name: "stateDeprecated", deprecated: true
  field :state, 8, type: Temporal.Api.Cloud.Resource.V1.ResourceState, enum: true
  field :async_operation_id, 5, type: :string, json_name: "asyncOperationId"
  field :created_time, 6, type: Google.Protobuf.Timestamp, json_name: "createdTime"
  field :last_modified_time, 7, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
end

defmodule Temporal.Api.Cloud.Identity.V1.ApiKeySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :owner_id, 1, type: :string, json_name: "ownerId"

  field :owner_type_deprecated, 2,
    type: :string,
    json_name: "ownerTypeDeprecated",
    deprecated: true

  field :owner_type, 7,
    type: Temporal.Api.Cloud.Identity.V1.OwnerType,
    json_name: "ownerType",
    enum: true

  field :display_name, 3, type: :string, json_name: "displayName"
  field :description, 4, type: :string
  field :expiry_time, 5, type: Google.Protobuf.Timestamp, json_name: "expiryTime"
  field :disabled, 6, type: :bool
end
