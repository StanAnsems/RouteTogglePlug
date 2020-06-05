defmodule RouteTogglePlug.MixProject do
  use Mix.Project

  def project do
    [
      app: :route_toggle_plug,
      version: "0.1",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "RouteTogglePlug",
      source_url: "https://github.com/StanAnsems/RouteTogglePlug"
    ]
  end

  def application, do: []

  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Small plug to toggle routes based on their patch by a environment variable or app config"
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README.md"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/StanAnsems/RouteTogglePlug"}
    ]
  end
end
