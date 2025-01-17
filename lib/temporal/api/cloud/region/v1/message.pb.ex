defmodule Temporal.Api.Cloud.Region.V1.Region.CloudProvider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CLOUD_PROVIDER_UNSPECIFIED, 0
  field :CLOUD_PROVIDER_AWS, 1
  field :CLOUD_PROVIDER_GCP, 2
end

defmodule Temporal.Api.Cloud.Region.V1.Region do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string

  field :cloud_provider_deprecated, 2,
    type: :string,
    json_name: "cloudProviderDeprecated",
    deprecated: true

  field :cloud_provider, 5,
    type: Temporal.Api.Cloud.Region.V1.Region.CloudProvider,
    json_name: "cloudProvider",
    enum: true

  field :cloud_provider_region, 3, type: :string, json_name: "cloudProviderRegion"
  field :location, 4, type: :string
end
