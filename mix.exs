defmodule Pokecards.MixProject do
  use Mix.Project

  def project do
    [
      app: :pokecards,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "Pokecards",
      source_url: "https://github.com/LauraBeatris/pokecards",
      docs: [
        main: "Pokecards",
        logo: ".github/logo.png",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      # Docs
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
    ]
  end
end
