defmodule TemporalioCloud.MixProject do
  use Mix.Project

  @source_url "https://github.com/mruoss/temporalio_cloud.ex"
  @version "0.8.2"

  def project do
    [
      app: :temporalio_cloud,
      description:
        "Elixir files generated from Temporal.io's cloud-api protobuf files using protobuf-elixir.",
      version: @version,
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:protobuf, "~> 0.14.0"},
      {:grpc, "~> 0.9.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      name: :temporalio_cloud,
      maintainers: ["Michael Ruoss"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => @source_url,
        "Sponsor" => "https://github.com/sponsors/mruoss"
      },
      files: ["lib", "mix.exs", "README*", "LICENSE*"]
    ]
  end
end
