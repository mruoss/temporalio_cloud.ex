defmodule Temporal.Api.Cloud.Sink.V1.S3Spec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :role_name, 1, type: :string, json_name: "roleName"
  field :bucket_name, 2, type: :string, json_name: "bucketName"
  field :region, 3, type: :string
  field :kms_arn, 4, type: :string, json_name: "kmsArn"
  field :aws_account_id, 5, type: :string, json_name: "awsAccountId"
end

defmodule Temporal.Api.Cloud.Sink.V1.GCSSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sa_id, 1, type: :string, json_name: "saId"
  field :bucket_name, 2, type: :string, json_name: "bucketName"
  field :gcp_project_id, 3, type: :string, json_name: "gcpProjectId"
  field :region, 4, type: :string
end

defmodule Temporal.Api.Cloud.Sink.V1.KinesisSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :role_name, 1, type: :string, json_name: "roleName"
  field :destination_uri, 2, type: :string, json_name: "destinationUri"
  field :region, 3, type: :string
end

defmodule Temporal.Api.Cloud.Sink.V1.PubSubSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_account_id, 1, type: :string, json_name: "serviceAccountId"
  field :topic_name, 2, type: :string, json_name: "topicName"
  field :gcp_project_id, 3, type: :string, json_name: "gcpProjectId"
end
