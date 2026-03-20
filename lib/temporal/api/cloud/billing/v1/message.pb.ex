defmodule Temporal.Api.Cloud.Billing.V1.BillingReport.BillingReportState do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.cloud.billing.v1.BillingReport.BillingReportState",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :BILLING_REPORT_STATE_UNSPECIFIED, 0
  field :BILLING_REPORT_STATE_IN_PROGRESS, 1
  field :BILLING_REPORT_STATE_GENERATED, 2
  field :BILLING_REPORT_STATE_FAILED, 3
end

defmodule Temporal.Api.Cloud.Billing.V1.BillingReport.Download.FileFormat do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "temporal.api.cloud.billing.v1.BillingReport.Download.FileFormat",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :FILE_FORMAT_UNSPECIFIED, 0
  field :FILE_FORMAT_CSV, 1
end

defmodule Temporal.Api.Cloud.Billing.V1.BillingReportSpec do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.billing.v1.BillingReportSpec",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :start_time_inclusive, 1, type: Google.Protobuf.Timestamp, json_name: "startTimeInclusive"
  field :end_time_exclusive, 2, type: Google.Protobuf.Timestamp, json_name: "endTimeExclusive"

  field :download_url_expiration_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "downloadUrlExpirationDuration"

  field :description, 4, type: :string
end

defmodule Temporal.Api.Cloud.Billing.V1.BillingReport.Download do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.billing.v1.BillingReport.Download",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :url, 1, type: :string
  field :url_expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "urlExpirationTime"

  field :file_format, 3,
    type: Temporal.Api.Cloud.Billing.V1.BillingReport.Download.FileFormat,
    json_name: "fileFormat",
    enum: true

  field :file_size_bytes, 4, type: :int64, json_name: "fileSizeBytes"
end

defmodule Temporal.Api.Cloud.Billing.V1.BillingReport do
  @moduledoc false

  use Protobuf,
    full_name: "temporal.api.cloud.billing.v1.BillingReport",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string

  field :state, 2,
    type: Temporal.Api.Cloud.Billing.V1.BillingReport.BillingReportState,
    enum: true

  field :spec, 3, type: Temporal.Api.Cloud.Billing.V1.BillingReportSpec

  field :download_info, 4,
    repeated: true,
    type: Temporal.Api.Cloud.Billing.V1.BillingReport.Download,
    json_name: "downloadInfo"

  field :requested_time, 5, type: Google.Protobuf.Timestamp, json_name: "requestedTime"
  field :generated_time, 6, type: Google.Protobuf.Timestamp, json_name: "generatedTime"
  field :async_operation_id, 7, type: :string, json_name: "asyncOperationId"
end
