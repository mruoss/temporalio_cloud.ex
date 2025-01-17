defmodule Temporal.Api.Cloud.Resource.V1.ResourceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESOURCE_STATE_UNSPECIFIED, 0
  field :RESOURCE_STATE_ACTIVATING, 1
  field :RESOURCE_STATE_ACTIVATION_FAILED, 2
  field :RESOURCE_STATE_ACTIVE, 3
  field :RESOURCE_STATE_UPDATING, 4
  field :RESOURCE_STATE_UPDATE_FAILED, 5
  field :RESOURCE_STATE_DELETING, 6
  field :RESOURCE_STATE_DELETE_FAILED, 7
  field :RESOURCE_STATE_DELETED, 8
  field :RESOURCE_STATE_SUSPENDED, 9
  field :RESOURCE_STATE_EXPIRED, 10
end
