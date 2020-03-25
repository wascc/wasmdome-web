defmodule Wasmdome.MixProject do
  use Mix.Project

  def project do
    [
      app: :wasmdome,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:rustler, :phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      rustler_crates: [wasmdome_wascap: []],
      deps: deps()      
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {Wasmdome.Application, []},
      extra_applications: [:ueberauth, :ueberauth_auth0, :logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.4.16"},
      {:phoenix_pubsub, "~> 1.1"},
      {:phoenix_html, "~> 2.14"},
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:phoenix_live_view, "~> 0.10.0"},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.0"},
      {:gnat, "~> 1.0.0"},
      {:ueberauth, "~> 0.6"},
      {:ueberauth_auth0, "~> 0.4"},
      {:poison, "~> 4.0"},
      {:phoenix_ecto, "~> 4.1"},
      {:ecto_sql, "~> 3.3"},
      {:postgrex, "~> 0.15.3"},
      {:rustler, "~> 0.22.0-rc.0"}
    ]
  end
end
