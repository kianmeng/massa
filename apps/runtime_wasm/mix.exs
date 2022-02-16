defmodule RuntimeWasm.MixProject do
  use Mix.Project

  def project do
    [
      app: :runtime_wasm,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:runtime, in_umbrella: true},
      {:wasmex, "~> 0.5"},
      {:toml, "~> 0.6", override: true}
    ]
  end
end
