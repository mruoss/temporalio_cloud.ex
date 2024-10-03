defmodule Temporal.Api.Cloud.Region.V1.Region do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :id, 1, type: :string
  field :cloud_provider, 2, type: :string, json_name: "cloudProvider"
  field :cloud_provider_region, 3, type: :string, json_name: "cloudProviderRegion"
  field :location, 4, type: :string
end