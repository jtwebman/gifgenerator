defmodule GifGenerator.Mixfile do
  use Mix.Project

  def project do
    [
      app: :gif_generator,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env)
    ]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger, :giphy_ex, :httpoison, :maru]]
  end

  defp deps do
    [
      {:giphy_ex, "~> 0.1.0"},
      {:httpoison, "~> 0.11.2"},
      {:maru, "~> 0.11.4"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
